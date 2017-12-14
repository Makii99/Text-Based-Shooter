@echo off
TITLE ---=====Shooter Beta=====---
:::
::: ________  ___  ___  ________  ________  _________  _______   ________     
:::|\   ____\|\  \|\  \|\   __  \|\   __  \|\___   ___\\  ___ \ |\   __  \    
:::\ \  \___|\ \  \\\  \ \  \|\  \ \  \|\  \|___ \  \_\ \   __/|\ \  \|\  \   
::: \ \_____  \ \   __  \ \  \\\  \ \  \\\  \   \ \  \ \ \  \_|/_\ \   _  _\  
:::  \|____|\  \ \  \ \  \ \  \\\  \ \  \\\  \   \ \  \ \ \  \_|\ \ \  \\  \| 
:::    ____\_\  \ \__\ \__\ \_______\ \_______\   \ \__\ \ \_______\ \__\\ _\ 
:::   |\_________\|__|\|__|\|_______|\|_______|    \|__|  \|_______|\|__|\|__|
:::   \|_________|                                                            
:::		   __          __  ___     __    _ _ 
:::		  / /  __ __  /  |/  /__ _/ /__ (_|_)                                  
:::		 / _ \/ // / / /|_/ / _ `/  '_// / /                                
:::		/_.__/\_, / /_/  /_/\_,_/_/\_\/_/_/  And Mike15678                 
:::		     /___/                                                  

