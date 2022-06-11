if(WIN32)
  # FIXME: x64-windows shouldn't be hardcoded here
  set(PKG_CONFIG_EXECUTABLE ${VCPKG_INSTALLED_DIR}/x64-windows/tools/pkgconf/pkgconf.exe)
endif()
find_package(PkgConfig QUIET REQUIRED)

if (NOT TARGET PkgConfig::cairo)
    pkg_check_modules(cairo REQUIRED IMPORTED_TARGET cairo)
endif()
if (NOT TARGET Fontconfig::Fontconfig)
    find_package(Fontconfig QUIET REQUIRED)
endif()
if (NOT TARGET Freetype::Freetype)
    find_package(Freetype QUIET REQUIRED)
endif()
if (NOT TARGET asio::asio)
    find_package(asio QUIET REQUIRED)
endif()

if (UNIX)
    if (NOT TARGET PkgConfig::GTK3)
        pkg_check_modules(GTK3 QUIET REQUIRED IMPORTED_TARGET gtk+-3.0)
    endif()
    if (NOT TARGET Threads::Threads)
        find_package(Threads QUIET REQUIRED)
    endif()
endif()

include(${CMAKE_CURRENT_LIST_DIR}/elements.cmake)
