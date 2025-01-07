#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)
from extract_utils.fixups_lib import lib_fixups
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'vendor/xiaomi/sdm845-common'
]

blob_fixups: blob_fixups_user_type = {
    'system_ext/etc/permissions/qcrilhook.xml': blob_fixup().regex_replace(
        '/product/framework/', '/system_ext/framework/'
    ),
    'system_ext/etc/permissions/qti_libpermissions.xml': blob_fixup().regex_replace(
        'name="android.hidl.manager-V1.0-java', 'name="android.hidl.manager@1.0-java'
    ),
    'system_ext/lib64/lib-imsvideocodec.so': blob_fixup().add_needed(
        'libgui_shim.so',
    ),
    'vendor/bin/pm-service': blob_fixup().add_needed(
        'libutils-v33.so',
    ),
    'vendor/lib/camera/components/com.qti.node.watermark.so': blob_fixup().add_needed(
        'libpiex_shim.so',
    ),
    'vendor/lib64/libwvhidl.so|vendor/lib64/mediadrm/libwvdrmengine.so': blob_fixup().add_needed(
        'libcrypto_shim.so',
    ),
}

module = ExtractUtilsModule(
    'beryllium',
    'xiaomi',
    blob_fixups=blob_fixups,
    namespace_imports=namespace_imports,
)

if __name__ == '__main__':
    utils = ExtractUtils.device_with_common(module, 'sdm845-common', module.vendor)
    utils.run()
