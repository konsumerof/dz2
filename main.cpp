#include <iostream>
#include <string>
#include <fstream>
#include <sstream>


void encryption(int &pas, std::string &text) {
    srand(pas);
    int enc;
    for (int i = 0; i < static_cast<int>(text.length()); i += 2) {
        if (static_cast<int>(text[i + 1]) == 0) {
            enc = static_cast<int>(text[i]);
            enc <<= 4;
            int buf;
            buf = enc & 3840;
            buf >>= 8;
            enc |= buf;
            enc &= 255;
            enc ^= rand();
            enc &= 255;
            text[i] = static_cast<char>(enc);
        } else {
            enc = static_cast<int>(text[i]);
            enc <<= 8;
            enc |= static_cast<int>(text[i + 1]);
            int buf;
            enc <<= 4;
            buf = enc & 983040;
            buf >>= 16;
            enc |= buf;
            enc &= 65535;
            enc ^= rand();
            enc &= 65535;
            text[i] = static_cast<char>(enc >> 8);
            text[i + 1] = static_cast<char>(enc & 255);
        }
    }
}

std::string decryption(int &pas, std::string sh) {
    srand(pas);
    int decr;
    std::string answ;
    for (int i = 0; i < static_cast<int>(sh.length()); i += 2) {
        if (sh[i + 1] == 0) {
            decr = static_cast<int>(sh[i]) & 255;
            decr ^= rand();
            decr &= 255;
            int buf;
            buf = decr & 15;
            decr >>= 4;
            buf <<= 4;
            decr |= buf;
            answ += static_cast<char>(decr);
        } else {
            decr = static_cast<int>(sh[i]) & 255;
            decr <<= 8;
            decr |= static_cast<int>(sh[i + 1]) & 255;
            decr ^= rand();
            decr &= 65535;
            int buf;
            buf = decr & 15;
            decr >>= 4;
            buf <<= 12;
            decr |= buf;
            answ += static_cast<char>(decr >> 8);
            answ += static_cast<char>(decr & 255);
        }
    }
    return answ;
}

std::string slurp(std::ifstream &in) {
    std::stringstream sstr;
    sstr << in.rdbuf();
    return sstr.str();
}

int main() {
    std::string mode;
    std::string path_file;
    std::cout << "E for encryption or D for decryption:" << std::endl;
    std::cin >> mode;
    std::cout << "Enter the filename:";
    std::cin >> path_file;
    std::ofstream file;
    if (mode == "E") {
        file.open(path_file, std::ios::binary);
        std::cout << "Enter the key:" << std::endl;
        int key;
        std::cin >> key;
        std::cout << "Enter the data:" << std::endl;
        std::string text;
        std::cin.ignore();
        std::getline(std::cin, text);
        encryption(key, text);
        for (char &i : text) {
            file.write((char *) &i, sizeof(char));
        }
        file.close();
    } else if (mode == "D") {
        std::ifstream file(path_file, std::ios::binary);
        if (!file) {
            std::cout << "Enter the filename" << std::endl;
            file.close();
            return 0;
        }
        std::cout << "Enter the key:" << std::endl;
        int password;
        std::cin >> password;
        std::string sh = slurp(file);
        file.close();
        std::cout << "Enter the data:" << std::endl;
        std::cout << decryption(password, sh);
    }
}
