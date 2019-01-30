RESOURCES_LIBRARY()



# macOS SDK 10.13
DECLARE_EXTERNAL_RESOURCE(MACOS_SDK sbr:421387080)

IF (USE_STL_SYSTEM)
    SET(__XCODE_RESOURCE_NAME CPP_XCODE_TOOLCHAIN_ROOT)
    SET(__XCODE_TOOLCHAIN_VERSION ${CPP_XCODE_TOOLCHAIN_VERSION})
    INCLUDE(${ARCADIA_ROOT}/build/platform/xcode/ya.make.inc)
    CFLAGS(
        GLOBAL -cxx-isystem GLOBAL $CPP_XCODE_TOOLCHAIN_ROOT_RESOURCE_GLOBAL/usr/include/c++/v1
        GLOBAL -cxx-isystem GLOBAL $CPP_XCODE_TOOLCHAIN_ROOT_RESOURCE_GLOBAL/usr/include
    )
ENDIF()

END()