:Notice
cls
for /f "delims=: tokens=*" %%A in ('findstr /b :: "%~f0"') do @echo(%%A
echo This game is licensed under GPLv3. Do you agree with this license?
set /p input100="y/n:"

if /I "%input100%"=="y" goto startup
if /I "%input100%"=="yes" goto startup
if /I "%input100%"=="n" exit
if /I "%input100%"=="no" exit

goto Notice

:Startup
cls
for /f "delims=: tokens=*" %%A in ('findstr /b :: "%~f0"') do @echo(%%A
echo  	@====================Shooter Beta=======================@
echo  	/   Welcome to Text Shooter Beta, Would you like to?    \ 
echo  	\                                                       /
echo  	/                  1. Play   4. Credits                 \
echo  	\                  2. Info   5. Settings                /
echo  	/                  3. Quit                              \
echo  	\                                                       /
echo  	@=======================================================@
echo.
set /p input0="Enter:"

set WFClear=0
set HMClear=0
set SHClear=0
if /I "%input0%"=="play" goto Play
if /I "%input0%"=="info" goto Info
if /I "%input0%"=="quit" goto exit
if /I "%input0%"=="SecretScreen" goto Secret
if /I "%Input0%"=="DevMode" goto DevConsole
if /I "%input0%"=="credits" goto Credits
if /I "%input0%"=="settings" goto Settings

goto startup

:Settings
cls
echo @=========Mak-Settings v0.0.5==========@
echo ( #                                  # )
echo ( #    Welcome to Settings, Here's   # )
echo ( #         What you can do:         # )
echo ( #         1. Music 2. Quit         # )
echo @======================================@
set /p InputSettings="Enter:"
 
if /I "%InputSettings%"=="music" goto MusicSettingsOff
if /I "%InputSettings%"=="quit" goto startup

goto Settings

:MusicSettingsOff
cls
echo @=========Mak-Settings v0.0.5=========@
echo ( #                                 # )
echo ( #   Currently, Music is OFF and   # )
echo ( #   Everytime you come back here  # )
echo ( #  It will be off, so if you want # )
echo ( # it on keep it ON and dont come! # )
echo ( #   also to turn on say ON and    # )
echo ( #          OFF for off            # )
echo @=====================================@
set /p InputMusicSetting="On/Off:"

taskkill /IM CustomSongForShooter.mp3 /F
 
if /I "%InputMusicSetting%"=="on" goto MusicSettingsOn
if /I "%InputMusicSetting%"=="off" goto Settings

goto MusicSettingsOff

:MusicSettingsOn
cls
echo Music is on, Press any button to go back.
start CustomSongForShooter.mp3
pause >nul
 
goto Settings

:DevConsole
cls
echo    @======================================================@
echo    / Hello literally anyone  who finds this,              \
echo    \ Where would you like to go?                          /
echo    / (Please be aware that if there are bugs in the game, \
echo    \  you won't be able to debug them by using this)      /
echo    / 1. Waterfalls 2. Sunny Hills 3. Haunted Mansion      \
echo    \                                                      /
echo    /         @================================@           \
echo    \         /                                \           /
echo    /         \ Waiting for Stage Selection... /           \
echo    \         /                                \           /
echo    /         \                                /           \
echo    \         @================================@           /
echo    /                                                      \
echo    \                                                      /
echo    / System Booting...                    Mak-Tech v0.4.5 \
echo    @======================================================@
set /p InputDev="Enter a Number:"

if "%InputDev%"=="1" goto WaterFallSelect
if "%InputDev%"=="2" goto SunnyHillSelect
if "%InputDev%"=="3" goto HauntedMansionSelect

goto DevConsole

:WaterFallSelect
cls
echo    @======================================================@
echo    / Hello Makii, or litteraly anyone else who finds this,\
echo    \ Where would you like togo?                           /
echo    / 1. Waterfalls 2. Sunny Hills 3. Haunted Mansion      \
echo    \                                                      /
echo    /         @================================@           \
echo    \         /Waterfalls, Ok, Now which "Part"\           /
echo    /         \Do you want to go to?           /           \
echo    \         /                                \           /
echo    /         \       Numbers: 1-20            /           \
echo    \         @================================@           /
echo    /                                                      \
echo    \                                                      /
echo    / System Booted!                       Mak-Tech v0.4.3 \
echo    @======================================================@
set /p InputWFDev="Enter a Number:"

if "%InputWFDev%"=="1" goto WF1
if "%InputWFDev%"=="2" goto WF2
if "%InputWFDev%"=="3" goto WF3
if "%InputWFDev%"=="4" goto WF4
if "%InputWFDev%"=="5" goto WF5
if "%InputWFDev%"=="6" goto WF6
if "%InputWFDev%"=="7" goto WF7LASER1
if "%InputWFDev%"=="8" goto WF8LASER2
if "%InputWFDev%"=="9" goto WF9LASERFIN
if "%InputWFDev%"=="10" goto WF10BOSS
if "%InputWFDev%"=="11" goto WF11
if "%InputWFDev%"=="12" goto WF12
if "%InputWFDev%"=="13" goto WF13
if "%InputWFDev%"=="14" goto WF14
if "%InputWFDev%"=="15" goto WF15
if "%InputWFDev%"=="16" goto WF16
if "%InputWFDev%"=="17" goto WF17
if "%InputWFDev%"=="18" goto WF18
if "%InputWFDev%"=="19" goto WF19
if "%InputWFDev%"=="20" goto WFENDING

goto WaterFallSelect

:Secret
cls
echo CONRGRATULAGIONS! YOU HAVE FOUND THE SECRET SCREEN!
echo.
echo For now, Enjoy the excitement of finding a secret
echo PS: Do not share this with anyone, If you do...
echo ...I won't do anything about it
echo (Press any button togo back to the Title Screen)
echo                                          Secret 1/2
pause >nul

goto startup

:Info
cls
echo ------======================================================------
echo Here is some info about this game:
echo.
echo 1. When Enemies Get Close You Want To Shoot Them ;)
echo 2. When Enemies Get Too Close You Want To Jump And Not Take Damage
echo 3. Jump over pits.
echo 4. Roll/Jump Over/Under Bullets That Enemies Shoot
echo 5. Bosses are the main focus of an stage, Those are your targets.
echo 6. You only have 1 hp (Hit Point) one hit and your OUT
echo The code is (1-4-7-2)
echo Type "Back" to go back to the Title Screen
echo.
set /p input1000="Enter:"

if /I "%input1000%"=="back" goto startup

goto Info

:Play
cls
mode con: cols=50 lines=10
echo    @==========================================@
echo    /You see a Stage Selection in front of you:\
echo    \there are 3 Stages, Each with a new theme,/
echo    /a new layout and a new boss! Pick one!    \
echo    \                                          /
echo    /Haunted Mansion                           \
echo    \Sunny Hills                               /
echo    /Waterfalls                                \
echo    @==========================================@
set /p input1="Enter:"

rem if %WFClear% equ 1
rem if %HMClear% equ 1
if "%SHClear%"=="1" goto THE END

if /I "%input1%"=="Haunted Mansion" goto HM1
if /I "%input1%"=="Sunny Hills" goto SH1
if /I "%input1%"=="Waterfalls" goto WF1

goto Play

:HM1
cls
echo ------===========================------
echo You arrive at the Haunted Manson...
echo Well, Outside it, You need to get inside.
echo            Do you decide to...
echo.
echo A) Knock on the door.
echo B) Lockpick the door.
echo C) Open the door.
echo ------===========================------
set /p InputHM1="Enter:"

if /I "%InputHM1%"=="a" goto GameOver1HM1
if /I "%InputHM1%"=="b" goto GameOver2HM1
if /I "%InputHM1%"=="c" goto HM2

goto HM1

:GameOver1HM1
cls
echo ------===========================------
echo You knocked on the door. No one answered.
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGOHM1="Enter:"

:WF1
cls
echo ------=================================------
echo You arrive at Waterfalls, Do you decide to...
echo.
echo A) Walk around the Waterfalls
echo B) Sit there and do nothing
echo C) Jump in the Waterfalls
echo ------=================================------
echo.
set /p inputWF1="Enter:"

if /I "%InputWF1%"=="a" goto GameOver1WF1
if /I "%InputWF1%"=="b" goto WF2
if /I "%InputWF1%"=="c" goto GameOver2WF1

goto WF1

:GameOver1WF1
cls
echo ------================================------
echo You walk around the Waterfalls, But you trip
echo Over a little rock, and into the Waterfalls...
echo                GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------================================------
set /p InputGOWF1="Continue?:"

if /I "%inputGOWF1%"=="y" goto WF1
if /I "%inputGOWF1%"=="n" goto startup

goto GameOver1WF1

:GameOver2WF1
cls
echo ------===============================------
echo You jump in the Waterfalls, Little did you know
echo the water was poisonous...
echo               GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------===============================------
set /p InputGO2WF1="Continue?:"

if /I "%inputGO2WF1%"=="y" goto WF1
if /I "%inputGO2WF1%"=="n" goto startup

goto GameOver2WF1

:WF2
cls
echo ------=============================------
echo You sit on a big rock, Turns out that
echo big rock was actually a Button!
echo The Waterfalls open up a pathway...
echo Do you...
echo.
echo A) Go inside
echo B) Sit on the rock some more
echo C) Walk around the Waterfalls
echo ------=============================------
set /p InputWF2="Enter:"

if /I "%InputWF2%"=="a" goto WF3
if /I "%InputWF2%"=="b" goto GameOver1WF2
if /I "%InputWF2%"=="c" goto GameOver2WF2

:GameOver1WF2
cls
echo ------===========================------
echo You keep sitting on the rock,
echo But some Enemies approach you!
echo There are too many enemies for you.
echo             GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF2="Continue?:"

if /I "%InputGOWF2%"=="y" goto WF2
if /I "%InputGOWF2%"=="n" goto startup

goto GameOver1WF2

:GameOver2WF2
cls
echo ------================================------
echo You walk around the Waterfalls, But you trip
echo Over a little rock, and into the Waterfalls...
echo                GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------================================------
set /p InputGO2WF2="Continue?:"

if /I "%inputGO2WF2%"=="y" goto WF1
if /I "%inputGO2WF2%"=="n" goto startup

goto GameOver2WF2

:WF3
cls
echo ------===========================------
echo You go inside the cave, There are
echo Enemies waiting for you, One of them
echo Shoots a Bullet at you, and another one
echo Runs at you... Do you...
echo.
echo A) Jump over the Enemy and the Bullet
echo B) Roll under the Bullet and the Enemy
echo C) Shoot a bullet
echo ------===========================------
echo.
set /p InputWF3="Enter:"

if /I "%InputWF3%"=="a" goto GameOver1WF3
if /I "%InputWF3%"=="b" goto GameOver2WF3
if /I "%InputWF3%"=="c" goto WF4

goto WF3

:GameOver1WF3
cls
echo ------===========================------
echo You jump over the Bullet and the Enemy,
echo However, There is another bullet and
echo the Enemy is charging back at you...
echo              GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF3="Continue?:"

if /I "%InputGOWF3%"=="y" goto WF3
if /I "%InputGOWF3%"=="n" goto startup

goto GameOver1WF3

:GameOver2WF3
cls
echo ------===========================------
echo You roll into the Enemy, You take a hit
echo               GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------===========================------
set /p InputGO2WF3="Continue?:"

if /I "%inputGO2WF3%"=="y" goto WF3
if /I "%inputGO2WF3%"=="n" goto startup

goto GameOver2WF3

:WF4
cls
echo ------===========================------
echo You shoot the enemy, It dies, but
echo the bullet is still after you...
echo Do you...
echo.
echo A) Roll under it
echo B) Jump over it
echo ------===========================------
set /p InputWF4="Enter:"

