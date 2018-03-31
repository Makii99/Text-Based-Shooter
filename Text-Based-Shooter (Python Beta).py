#!/usr/bin/env python3

import os
import sys


def clear():
    os.system('cls' if os.name == 'nt' else 'clear')


def check():
    if sys.version_info[0] < 3:
        sys.stdout.write("Please use Python 3!\n")
        raw_input("Press the Enter key to terminate the script...")
        sys.exit(1)
    else:
        pass


startup_logo = """
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
    print(startup_logo)
    input100 = input("This game is licensed under the GNU GPLv3. Do you agree with this license?\ny/n:")
    if input100.lower().strip() == "yes" or input100.lower().strip() == "y":
        startup()
    elif input100.lower().strip() == "no" or input100.lower().strip() == "n":
        print("See you soon!")
        sys.exit(0)


def startup():
    print("Thanks, but I'll stop this for now.")
    sys.exit(0)


check()
notice()
