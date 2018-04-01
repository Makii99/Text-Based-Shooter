#!/usr/bin/env python3

import os
import sys


def clear():
    os.system('cls' if os.name == 'nt' else 'clear')


def check():
    if sys.version_info[0] != 3:
        sys.stdout.write("Please use Python 3!\n")
        raw_input("Press the Enter key to terminate the script...")
        sys.exit(1)
    else:
        notice()


splash_screen_logo = """
 ________  ___  ___  ________  ________  _________  _______   ________     
|\   ____\|\  \|\  \|\   __  \|\   __  \|\___   ___|\  ___ \ |\   __  \    
\ \  \___|\ \  \|\  \ \  \|\  \ \  \|\  \|___ \  \_\ \   __/|\ \  \|\  \   
 \ \_____  \ \   __  \ \  \|\  \ \  \|\  \   \ \  \ \ \  \_|/_\ \   _  _\  
  \|____|\  \ \  \ \  \ \  \|\  \ \  \|\  \   \ \  \ \ \  \_|\ \ \  \ \ \| 
    ____\_\  \ \__\ \__\ \_______\ \_______\   \ \__\ \ \_______\ \__\ \ _\ 
   |\_________\|__|\|__|\|_______|\|_______|    \|__|  \|_______|\|__|\|__|
   \|_________|                                                            
        __          __  ___     __    _ _ 
       / /  __ __  /  |/  /__ _/ /__ (_|_)                                  
      / _ \/ // / / /|_/ / _ `/  '_// / /                                
     /_.__/\_, / /_/  /_/\_,_/_/\_\/_/_/  And Mike15678 (Made the Python Port and some levels)                
          /___/                                                  
"""


def notice():
    clear()
    print(splash_screen_logo)
    input100 = input("This game is licensed under the GNU GPLv3. Do you agree with this license?\ny/n: ")
    if input100.casefold().strip() == "yes" or input100.casefold().strip() == "y":
        startup()
    elif input100.casefold().strip() == "no" or input100.casefold().strip() == "n":
        print("See you soon!")
        sys.exit(0)
    else:
        notice()


def startup():
    clear()
    print(splash_screen_logo)
    option_menu = """
    @====================Shooter Beta=======================@
    /   Welcome to Text Shooter Beta, Would you like to?    \ 
    \                                                       / 
    /                  1. Play   4. Credits                 \ 
    \                  2. Info   5. Settings                / 
    /                  3. Quit                              \ 
    \                                                       / 
    @=======================================================@

"""
    global WFClear
    WFClear = 0
    global HMClear
    HMClear = 0
    global SHClear
    SHClear = 0
    print(option_menu)
    input0 = input("Enter: ")
    if input0.casefold().strip() == "play" or input0.casefold().strip() == "1":
        play()
    elif input0.casefold().strip() == "info" or input0.casefold().strip() == "2":
        info()
    elif input0.casefold().strip() == "quit" or input0.casefold().strip() == "3":
        sys.exit(0)
    elif input0.casefold().strip() == "SecretScreen":
        secret()
    elif input0.casefold().strip() == "DevMode":
        dev_console()
    elif input0.casefold().strip() == "credits" or input0.casefold().strip() == "4":
        game_credits()
    elif input0.casefold().strip() == "settings" or input0.casefold().strip() == "5":
        settings()
    else:
        startup()


def play():
    print("This will be added soon.")
    input("Press Enter to go back to option menu!")
    startup()


def info():
    print("This will be added soon.")
    input("Press Enter to go back to option menu!")
    startup()


def game_credits():
    print("This will be added soon.")
    input("Press Enter to go back to option menu!")
    startup()


def settings():
    print("This will be added soon.")
    input("Press Enter to go back to option menu!")
    startup()


check()
