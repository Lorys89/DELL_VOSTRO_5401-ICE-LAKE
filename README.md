# Dell Optiplex 3060 MFF Hackintosh

EFI for Dell Optiplex 3060 MFF with OpenCore bootloader

![descrizione](./Screenshot/pc.jpg)

### Computer Spec:

| Component        | Brank                              |
| ---------------- | ---------------------------------- |
| CPU              | Intel i3 8100T                     |
| iGPU             | Intel® UHD Graphics 630            |
| Lan              | Realtek 8168                       |
| Audio            | Realtek ALC255                     |
| Ram              | 16 Gb DDR4 2400 Mhz                |
| Wifi + Bluetooth | BCM943602BAED                      |
| NVMe             | TOSHIBA KBG4 256 Gb                |
| SSD              | Crucial BX500 240 Gb               |
| SmBios           | MacMini 8,1                        |
| BootLoader       | OpenCore                           |

![infobigsur](./Screenshot/infomacbigsur.png)

## Peripherals

![infohack](./Screenshot/hackintooldevice.png)
![infodp2](./Screenshot/DpciScreen2.png)
![infogpu](./Screenshot/hackintooligpu.png)
![usbmap](./Screenshot/mapusb.png)
![infopci](./Screenshot/PCISEZ.png)

### What works and What doesn't or WIP:

- [x] Intel UHD 630 iGPU HDMI/DP Output
- [x] ALC255 Internal Speakers
- [x] ALC255 Native Combojack headphones
- [x] ALC255 HDMI/DP Audio Output
- [x] All USB Ports 
- [x] SpeedStep / Sleep / Wake
- [x] Wi-Fi and Bluetooth BCM943602BAED (DW1830) Module
- [x] Realtek RTL8168 LAN
- [x] NVRAM
- [x] Windows boot from OpenCore
- [x] ALC255 Combojack microphone
- [x] ALC255 jack LINE-IN


### Special Config:

- Usb port mapping performed
- Disabled unused device
- Applied cosmetics DSM

### Post Install:

Open terminal and run install.sh from PostInsall/ComboJackAlc295. After reboot insert jack and appears this image
![jack](./Screenshot/Combojackfix.png)

### SSDT Info
![ssdt](./Screenshot/ssdtscreen.png)

See [ioreg](./ioregmacbook.ioreg) for more clarification

## Credits

- [Apple](https://apple.com) for macOS;
- [Acidanthera](https://github.com/acidanthera) for OpenCore and all the lovely hackintosh work.
- [Dortania](https://github.com/dortania)
- [mald0n](https://github.com/MaLd0n)
- [rehabman](https://github.com/RehabMan)
- [daliansky](https://github.com/daliansky)
- [Hackintoshlifeit](https://github.com/Hackintoshlifeit)

# If you need help please contact us on [Telegram](https://t.me/HackintoshLife_it) or [Web](https://www.hackintoshlife.it/)
