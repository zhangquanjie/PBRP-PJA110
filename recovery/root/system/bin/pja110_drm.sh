#!/system/bin/sh

LOG=/tmp/pja110_drm.log
{
  echo "loading PJA110 DRM and touch modules"
  i=0
  while [ "$i" -lt 20 ]; do
    [ -d /sys/module/ssc_interact ] && break
    i=$((i + 1))
    sleep 0.5
  done

  if [ ! -d /sys/module/msm_drm ]; then
    /system/bin/insmod /lib/modules/msm_drm.ko \
      'dsi_display0=qcom,mdss_dsi_panel_AA536_P_3_A0001_dsc_cmd:'
  fi
  [ -d /sys/module/oplus_ak09970 ] || /system/bin/insmod /lib/modules/oplus_ak09970.ko
  [ -d /sys/module/synaptics_tcm2 ] || /system/bin/insmod /lib/modules/synaptics_tcm2.ko

  i=0
  while [ "$i" -lt 20 ]; do
    [ -e /dev/dri/card0 ] && break
    i=$((i + 1))
    sleep 0.5
  done
  echo "card0=$([ -e /dev/dri/card0 ] && echo yes || echo no)"
} >"$LOG" 2>&1

setprop ctl.start recovery
