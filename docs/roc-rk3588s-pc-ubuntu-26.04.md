# Firefly ROC-RK3588S-PC：Ubuntu 26.04 generic 支持基线

本文把 Firefly 的 BSP 设备树与 Ubuntu 26.04 arm64 generic 内核的正式配置、模块清单及 Linux 主线设备树对照，用来限定本仓库的 ROC-RK3588S-PC 固件支持范围。基线包为 `linux-image-7.0.0-34-generic` / `linux-buildinfo-7.0.0-34-generic`，版本 `7.0.0-34.34`；内核更新后应重新核对配置和 DT 绑定。

对照来源：[Firefly/Armbian rk-6.1-rkr5 BSP DTS](https://github.com/armbian/linux-rockchip/blob/rk-6.1-rkr5/arch/arm64/boot/dts/rockchip/rk3588s-roc-pc.dts)、[Linux v7.0 ROC 主线 DTS](https://github.com/torvalds/linux/blob/v7.0/arch/arm64/boot/dts/rockchip/rk3588s-roc-pc.dts)、[Ubuntu 26.04 generic arm64 包](https://packages.ubuntu.com/resolute/arm64/linux-generic)。配置符号来自 Ubuntu `linux-buildinfo`，模块名来自同版本 `linux-modules` 清单；“内核含驱动”不等于某块外围设备已经在 ROC 的板级 DT 中接好。

本次验证覆盖内核配置/模块清单核对、EDK2 整镜构建、DTB 编译与 DSDT 编译/反汇编。实机反馈确认，修正 PCIe domain 3/4 配置后，domain 4 上的 NVMe 不再出现此前的 Linux D3cold 探测失败；其他外围设备尚未逐项完成实机验证。

## Ubuntu generic 内核具备的驱动

| 功能 | Ubuntu 配置 / 模块 | ROC 板级状态 |
| --- | --- | --- |
| RK3588 温度传感器及 thermal core | `CONFIG_THERMAL=y`、`CONFIG_THERMAL_OF=y`、`CONFIG_ROCKCHIP_THERMAL=m`；模块 `rockchip_thermal` | 主线 DT 有 RK3588 `tsadc` 和 `package_thermal`；固件补齐 fan trips 与 cooling maps。 |
| PWM 风扇自动调速 | `CONFIG_PWM=y`、`CONFIG_PWM_ROCKCHIP=m`、`CONFIG_SENSORS_PWM_FAN=m`、`CONFIG_THERMAL_GOV_STEP_WISE=y`、`CONFIG_THERMAL_DEFAULT_GOV_STEP_WISE=y`；模块 `pwm-rockchip`、`pwm-fan` | BSP 的七档 PWM 值及 55–80°C 温度点已移植到主线 DTS。DT 模式下 Linux 接管调速；`pwm-fan` 驱动探测时先设置最高档。 |
| HDMI / VOP2 / DisplayPort | `CONFIG_DRM_ROCKCHIP=m`、`CONFIG_ROCKCHIP_VOP2=y`、`CONFIG_ROCKCHIP_DW_HDMI_QP=y`、`CONFIG_ROCKCHIP_CDN_DP=y`；RK3588 HDMI/DP PHY 模块可用 | 上游板级 DTS 启用 HDMI；固件补齐 VP2→DP0 显示管线，以及 USB-C DP Alt Mode 图。 |
| USB-C / PD / DP Alt Mode | `CONFIG_TYPEC=m`、`CONFIG_TYPEC_FUSB302=m`、`CONFIG_TYPEC_DP_ALTMODE=m`、`CONFIG_USB_ROLE_SWITCH=y`、`CONFIG_PHY_ROCKCHIP_USBDP=m`；模块 `fusb302`、`typec`、`typec_displayport`、`phy-rockchip-usbdp` | 补齐 FUSB302、USB role-switch、方向切换、SBU GPIO 和 DP Alt Mode 端点。实际 PD 电源能力仍受板上 5V 供电电路限制。 |
| GMAC 以太网 | `CONFIG_STMMAC_ETH=m`、`CONFIG_DWMAC_ROCKCHIP=m`；模块 `stmmac`、`dwmac-rk` | 主线 DTS 已配置 RGMII PHY、时序和复位 GPIO。 |
| PCIe / NVMe | `CONFIG_PCIE_ROCKCHIP_DW_HOST=y`、`CONFIG_NVME_CORE=m`、`CONFIG_BLK_DEV_NVME=m`；模块 `nvme-core`、`nvme` | UEFI 已构建 `NvmExpressDxe`；ROC M.2 NVMe 位于 PCIe domain 4（`pcie2x1l2`），使用 PCIe 2.0 x1 和 Combo PHY0。Mainline fixup 禁用上游误启用的 domain 3（`pcie2x1l1`），并为 M.2 根端口补齐 BSP 的复位 GPIO、3.3 V 电源供给且保持该电源常开；Combo PHY2 固定为 USB3，避免旧设置启用空的 domain 3。实机反馈确认该修复后 NVMe D3cold 探测错误消失。 |
| eMMC / SD | `CONFIG_MMC_DW_ROCKCHIP=m`、`CONFIG_MMC_SDHCI_OF_DWCMSHC=m` | 主线 DTS 配置 eMMC 与 SD 控制器。 |
| ES8388 音频 | `CONFIG_SND_SOC_ES8328=m` 及 I²C codec 模块 | 主线 DTS 的 ES8388 兼容串及 simple-audio-card 描述走通用 ASoC 驱动。 |
| HYM8563 RTC | `CONFIG_RTC_DRV_HYM8563=m`；模块 `rtc-hym8563` | 主线 DT 提供 I²C2 / 0x51 / GPIO PB0；ACPI DSDT 也加入了对应 I²C 与 GPIO 资源。 |
| SARADC / 恢复键 | `CONFIG_ROCKCHIP_SARADC=m`、`CONFIG_KEYBOARD_ADC=m` | 主线 DTS 补上 ADC F12 recovery key 描述。 |
| GPU | `CONFIG_DRM_PANFROST=m`；模块 `panfrost` | 上游 ROC DTS 已启用 GPU 和供电域；图形栈仍需发行版提供相应 Mesa 用户空间。 |
| RK3588 NPU | `CONFIG_DRM_ACCEL=y`、`CONFIG_DRM_ACCEL_ROCKET=m`、`CONFIG_ROCKCHIP_IOMMU=y`；模块 `rocket` | Mainline fixup 启用 3 个 `rockchip,rk3588-rknn-core` 及对应 IOMMU 节点，并将 `npu-supply` / `sram-supply` 接到板级 `vdd_npu_s0`。Ubuntu 内核驱动只提供设备电源、IOMMU 映射和任务提交；推理运行时还需要 Mesa Rocket 用户空间。 |
| RKVDEC 视频解码、RGA2 | `CONFIG_VIDEO_ROCKCHIP_VDEC=m`、`CONFIG_VIDEO_ROCKCHIP_RGA=m`；模块 `rockchip-vdec`、`rockchip-rga` | v7.0 SoC DTS 含 `rk3588-vdec` 和 `rk3588-rga` 节点，驱动匹配 RK3588 VDEC 与 RGA2。具体格式/应用支持由内核媒体 API 和用户空间决定。 |

Ubuntu generic 还编译了 Rockchip ISP/CIF 驱动，但 ROC 板级 DTS 没有相机传感器或已连接的 CSI 摄像头，不能据此承诺板载相机功能。RK3588 RGA3 和独立 AV1 解码块不作为 Ubuntu 7.0 generic 支持项：该内核没有对应的 RGA3 驱动配置；`rockchip-vdec` 的 v7.0 OF 匹配表也不匹配 RK3588 的独立 AV1 节点。BSP 专有视频引擎及其 BSP-only 节点不移植。

`modprobe rocket` 成功时通常不会向终端或 `dmesg` 打印成功消息；它只注册驱动。若没有启用的 `rockchip,rk3588-rknn-core` 设备，驱动也没有要绑定的设备，所以单看命令无输出不能判断模块是否正常。启用本固件 Mainline DT 后，可用 `lsmod | grep '^rocket'`、`find /sys/bus/platform/drivers/rocket -maxdepth 1 -type l` 和 `ls -l /dev/accel/` 检查模块、三个核心绑定和 DRM 加速设备。Ubuntu 的内核模块仍不等于完整推理软件栈，Rocket/Mesa 用户空间需要另行安装并确认与应用模型格式兼容。

## 风扇温控链路

自动调速需要以下各环节同时成立：

1. `tsadc` 温度传感器节点进入 RK3588 thermal zone。
2. `pwm11`、`pwm-rockchip` 与 `pwm-fan` 节点能够绑定。
3. thermal governor 有 active trips 和连接到 fan cooling device 的 cooling maps。

上游 ROC DTS 已提供 `tsadc`、`package_thermal`、pwm11 和 `pwm-fan`，但原文件没有风扇 trips/maps。BSP 的 `soc-thermal` 和上游的 `package_thermal` 都读取 TSADC channel 0，因此固件的 Mainline DT fixup 在该温度传感器对应的 zone 添加 `sustainable-power = <5000>`、55/60/65/70/75/80°C 六个 active trip 和 5/5/5/5/5/1°C 滞回。六个 cooling map 的 state 范围及 contribution 逐项沿用 BSP；fan 节点也保留 BSP 七档 PWM 值 `<60 100 140 160 185 220 255>`。只有轮询间隔做了适配：BSP 的 `<polling-delay = 1000>`、`<polling-delay-passive = 2000>` 会被 Ubuntu 7.0 thermal core 以 `-EINVAL` 拒绝，因为 passive 间隔不能大于普通间隔；此处改为两者均为 1000 ms，不改变温度阈值或转速档位。

Ubuntu v7.0 的 `pwm-fan` 在 probe 时先设最高档。若 thermal zone 注册失败，驱动就无法按温度曲线降低 cooling state，风扇会持续高转速；zone 注册成功后，thermal governor 才能依温度和上述 cooling maps 控制风扇。

Ubuntu kernel config 中这些驱动为模块（thermal governor/core 及 PWM framework 为内建），因此必须确保系统实际加载模块并使用这份 DTB。启动参数若强制使用其他 DTB、禁用模块，或改为 ACPI，自动风扇链路就不成立。ACPI 模式仍按固件设置固定风扇速度，不使用本 DT 曲线。

实机 `sensors` 曾显示 `pwm1: 30% MANUAL CONTROL`，但用户已确认温度变化时风扇目前工作正常；该 hwmon 标签本身不能推翻实际调速结果，也不因此改变已验证的 DTS 曲线。

## Type-C 电源读数与 DisplayPort AUX

`tcpm_source_psy_*` 是 TCPM 根据 USB Type-C / PD 状态公开的 power-supply 接口，不是板上的电压、电流 ADC。Linux v7.0 将 `voltage_now` 和 `current_now` 映射到 TCPM 保存的电源电压与电流限制，未建立供电合同或未进入 online 状态时显示 0 可以是正常状态；FUSB302 也不提供实际 VBUS 电流测量。只有接入电源/受电设备并建立对应角色/合同后，`online`、`voltage_now`、`current_now` 仍全部为 0，才应继续排查端口 IRQ、角色、PDO 和 VBUS 开关。固件不能通过虚构一个传感器读数来修正它。

```sh
for p in /sys/class/power_supply/tcpm-source-psy-*; do
  echo "$p"
  for a in online usb_type voltage_now current_now current_max; do
    [ -r "$p/$a" ] && printf '%s=' "$a" && cat "$p/$a"
  done
done
```

`dw-dp ... timeout waiting for AUX reply` 表示 DP AUX 请求没有收到接收端回应。当前 Mainline DT 已连通 VOP VP2→DP0、FUSB302 connector、USB role switch、USBDP PHY orientation/mux，并沿用板级 SBU GPIO；这与上游 RK3588 Type-C/DP 设备树拓扑一致。无显示器、未进入 DP Alt Mode、线材/转接器不支持 DP Alt Mode，或 HPD/PHY 路径异常都可能造成此日志，现有日志不能区分这些情况。必须在显示器连接时结合 `/sys/class/drm/*/status`、`/sys/class/typec/` 和 `dmesg` 判断；不能仅为消除超时日志而关闭 AUX 重试或伪造 HPD。

```sh
for p in /sys/class/drm/*/status; do echo "$p: $(cat "$p")"; done
find /sys/class/typec -maxdepth 3 -type f \( -name data_role -o -name power_role -o -name port_type -o -name svid \) -print
dmesg | grep -Ei 'fusb302|tcpm|typec|altmode|usbdp|dw-dp|AUX|HPD'
```

## 内存显示值

`Memory: 5292324K/8123648K available` 中，Linux v7.0 的第一个值是该时刻的空闲页数，第二个值是内核统计的物理页总数；这行本身不等同于用户态 `MemTotal`。示例中约 7.75 GiB 的物理页范围已交给内核识别，启动时约 5.05 GiB 空闲；同一行的 `reserved` 还把物理页中未计入 `totalram_pages` 的范围合并显示，需再结合 EFI memory map、`/proc/iomem` 和 `/proc/meminfo` 才能分清启动期保留、固件/安全区及其他保留项。固件平台代码按 SDRAM 探测值暴露内存，保留 OP-TEE 16 MiB、低地址 MMIO 窗口和少量 SoC 特殊坏区，没有固定切掉 1 GiB 的配置。因此，用户报告的 6.95 GiB 与所贴 dmesg 数字并非同一个统计量；在拿到同一次启动的 `MemTotal`、`MemAvailable` 和 `/proc/iomem` 前，不应擅自扩大 EDK2 可用内存范围。

```sh
grep -E 'MemTotal|MemAvailable|CmaTotal|HugePages' /proc/meminfo
free -h
cat /proc/iomem
dmesg | grep -Ei 'Memory:|reserved|crashkernel|cma|efi'
```

## DT / ACPI 模式和 Windows

- ROC 固件默认暴露 `Device Tree` + `Mainline`，以匹配 Ubuntu 26.04 generic。ROC 构建不再打包 BSP Vendor DTB，也不承诺 Firefly/Armbian BSP 内核兼容性。
- ROC 是 AArch64 平台，固件关闭 x64 UEFI 镜像仿真；NVMe 上的 Ubuntu/Windows 启动项必须指向原生 AA64 EFI 加载器。Ubuntu ARM64 通常使用 `shimaa64.efi` / `grubaa64.efi`，不能使用 `shimx64.efi` / `grubx64.efi`。
- M.2 NVMe 使用 Combo PHY0（PCIe 2.0 x1 / PCIe domain 4 `pcie2x1l2`），Combo PHY0 默认设为 PCIe。BSP DTS 只启用 `pcie2x1l2`，而 Ubuntu 上游 ROC DTS 还会启用空的 `pcie2x1l1`（domain 3 / Combo PHY2），并给它配置相同的 PERST GPIO 和 3.3 V rail。Mainline fixup 会禁用 `pcie2x1l1`、将 M.2 reset 与供电绑定到 `pcie2x1l2`；固件也把 Combo PHY2 固定为 USB3，因此旧 NVRAM 的 PCIe 选择不会重新启用 domain 3。
- Windows 使用设置菜单中的 `ACPI` 表模式。ACPI DSDT 保留现有 CPU、PCIe、存储、GMAC、I²C、UART、USB 和音频资源，并公开 HYM8563 RTC。
- ACPI 模式没有可让 Ubuntu generic `rockchip_thermal` / `pwm-rockchip` / `pwm-fan` 驱动接管的 OF 设备树节点，因此不能提供 Linux 自动风扇曲线。固件默认 PWM 为 100%，ACPI 下保持固定满速以保守散热；新建设置变量时生效。已有 UEFI NVRAM 中的用户风扇设定会保留，可在设置界面调整。
- FUSB302 与 USB-C/DP 的完整 Linux 描述放在 Mainline DT。Windows 的 ACPI 路径依赖 Windows ARM64 平台驱动，本文不把 Linux OF 驱动支持推断为 Windows 驱动支持。
- NPU 通过 Linux Mainline DT 模式交给 `rocket`。当前 Windows ACPI 表不描述 NPU 专用驱动接口，因此不宣称 Windows NPU 支持。
