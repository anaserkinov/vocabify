#include <tgbot/tgbot.h>

#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <unordered_map>

#include "Database.hpp"
#include "Fragment.hpp"
#include "FragmentManager.hpp"
#include "Fragments.hpp"

using namespace TgBot;

int main() {
    std::ifstream configFile("../config.txt");
    std::unordered_map<std::string, std::string> configMap;

    if (configFile.is_open()) {
        std::string line;
        while (std::getline(configFile, line)) {
            std::istringstream iss(line);
            std::string key, value;
            if (std::getline(iss, key, '=') && std::getline(iss, value)) {
                configMap[key] = value;
            }
        }
        configFile.close();
    } else {
        std::cerr << "Failed to open config file." << std::endl;
    }

    TgBot::Bot bot(configMap["BOT_TOKEN"]);

    FragmentManager fragmentManager(&bot);
    fragmentManager.setFragmentFactory([](int fragmentId) -> Fragment* {
        switch (fragmentId) {
        case Fragments::MAIN:
            return new Fragment(1);
        default:
            return new Fragment(1);
        }
    });

    bot.getEvents().onCommand(
            {"start"},
            [&](TgBot::Message::Ptr message) {
                const std::string message = message->text;
            });

    bot.getEvents().onNonCommandMessage([&bot, &fragmentManager](Message::Ptr message) {
        const std::string message = message->text;
    });

    try {
        TgBot::TgLongPoll longPoll(bot);
        while (true) {
            printf("Long poll started\n");
            longPoll.start();
        }
    } catch (TgBot::TgException& e) {
        printf("error: %s\n", e.what());
    }

    return 0;
}