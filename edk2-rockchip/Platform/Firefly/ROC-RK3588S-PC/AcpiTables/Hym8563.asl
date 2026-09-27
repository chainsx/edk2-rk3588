/** @file
 *
 *  Firefly ROC-RK3588S-PC HYM8563 I2C real-time clock.
 *
 *  SPDX-License-Identifier: BSD-2-Clause-Patent
 *
 **/
#include "AcpiTables.h"

Device (RTC0) {
  Name (_HID, "PRP0001")
  Name (_UID, 0)
  Name (_CCA, 0)

  Name (_DSD, Package () {
    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
    Package () {
      Package (2) { "compatible", "haoyu,hym8563" },
      Package (2) { "clock-output-names", Package () { "hym8563" } },
      Package (2) { "wakeup-source", One },
    }
  })

  Method (_CRS, 0x0, Serialized) {
    Name (RBUF, ResourceTemplate () {
      I2cSerialBusV2 (BOARD_RTC_I2C_ADDR, ControllerInitiated, 0x000186A0,
        AddressingMode7Bit, BOARD_RTC_I2C,
        0x00, ResourceConsumer, , Exclusive)
      GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
        BOARD_RTC_GPIO, 0x00, ResourceConsumer)
        {
          BOARD_RTC_GPIO_PIN
        }
    })
    Return (RBUF)
  }
}