if /I "%InputWF4%"=="a" goto WF5
if /I "%InputWF4%"=="b" goto WF5

goto WF4

:WF5
cls
echo ------===========================------
echo You Dodged the bullet, There is a chance
echo to strike the Enemy... Do you...
echo.
echo A) Jump over the enemy and move on
echo B) Shoot the enemy and move on
echo C) Charge your beam
echo ------===========================------
set /p InputWF5="Enter:"

if /I "%InputWF5%"=="a" goto WF6
if /I "%InputWF5%"=="b" goto GameOver2WF5
if /I "%InputWF5%"=="c" goto GameOverWF5

goto WF5

:GameOverWF5
cls
echo ------===========================------
echo You charge up your beam, but you get shot
echo with a Bullet...
echo               GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF5="Continue?:"

if /I "%InputGOWF5%"=="y" goto WF5
if /I "%InputGOWF5%"=="n" goto startup

goto GameOverWF5

:GameOver2WF5
cls
echo ------===========================------
echo You attempt to shoot the Enemy and kill
echo it, but before it died, it shot a Bullet
echo and that Bullet kills you...
echo               GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------===========================------
set /p InputGO2WF5="Continue?:"

if /I "%InputGO2WF5%"=="y" goto WF5
if /I "%InputGO2WF5%"=="n" goto startup

