# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.perfcapture=1

# Display density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=440

# Beryllium only
#PRODUCT_PROPERTY_OVERRIDES += \
    vendor.hw.fm.init=0 \
    persist.ppd.fde.config=0 \
    vendor.display.enable_default_color_mode=0
