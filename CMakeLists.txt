cmake_minimum_required(VERSION 3.10)

project(Vocabify)

set(SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)

add_executable(Vocabify ${SOURCE_DIR}/Main.cpp)

include_directories(
    "tgbot_fragment/sqlite_cpp/include"
    "tgbot_fragment/tgbot-cpp/include/tgbot"
    "tgbot_fragment/include"
)

add_subdirectory("tgbot_fragment")

target_link_libraries(Vocabify 
tgbot_fragment
sqlite_cpp
TgBot
)