goto GameOver2WF5

:WF6
cls
echo ------===========================------
echo You ignore the Enemy and move on,
echo you approach a wall of lasers and a hole,
echo do you...
echo.
echo A) Attempt to go down the hole
echo B) Jump over the hole and look for secrets
echo C) Camp outside the Entrance
echo ------===========================------
set /p InputWF6="Enter:"

if /I "%InputWF6%"=="a" goto WF7LASER1
if /I "%InputWF6%"=="b" goto GameOver1WF6
if /I "%InputWF6%"=="c" goto GameOver2WF6

goto WF6

:GameOver1WF6
cls
echo ------===========================------
echo You jump over the hole to look for secrets
echo ...And then you get blasted by a laser
echo              GAME OVER!
echo.
echo.
echo Continue? (y/n)
set /p InputGOWF6="Continue?:"

if /I "%InputGOWF6%"=="y" goto WF6
if /I "%InputGOWF6%"=="n" goto startup

goto GameOver1WF6

:GameOver2WF6
cls
echo ------===========================------
echo You camp outside the entrance...
echo and you get blasted by a laser...
echo         GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------===========================------
set /p InputGO2WF6="Continue?:"

if /I "%InputGO2WF6%"=="y" goto WF6
if /I "%InputGO2WF6%"=="n" goto startup

