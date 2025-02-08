cmake_minimum_required(VERSION 3.10)
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)
project(view-project)
add_executable(view src/main.cpp)
find_package(X11)

target_link_libraries(view
    ${X11_LIBRARIES}
)
