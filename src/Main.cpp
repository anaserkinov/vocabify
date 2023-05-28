#include <tgbot/tgbot.h>

#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <unordered_map>

#include "Database.hpp"
#include "Fragment.hpp"

int main() {
    Database("dd.db");

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

    bot.getEvents().onCommand("start", [&bot](TgBot::Message::Ptr message) {
        bot.getApi().sendMessage(message->chat->id, "Hi!");
    });

    bot.getEvents().onAnyMessage([&bot](TgBot::Message::Ptr message) {
        printf("User wrote %s\n", message->text.c_str());
        if (StringTools::startsWith(message->text, "/start")) {
            return;
        }

        bot.getApi().sendMessage(message->chat->id, "Your message is: " + message->text);
    });

    try {
        printf("Bot username: %s\n", bot.getApi().getMe()->username.c_str());
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