goto GameOver2WF6

:WF7LASER1
cls
echo ------===========================------
echo You go down the hole, there are lasers
echo everywhere! You must choose the right
echo direction to go in order to live!
echo.
echo A) Dodge Left
echo B) Dodge Right
echo C) Duck Down
echo ------===========================------
set /p InputWF7="Enter:"

if /I "%InputWF7%"=="a" goto GameOver1WF7
if /I "%InputWF7%"=="b" goto WF8LASER2
if /I "%InputWF7%"=="c" goto GameOver2WF7

goto WF7LASER1

:GameOver1WF7
cls
echo ------===========================------
echo You attempt to go to the Left,
echo Turns out it was a dead end.
echo Before you could get back the door shut.
echo             GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo -----============================------
set /p InputGOWF7="Continue?:"

if /I "%InputGOWF7%"=="y" goto WF7LASER1
if /I "%InputGOWF7%"=="n" goto startup

goto GameOver1WF7

:GameOver2WF7
cls
echo ------===========================------
echo You duck, and die by a laser...
echo           GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------===========================------
set /p InputGO2WF7="Continue?:"

if /I "%InputGO2WF7%"=="y" goto WF7LASER1
if /I "%InputGO2WF7%"=="n" goto startup

goto GameOver2WF7

:WF8LASER2
cls
echo ------===========================------
echo You went to the Right, Now there are 
echo alot of Pillars and Pits, you need
echo to jump over the pits and onto the 
echo pillars.
echo.
echo A) Jump.
echo B) Charge your laser (Blast jump)
echo C) Run
echo ------===========================------
set /p InputWF8="Enter:"

if /I "%InputWF8%"=="a" goto WF9LASERFIN
if /I "%InputWF8%"=="b" goto GameOver1WF8
if /I "%InputWF8%"=="c" goto GameOver2WF8

goto WF8LASER2

:GameOver1WF8
cls
echo ------===========================------
echo     Your laser backfired onto you.
echo       You died instantaneously.
echo.
echo.
echo Continue? (y/n)
echo              GAME OVER
echo ------===========================------
set /p InputGOWF8="Continue?"

if /I "%InputGOWF8%"=="y" goto WF8LASER2
if /I "%InputGOWF8%"=="n" goto startup

goto GameOver1WF8

:GameOver2WF8
cls
echo ------===========================------
echo     You ran over the pits... Yeah,
echo     like that's ever gonna happen.
echo        You fell and died.
echo.
echo.
echo Continue? (y/n)
echo                  GAME OVER
echo ------===========================------
set /p InputGO2WF8="Continue?"

if /I "%InputGO2WF8%"=="y" goto WF8LASER2
if /I "%InputGO2WF8%"=="n" goto startup

goto GameOver2WF8

:WF9LASERFIN
cls
echo ------===========================------
echo  You jump over the pits, like any
echo  regular human being... but now
echo  there is a door with a lock on it.
echo  Do you...
echo.
echo A) Try to break it with a Charged Beam
echo B) Attempt to Picklock it
echo C) Sit there... Staring into the lock
echo ------===========================------
set /p InputWF9="Enter:"

if /I "%inputWF9%"=="a" goto WF10BOSS
if /I "%inputWF9%"=="b" goto GameOver1WF9
if /I "%inputWF9%"=="c" goto GameOver2WF9

goto WF9LASERFIN

:GameOver1WF9
cls
echo ------===========================------
echo         You picklocked the lock
echo       without a picklock on hand...
echo       As if, you gave up and starved.
echo.
echo.
echo               GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF9="Continue?:"

