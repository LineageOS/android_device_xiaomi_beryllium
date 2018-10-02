# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.enableAdvanceFeatures=0x47 \
    persist.vendor.camera.multicam.fpsmatch=TRUE \
    persist.vendor.camera.multicam.hwsync=TRUE \
    persist.vendor.camera.multicam.framesync=1 \
    persist.vendor.camera.perfcapture=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qcom.ad=1 \
    ro.qcom.ad.calib.data=/vendor/etc/sdr_config.cfg \
    ro.qcom.ad.hdr.calib.data=/vendor/etc/hdr_config.cfg \
    ro.qcom.ad.sensortype=2 \
    ro.qualcomm.cabl=0 \
    ro.sf.lcd_density=480
