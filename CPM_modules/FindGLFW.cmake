include(/home/ati/Desktop/code/lol/lib/FastNoise2/cmake/CPM.cmake)
CPMAddPackage(NAME;GLFW;GITHUB_REPOSITORY;glfw/glfw;GIT_TAG;3.3.4;EXCLUDE_FROM_ALL;YES;OPTIONS;BUILD_SHARED_LIBS OFF;GLFW_INSTALL OFF;GLFW_BUILD_TESTS OFF;GLFW_BUILD_EXAMPLES OFF;GLFW_BUILD_DOCS OFF)
set(GLFW_FOUND TRUE)