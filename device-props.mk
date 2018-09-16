# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=true \
    audio.offload.min.duration.secs=15 \
    av.offload.enable=true \
    persist.audio.fluence.speaker=true \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bt.max.hfpclient.connections=1

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

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.qcom_parser=13630463

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.VT_HYBRID_ENABLE=1 \
    persist.radio.airplane_mode_on=0 \
    persist.radio.apm_sim_not_pwdn=1

