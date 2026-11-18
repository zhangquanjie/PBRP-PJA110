# PBRP for OnePlus Ace 2 Pro (PJA110)

PitchBlack Recovery Project 3.1 device tree for the OnePlus Ace 2 Pro,
targeting the supplied crDroid Android 17 build dated 2026-11-18.

## Important pairing requirement

PJA110 uses a dedicated `recovery` partition, but its display and touch kernel
modules come from `vendor_boot`. The recovery image built here must be paired
with `vendor_boot-20261118-recovery-fixed.img` from the same ROM/kernel build.
Do not carry that vendor_boot image across an OTA.

## Build

The included GitHub Actions workflow syncs PBRP's `android-14.0` manifest and
builds `pb_pja110-eng`. Locally, use the same manifest and place this tree at
`device/oneplus/pja110`, then run:

```sh
source build/envsetup.sh
lunch pb_pja110-eng
mka pbrp -j4
```

## Baseline

- Device: PJA110 / OP5943L1
- SoC: Snapdragon 8 Gen 2 (`kalama`)
- Recovery: header v4, LZ4 ramdisk, 100 MiB partition
- ROM: crDroid Android 17, 2026-11-18
- Kernel: 5.15.223-g68fc396ad5e5
- Display: 1240 x 2772, density 480, AA536 panel
- Touch: Synaptics S3910

The first build should be treated as experimental until display, touch, ADB,
mounting, decryption, fastbootd, backup and restore have been tested on-device.