if /I "%InputGOWF9%"=="y" goto WF9LASERFIN
if /I "%InputGOWF9%"=="n" goto startup

goto GameOver1WF9

:GameOver2WF9
cls
echo ------==============================------
echo You stared into the Lock with a mighty rage
echo      The lock opened... In your dreams
echo         You gave up and starved.
echo.
echo.
echo                  GAME OVER!
echo Continue? (y/n)                 
echo ------==============================------
set /p InputGO2WF9

if /I "%InputGO2WF9%"=="y" goto WF9LASERFIN
if /I "%InputGO2WF9%"=="n" goto startup

:WF10BOSS
cls
echo ------===========================------
echo You charged a beam and blasted the door
echo down, There's a boss waiting for you!
echo The boss's name is Cryodin,
echo Cryodin shoots Many crystal shards at you
echo Do you...
echo.
echo A) Shoot all the Shards down
echo B) Move out of the way
echo C) Charge your beam
echo ------===========================------
set /p InputWF10=Enter:

if /I "%InputWF10%"=="a" goto GameOver1WF10
if /I "%InputWF10%"=="b" goto GameOver2WF10
if /I "%inputWF10%"=="c" goto WF11

goto WF10BOSS

:GameOver1WF10
cls
Echo ------===========================------
echo      You shot all the Shards down,
echo    But one shard hit you, And thus...
echo.
echo.
echo               GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF10=Continue?:

if /I "%InputGOWF10%"=="y" goto WF10BOSS
if /I "%InputGOWF10%"=="n" goto startup

goto GameOver1WF10

:GameOver2WF10
cls
echo ------===========================------
echo     You moved out of the way...
echo     But Cryodin shot more shards...
echo     Creating an infinite loop of this
echo.
echo.
echo               GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InpuGO2WF10=Continue?:

if /I "%InputGO2WF10%"=="y" goto WF10BOSS
if /I "%InputGO2WF10%"=="n" goto startup

goto GameOver2WF10

:WF11
cls
echo ------===========================------
echo    You charged up your beam,
echo    the Shards draw near, Do you...
echo.
echo A) FIRE THE LASER!
echo B) Jump.
echo C) Roll.
echo ------===========================------
set /p InputWF11=Enter:

if /I "%InputWF11%"=="a" goto WF12
if /I "%InputWF11%"=="b" goto GameOver1WF11
if /I "%InputWF11%"=="c" goto GameOver2WF11

goto WF11

:GameOver1WF11
cls
echo ------===========================------
echo   You jump... Onto the shards
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF11=Continue?:

if /I "%InputGOWF11%"=="y" goto WF11
if /I "%InputGOWF11%"=="n" goto startup

goto GameOver1WF11

:GameOver2WF11
cls
echo ------===========================------
echo   You roll... Into the shards
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGO2WF11=Continue?:

if /I "%InputGO2WF11%"=="y" goto WF11
if /I "%InputGO2WF11%"=="n" goto startup

goto GameOver2WF11

:WF12
cls
echo ------===========================------
echo     You fire your Beam, it breaks
echo     all the shards and hits Cryodin.
echo     Now there are "Snowflakes"
echo     everywhere, Do you...
echo.
echo A) Stand there hoping you dont get hit
echo B) Attempt to dodge the Snowflakes
echo C) Jump and shoot Cryodin
echo ------===========================------
set /p InputWF12=Enter:

if /I "%inputWF12%"=="a" goto GameOver1WF12
if /I "%inputWF12%"=="b" goto GameOver2WF12
if /I "%inputWF12%"=="c" goto WF13

goto WF12

:Gameover1WF12
cls
echo ------===========================------
echo   You sat there and dodged all the
echo    Snowflakes- just kidding...
echo           You Died
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF12=Continue?:

if /I "%InputGOWF12%"=="y" goto WF12
if /I "%InputGOWF12%"=="n" goto startup

goto GameOver1WF12

