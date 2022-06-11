if (WIN32)
    find_package(Fontconfig QUIET REQUIRED)
    find_package(Freetype QUIET REQUIRED)
endif()
if (NOT TARGET asio::asio)
    find_package(asio QUIET REQUIRED)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/elements.cmake)
