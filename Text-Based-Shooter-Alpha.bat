@echo off
TITLE ---=====Shooter Alpha=====---
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
set /p input100=y/n:

if %input100% equ Y goto startup
if %input100% equ y goto startup
if %input100% equ N exit
if %input100% equ n exit
goto Notice

:startup
cls
mode con: cols=75 lines=30
for /f "delims=: tokens=*" %%A in ('findstr /b :: "%~f0"') do @echo(%%A
echo  	@====================Shooter Alpha======================@
echo  	/   Welcome to Text Shooter Alpha, Would you like to?   \ 
echo  	\                                                       /
echo  	/                  1. Play   4. Credits                 \
echo  	\                  2. Info   5. Settings                /
echo  	/                  3. Quit                              \
echo  	\                                                       /
echo  	@=======================================================@
echo.
set /p input0=Enter:

if %input0% equ Play goto Play
if %input0% equ play goto Play
if %input0% equ Info goto Info
if %input0% equ info goto Info
if %input0% equ Quit goto exit
if %input0% equ quit goto exit
if %Input0% equ SecretScreen goto Secret!
if %Input0% equ DevMode goto DevConsoleCode
if %input0% equ Credits goto Credits
if %input0% equ Settings goto Settings
if %input0% equ credits goto Credits
if %input0% equ settings goto Settings

goto startup

:Settings
cls
echo @=========Mak-Settings v0.0.3=========@
echo ( #                                 # )
echo ( #    Welcome to Settings, Here's   # )
echo ( #        What you can do:         # )
echo ( #    1. Music 2. Under Development# )       
echo @=====================================@
 set /p InputSettings=Enter:
 
if %InputSettings% equ Music goto MusicSettingsOff
if %InputSettings% equ music goto MusicSettingsOff
if %InputSettings% equ back goto startup
if %InputSettings% equ Back goto startup
 
 
 goto Settings
 
 :MusicSettingsOff
 cls
 echo @=========Mak-Settings v0.0.3=========@
 echo ( #                                 # )
 echo ( #   Currently, Music is OFF and   # )
 echo ( #   Everytime you come back here  # )
 echo ( #  It will be off, so if you want # )
 echo ( # it on keep it ON and dont come! # )
 echo ( #   also to turn on say ON and    # )
 echo ( #          OFF for off            # )
 echo @=====================================@
 set /p InputMusicSetting=On/Off:
 
 taskkill /IM CustomSongForShooter.mp3 /F
 
 if %InputMusicSetting% equ On goto MusicSettingsOn
 if %InputMusicSetting% equ On goto MusicSettingsOn
 if %InputMusicSetting% equ Off goto Settings
 if %InputMusicSetting% equ Off goto Settings

 :MusicSettingsOn
 cls
 echo Music is on, Press any button to go back.
 start CustomSongForShooter.mp3
 pause >nul
 
 goto Settings
 
:DevPassFailed
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo     @=========Mak-Security v0.1.6=========@
echo     ( !!                               !! )
echo     ( !! You have Guessed incorrectly! !! )
echo     ( !!  You must now go back and try !! )
echo     ( !!   try, try, try, try, try     !! )    
echo     ( !!  Again, but ofc if you tried  !! )                   
echo     ( !!   7 Times, you might want to  !! )
echo     ( !!   try some more, Not hurting  !! )
echo     ( !!   anyone right? i don't care  !! )
echo     ( !!   also press any key to exit  !! )
echo     @=====================================@
pause >nul

exit

:DevConsoleCode
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo     @=========Mak-Security v0.1.6=========@
echo     ( !                                 ! )  
echo     ( !  You are trying to enter into   ! )
echo     ( !   Dev Mode, You must pass a     ! )
echo     ( !      Password, What is it?      ! )
echo     ( !                                 ! )
echo     @=====================================@
set /p InputDevPass=Password:

if %InputDevPass% equ Big-Maks goto DevConsole
if not %InputDevPass% equ Big-Maks goto DevPassFailed

goto DevConsoleCode

:DevConsole
cls
echo    @======================================================@
echo    / Hello Makii, or literally anyone else who finds this,\
echo    \ Where would you like to go?                           /
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
echo    / System Booting...                    Mak-Tech v0.4.3 \
echo    @======================================================@
set /p InputDev=Enter a Number:

if %InputDev% equ 1 goto WaterFallSelect
if %InputDev% equ 2 goto SunnyHillSelect
if %InputDev% equ 3 goto HauntedMansionSelect

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
set /p InputWFDev=Enter a Number:

if %InputWFDev% equ 1 goto WF1
if %InputWFDev% equ 2 goto WF2
if %InputWFDev% equ 3 goto WF3
if %InputWFDev% equ 4 goto WF4
if %InputWFDev% equ 5 goto WF5
if %InputWFDev% equ 6 goto WF6
if %InputWFDev% equ 7 goto WF7LASER1
if %InputWFDev% equ 8 goto WF8LASER2
if %InputWFDev% equ 9 goto WF9LASERFIN
if %InputWFDev% equ 10 goto WF10BOSS
if %InputWFDev% equ 11 goto WF11
if %InputWFDev% equ 12 goto WF12
if %InputWFDev% equ 13 goto WF13
if %InputWFDev% equ 14 goto WF14
if %InputWFDev% equ 15 goto WF15
if %InputWFDev% equ 16 goto WF16
if %InputWFDev% equ 17 goto WF17
if %InputWFDev% equ 18 goto WF18
if %InputWFDev% equ 19 goto WF19
if %InputWFDev% equ 20 goto WFENDING

goto WaterFallSelect

:Secret!
cls
echo CONRGRATULAGIONS! YOU HAVE FOUND THE SECRET SCREEN!
echo Post a picture of this at betazone814@gmail.com ;)
echo For now, Enjoy the excitement of finding a secret
echo PS: Do not share this with anyone, If you do...
echo ...I won't do anything about it
echo PPS: Press any button togo back to the Title Screen
pause >nul

goto startup

:Info
cls
echo ------======================================================------
echo Here is some Info about this game:
echo.
echo 1. When Enemies Get Close You Want To Shoot Them ;)
echo 2. When Enemies Get Too Close You Want To Jump And Not Take Damage
echo 3. Jump over pits.
echo 4. Roll/Jump Over/Under Bullets That Enemies Shoot
echo 5. Charge your Beam to do massive damage to enemies
echo 6. If you dont Charge for 2 Moves the Beam will stay charged
echo 7. Bosses are more difficult then normal enemies, Charge them beams
echo 8. You only have 1 hp (Hit Point) one hit and your OUT
echo The code is (1-4-7-2)
echo Type "Back" to go back to the Title Screen
echo.
set /p input1000=Enter:

if %input1000% equ Back goto startup
if %input1000% equ back goto startup

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
set /p input1=Enter:

if 
if %input1% equ Haunted Mansion goto HM1
if %input1% equ haunted mansion goto HM1
if %input1% equ Haunted mansion goto HM1
if %input1% equ haunted Mansion goto HM1
if %input1% equ Sunny Hills goto SH1
if %input1% equ sunny hills goto SH1
if %input1% equ Sunny hills goto SH1
if %input1% equ sunny Hills goto SH1
if %input1% equ Waterfalls goto WF1
if %input1% equ waterfalls goto WF1

goto Play

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
set /p inputWF1=Enter:

if %InputWF1% equ A goto GameOver1WF1
if %InputWF1% equ B goto WF2
if %InputWF1% equ C goto GameOver2WF1
if %InputWF1% equ a goto GameOver1WF1
if %InputWF1% equ b goto WF2
if %InputWF1% equ c goto GameOver2WF1

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
set /p InputGOWF1=Continue?:

if %inputGOWF1% equ y goto WF1
if %inputGOWF1% equ Y goto WF1
if %inputGOWF1% equ n goto startup
if %inputGOWF1% equ N goto startup

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
set /p InputGO2WF1=Continue?:

if %inputGO2WF1% equ y goto WF1
if %inputGO2WF1% equ Y goto WF1
if %inputGO2WF1% equ n goto startup
if %inputGO2WF1% equ N goto startup

goto GameOver1WF1

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
set /p InputWF2=Enter:

if %InputWF2% equ A goto WF3
if %InputWF2% equ a goto WF3
if %InputWF2% equ B goto GameOver1WF2
if %InputWF2% equ b goto GameOver1WF2
if %InputWF2% equ C goto GameOver2WF2
if %InputWF2% equ c goto GameOver2WF2

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
set /p InputGOWF2=Continue?:

if %InputGOWF2%  equ Y goto WF2
if %InputGOWF2%  equ y goto WF2
if %InputGOWF2%  equ Y goto startup
if %InputGOWF2%  equ n goto startup

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
set /p InputGO2WF2=Continue?:

if %inputGO2WF2% equ y goto WF1
if %inputGO2WF2% equ Y goto WF1
if %inputGO2WF2% equ n goto startup
if %inputGO2WF2% equ N goto startup

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
set /p InputWF3=Enter:

if %InputWF3% equ A goto GameOver1WF3
if %InputWF3% equ a goto GameOver1WF3
if %InputWF3% equ B goto GameOver2WF3
if %InputWF3% equ b goto GameOver2WF3
if %InputWF3% equ C goto WF4
if %InputWF3% equ c goto WF4

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
set /p InputGOWF3=Continue?:

if %InputGOWF3%  equ Y goto WF3
if %InputGOWF3%  equ y goto WF3
if %InputGOWF3%  equ Y goto startup
if %InputGOWF3%  equ n goto startup

goto GameOver1WF3

:GameOver2WF3
cls
echo ------===========================------
echo You roll into the Enemy, You get hit.
echo               GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------===========================------
set /p InputGO2WF3=Continue?:

if %inputGO2WF3% equ Y goto WF3
if %inputGO2WF3% equ y goto WF3
if %inputGO2WF3% equ N goto startup
if %inputGO2WF3% equ n goto startup

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
set /p InputWF4=Enter:

if %InputWF4% equ A goto WF5
if %InputWF4% equ a goto WF5
if %InputWF4% equ B goto WF5
if %InputWF4% equ b goto WF5

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
set /p InputWF5=Enter:

if %InputWF5% equ A goto WF6
if %InputWF5% equ a goto WF6
if %InputWF5% equ B goto GameOver2WF5
if %InputWF5% equ b goto GameOver2WF5
if %InputWF5% equ C goto GameOverWF5
if %InputWF5% equ c goto GameOverWF5

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
set /p InputGOWF5=Continue?:

if %InputGOWF5% equ Y goto WF5
if %InputGOWF5% equ y goto WF5
if %InputGOWF5% equ n goto startup
if %InputGOWF5% equ N goto startup

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
set /p InputGO2WF5=Continue?:

if %InputGO2WF5% equ Y goto WF5
if %InputGO2WF5% equ y goto WF5
if %InputGO2WF5% equ n goto startup
if %InputGO2WF5% equ N goto startup

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
set /p InputWF6=Enter:

if %InputWF6% equ A goto WF7LASER1
if %InputWF6% equ a goto WF7LASER1
if %InputWF6% equ B goto GameOver1WF6
if %InputWF6% equ b goto GameOver1WF6
if %InputWF6% equ C goto GameOver2WF6
if %InputWF6% equ c goto GameOver2WF6

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
set /p InputGOWF6=Continue?:

if %InputGOWF6% equ Y goto WF6
if %InputGOWF6% equ y goto WF6
if %InputGOWF6% equ N goto startup
if %InputGOWF6% equ n goto startup

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
set /p InputGO2WF6=Continue?:

if %InputGO2WF6% equ Y goto WF6
if %InputGO2WF6% equ y goto WF6
if %InputGO2WF6% equ N goto startup
if %InputGO2WF6% equ n goto startup

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
set /p InputWF7=Enter:

if %InputWF7% equ A goto GameOver1WF7
if %InputWF7% equ B goto WF8LASER2
if %InputWF7% equ C goto GameOver2WF7
if %InputWF7% equ a goto GameOver1WF7
if %InputWF7% equ b goto WF8LASER2
if %InputWF7% equ c goto GameOver2WF7

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
set /p InputGOWF7=Continue?:

if %InputGOWF7% equ Y goto WF7
if %InputGOWF7% equ y goto WF7
if %InputGOWF7% equ N goto startup
if %InputGOWF7% equ n goto startup

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
set /p InputGO2WF7=Continue?:
              
if %InputGO2WF7% equ Y goto WF7
if %InputGO2WF7% equ y goto WF7
if %InputGO2WF7% equ N goto startup
if %InputGO2WF7% equ n goto startup

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
set /p InputWF8=Enter:

if %InputWF8% equ A goto WF9LASERFIN
if %InputWF8% equ a goto WF9LASERFIN
if %InputWF8% equ B goto GameOver1WF8
if %InputWF8% equ b goto GameOver1WF8
if %InputWF8% equ C goto GameOver2WF8
if %InputWF8% equ c goto GameOver2WF8

goto WF8LASER2

:GameOver1WF8
cls
echo ------===========================------
echo     Your laser backfired onto you.
echo       You die instantaneously.
echo              GAME OVER
echo.
echo.
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF8=Continue?

if %InputGOWF8% equ Y goto WF8LASER2
if %InputGOWF8% equ y goto WF8LASER2
if %InputGOWF8% equ N goto startup
if %InputGOWF8% equ n goto startup

goto GameOver1WF8

:GameOver2WF8
cls
echo ------===========================------
echo     You ran over the pits... Yeah,
echo     like that's ever gonna happen.
echo        You fell and died.
echo             GAME OVER
echo.
echo.
echo Continue? (y/n)
echo ------===========================------
set /p InputGO2WF8=Continue?

if %InputGO2WF8% equ Y goto WF8LASER2
if %InputGO2WF8% equ y goto WF8LASER2
if %InputGO2WF8% equ N goto startup
if %InputGO2WF8% equ n goto startup

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
set /p InputWF9=Enter:

if %inputWF9% equ A goto WF10BOSS
if %inputWF9% equ a goto WF10BOSS
if %inputWF9% equ B goto GameOver1WF9
if %inputWF9% equ b goto GameOver1WF9
if %inputWF9% equ C goto GameOver2WF9
if %inputWF9% equ c goto GameOver2WF9

goto WF9LASERFIN

:GameOver1WF9
cls
echo ------===========================------
echo         You picklock on the lock
echo       without a picklock on hand...
echo       As if, you gave up and starved.
echo.
echo.
echo               GAME OVER!
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF9=Continue?:

if %InputGOWF9% equ Y goto WF9LASERFIN
if %InputGOWF9% equ y goto WF9LASERFIN
if %InputGOWF9% equ N goto startup
if %InputGOWF9% equ n goto startup

goto GameOver1WF9

:GameOver2WF9
cls
echo ------==============================------
echo You stared into the Lock with a mighty rage.
echo      The lock opened... (HAHAHA)In your dreams
echo         You gave up and starved.
echo.
echo.
echo                  GAME OVER!
echo Continue? (y/n)                 
echo ------==============================------
set /p InputGO2WF9

if %InputGO2WF9% equ Y goto WF9LASERFIN
if %InputGO2WF9% equ y goto WF9LASERFIN
if %InputGO2WF9% equ N goto startup
if %InputGO2WF9% equ n goto startup

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

if %InputWF10% equ A goto GameOver1WF10
if %InputWF10% equ B goto GameOver2WF10
if %inputWF10% equ C goto WF11
if %InputWF10% equ a goto GameOver1WF10
if %InputWF10% equ b goto GameOver2WF10
if %inputWF10% equ c goto WF11

goto WF10BOSS

:GameOver1WF10
cls
Echo ------===========================------
echo      You shot all the Shards down,
echo    But one shard hit you, And thus...
echo               GAME OVER!
echo.
echo.               
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF10=Continue?:

if %InputGOWF10% equ Y goto WF10BOSS
if %InputGOWF10% equ y goto WF10BOSS
if %InputGOWF10% equ N goto startup
if %InputGOWF10% equ n goto startup

goto GameOver1WF10

:GameOver2WF10
cls
echo ------===========================------
echo     You moved out of the way...
echo     But Cryodin shot more shards...
echo     Creating an infinite loop of this
echo               GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------===========================------
set /p InpuGO2WF10=Continue?:

if %InputGO2WF10% equ Y goto WF10BOSS
if %InputGO2WF10% equ y goto WF10BOSS
if %InputGO2WF10% equ N goto startup
if %InputGO2WF10% equ n goto startup

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

if %InputWF11% equ A goto WF12
if %InputWF11% equ a goto WF12
if %InputWF11% equ B goto GameOver1WF11
if %InputWF11% equ b goto GameOver1WF11
if %InputWF11% equ C goto GameOver2WF11
if %InputWF11% equ c goto GameOver2WF11

goto WF11

:GameOver1WF11
cls
echo ------===========================------
echo   You jump... Onto the shards
echo             GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF11=Continue?:

if %InputGOWF11% equ Y goto WF11
if %InputGOWF11% equ y goto WF11
if %InputGOWF11% equ N goto startup
if %InputGOWF11% equ n goto startup

goto GameOver1WF11

:GameOver2WF11
cls
echo ------===========================------
echo   You roll... Into the shards
echo            GAME OVER!
echo.
echo.         
echo Continue? (y/n)
echo ------===========================------
set /p InputGO2WF11=Continue?:

if %InputGO2WF11% equ Y goto WF11
if %InputGO2WF11% equ y goto WF11
if %InputGO2WF11% equ N goto startup
if %InputGO2WF11% equ n goto startup

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

if %inputWF12% equ A goto GameOver1WF12
if %inputWF12% equ a goto GameOver1WF12
if %inputWF12% equ B goto GameOver2WF12
if %inputWF12% equ b goto GameOver2WF12
if %inputWF12% equ C goto WF13
if %inputWF12% equ c goto WF13

goto WF12

:Gameover1WF12
cls
echo ------===========================------
echo   You sat there and dodged all the
echo    "Snowflakes"- just kidding...
echo           You Died
echo.         
echo           GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------===========================------
set /p InputGOWF12=Continue?:

if %InputGOWF12% equ Y goto WF12
if %InputGOWF12% equ y goto WF12
if %InputGOWF12% equ N goto startup
if %InputGOWF12% equ n goto startup

goto GameOver1WF12

:GameOver2WF12
cls
echo ------===========================------
echo    You tried to dodge the snowflakes,
echo        Seems like you need to jump
echo        to dodge some snowflakes...
echo                GAME OVER!
echo.
echo.
echo Continue? (y/n)
echo ------===========================------
set /p InputGO2WF12=Continue?:

if %InputGO2WF12% equ Y goto WF12
if %InputGO2WF12% equ y goto WF12
if %InputGO2WF12% equ N goto startup
if %InputGO2WF12% equ n goto startup

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

if %inputWF13% equ A goto GameOver1WF13
if %inputWF13% equ a goto GameOver1WF13
if %inputWF13% equ B goto GameOver2WF13
if %inputWF13% equ b goto GameOver2WF13
if %inputWF13% equ C goto WF14
if %inputWF13% equ c goto WF14

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
set /p InputGOWF13

if %inputGOWF13% equ Y goto WF13
if %inputGOWF13% equ y goto WF13
if %inputGOWF13% equ N goto startup
if %inputGOWF13% equ n goto startup

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

if %InputGO2WF13% equ Y goto WF13
if %InputGO2WF13% equ y goto WF13
if %InputGO2WF13% equ N goto startup
if %InputGO2WF13% equ n goto startup

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

if %InputWF14% equ A goto GameOver1WF14
if %InputWF14% equ a goto GameOver1WF14
if %InputWF14% equ B goto WF15
if %InputWF14% equ b goto WF15
if %InputWF14% equ C goto GameOver2WF14
if %InputWF14% equ c goto GameOver2WF14

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

if %InputGOWF14% equ Y goto WF14
if %InputGOWF14% equ y goto WF14
if %InputGOWF14% equ n goto startup
if %InputGOWF14% equ N goto startup

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

if %InputGO2WF14% equ Y goto WF14
if %InputGO2WF14% equ y goto WF14
if %InputGO2WF14% equ n goto startup
if %InputGO2WF14% equ N goto startup

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






