:GameOver2WF12
cls
echo ------===========================------
echo    You tried to dodge the snowflakes,
echo        Seems like you need to jump
echo        to dodge some snowflakes...
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGO2WF12=Continue?:

if /I "%InputGO2WF12%"=="y" goto WF12
if /I "%InputGO2WF12%"=="n" goto startup

goto GameOver2WF12

:WF13
cls
echo ------===========================------
echo      You jumped and shot Cryodin...
echo      Somehow you lived... However
echo         there are 2 Cryodins
echo      Firing shards directly at you.
echo      Do you...
echo.
echo A) Charge your Beam.
echo B) Shoot the Left Cryodin
echo C) Shoot the Right Cryodin
echo ------===========================------
set /p InputWF13=Enter:

if /I "%inputWF13%"=="a" goto GameOver1WF13
if /I "%inputWF13%"=="b" goto GameOver2WF13
if /I "%inputWF13%"=="c" goto WF14

goto WF13

:GameOver1WF13
cls
echo ------===========================------
echo     You Charge your beam...
echo     Then the shards kill you.
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF13=Continue?

if /I "%inputGOWF13%"=="y" goto WF13
if /I "%inputGOWF13%"=="n" goto startup

goto GameOver1WF13

:GameOver2WF13
cls
echo ------===========================------
echo      You shot the left Cryodin.
echo It was the wrong one, the shards kill you
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGO2WF13=Continue?:

if /I "%InputGO2WF13%"=="y" goto WF13
if /I "%InputGO2WF13%"=="n" goto startup

goto GameOver2WF13

:WF14
cls
echo ------===========================------
echo      You shot the Right Cryodin.
echo It was the Right one, the shards vanish,
echo  You have a chance to attack, Do you...
echo.
echo A) Charge your Beam
echo B) Jump on Cryodin
echo C) Wait and see what happens
echo ------===========================------
set /p InputWF14=Enter:

if /I "%InputWF14%"=="a" goto GameOver1WF14
if /I "%InputWF14%"=="b" goto WF15
if /I "%InputWF14%"=="c" goto GameOver2WF14

goto WF14

:GameOver1WF14
cls
echo ------===========================------
echo        You charge your beam...
echo        It backfired Instantly
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF14=Continue?:

if /I "%InputGOWF14%"=="y" goto WF14
if /I "%InputGOWF14%"=="n" goto startup

goto GameOver1WF14

:GameOver2WF14
cls
echo ------===========================------
echo       You waited and Cryodin Died,
echo    ...As if, you got killed instantly
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGO2WF14=Continue?:

if /I "%InputGO2WF14%"=="y" goto WF14
if /I "%InputGO2WF14%"=="n" goto startup

goto GameOver2WF14

:WF15
cls
echo ------===========================------
echo   You jump on Cryodin, It took a hit
echo     Just one more to go! it is now
echo       Firing Shards at you.
echo            Do you...
echo.
echo A) Shoot the Shards
echo B) Charge your Beam
echo C) Jump.
echo ------===========================------
set /p InputWF15=Enter:

if /I "%InputWF15%"=="a" goto GameOver1WF15
if /I "%InputWF15%"=="b" goto GameOver2WF15
if /I "%InputWF15%"=="c" goto WF16

goto WF15

:GameOver1WF15
cls
echo ------===========================------
echo  You attempted to shoot the shards,
echo  You could not shoot them fast enough
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF15=Continue?

if /I "%InputGOWF15%"=="y" goto WF15
if /I "%InputGOWF15%"=="n" goto startup

goto GameOver1WF15

:GameOver2WF15
cls
echo ------===========================------
echo   You charged your Beam, It exploded
echo   Immediately, Why this keeps happening
echo           Is unsure of yet...
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGO2WF15=Continue?:

if /I "%InputGO2WF15%"=="y" goto WF15
if /I "%InputGO2WF15%"=="n" goto startup

goto GameOver2WF15

