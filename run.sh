#!/bin/bash

chmod -R 775 ~/watchdog/

sudo rm -f -R /lib/modules/4.8.17-ethos49/kernel/drivers/usb/serial/ch341.ko

sudo make

sudo make load

sudo cp ch34x.ko /lib/modules/4.8.17-ethos49/kernel/drivers/usb/serial/ch34x.ko

dmesg | grep ch34x

ls /dev | grep ttyUSB0