:WF16
cls
echo ------===========================------
echo  You jumped and the shards pass by you,
echo This is your chance to Strike! Do you...
echo.
echo A) Charge your beam
echo B) Jump Again
echo C) Shoot at Cryodin
echo ------===========================------
set /p InputWF16=Enter:

if /I "%InputWF16%"=="a" goto WF17
if /I "%InputWF16%"=="b" goto GameOver1WF16
if /I "%InputWF16%"=="c" goto GameOver2WF16

goto WF16

:GameOver1WF16
cls
echo ------===========================------
echo  You jumped, Cryodin has shot you down
echo     Welp, Didnt see that one coming
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF16=Continue?:

if /I "%InputGOWF16%"=="y" goto WF16
if /I "%InputGOWF16%"=="n" goto startup

goto GameOver1WF16

:GameOver2WF16
cls
echo ------===========================------
echo     You shot, Cryodin shot back, 
echo      Guess you know the drill.
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p inputGO2WF16=Continue?:

if /I "%InputGO2WF16%"=="y" goto WF16
if /I "%InputGO2WF16%"=="n" goto startup

goto GameOver2WF16

:WF17
cls
echo ------===========================------
echo     Beam Charged, For once.
echo   Now all thats left is to fire!
echo.
echo A) Fire!
echo B) ...
echo ------===========================------
set /p InputWF17=Enter:

if /I "%InputWF17%"=="a" goto WF18
if /I "%InputWF17%"=="b" goto GameOver1WF17

goto WF17

:GameOver1WF17
cls
echo ------===========================------
echo     What are you waiting around for?
echo     You left yourself open to attack.
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF17=Continue?:

if /I "%InputGOWF17%"=="..." goto SecretWF17
if /I "%InputGOWF17%"=="y" goto WF17
if /I "%InputGOWF17%"=="n" goto startup

goto GameOver1WF17

:SecretWF17
cls
echo ------===========================------
echo  What's Going On? There shouldn't be
echo  anything here... Hmm. I guess for
echo  now just continue with whatever
echo         you were doing.
echo.
echo Press any button to continue.
echo                              Secret 2/2
echo ------===========================------
pause >nul

goto WF17

:WF18
cls
echo ------===========================------
echo You fired. And Cryodin has been defeated
echo    All thats left now is to Escape.
echo.
echo A) Go to the door that says "Exit"
echo B) Go back to where you came from
echo C) Sit there
echo ------===========================------
set /p InputWF18=Enter:

if /I "%InputWF18%"=="a" goto WF19
if /I "%InputWF18%"=="b" goto GameOver1WF18
if /I "%InputWF18%"=="c" goto GameOver2WF18

goto WF18

:GameOver1WF18
cls
echo ------===========================------
echo    You went back to where you came
echo     from. However. It was a trap!
echo    Welp. Guess you know what's next
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF18=Continue?:

if /I "%InputGOWF18%"=="y" goto WF18
if /I "%InputGOWF18%"=="n" goto startup

goto GameOver1WF18

:GameOver2WF18
cls
echo ------===========================------
echo  You sit there and teleported back to
echo     where you stared. Oh wait.
echo            Wrong universe
echo.
echo.
echo             GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGO2WF18=Continue?:

if /I "%InputGO2WF18%"=="y" goto WF18
if /I "%InputGO2WF18%"=="n" goto WF18

goto GameOver2WF18

:WF19
cls
echo ------===========================------
echo   You went out the exit. Suprisingly
echo      it wasent a trap. now just
echo          skit on outta here
echo.
echo A) Skit on outta here.
echo ------===========================------
set /p InputWF19=Enter:

if /I "%InputWF19%"=="a" goto WFENDING

:WFENDING
cls
echo @=====================================@
echo \   You have successfully defeated    /
echo /   the stage "Waterfalls", you can   \
echo \   replay it if you want to.         /
echo /                                     \
echo \                                     /
echo / Press any button to continue...     \
echo @=====================================@
pause >nul

set WFClear=1

goto Play