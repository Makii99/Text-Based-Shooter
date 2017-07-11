@echo off
TITLE ---=====Shooter Alpha=====---
mode con: cols=75 lines=30
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
:::		/_.__/\_, / /_/  /_/\_,_/_/\_\/_/_/  And Mike
:::		     /___/                          
:::                        

:Notice
cls
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
echo This game is licensed under GPLv3. Do you agree with this license?
set /p input100=y/n:

if %input100% equ Y goto startup
if %input100% equ y goto startup
if %input100% equ N exit
if %input100% equ n exit
goto notice

:startup
cls
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
echo ------=========Shooter Alpha=========-----------
echo Welcome to Shooter Text Alpha, Would you like to?
echo.
echo Play
echo Info
echo Quit :(
echo ---===========================================---
echo.
set /p input0=Enter:

if %input0% equ Play goto Play
if %input0% equ play goto Play
if %input0% equ Info goto Info
if %input0% equ info goto Info
if %input0% equ Quit goto exit
if %input0% equ quit goto exit
if %Input0% equ SecretScreen goto Secret!


goto startup

:Secret!
cls
echo CONRGRATULAGIONS! YOU HAVE FOUND THE SECRET SCREEN!
echo Post a picture of this at betazone814@gmail.com ;)
echo For now, Enjoy the excitement of finding a secret
echo PS: Do not share this with anyone, If you do...
echo ...I wont do anything about it
echo PPS: Press any button togo back to the Title Screen
pause >nul

goto startup

:Info
cls
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
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
echo The code is |1-4-7-2|
echo Type "Back" to go back to the Title Screen
echo.
set /p input1=Enter:

if %input1% equ Back goto startup
if %input1% equ back goto startup

goto Info

:Play
cls
echo You see a Stage Selection in front of you:
echo there are 3 Stages, Each with a new theme,
echo a new layout and a new boss! Pick one!
echo.
echo Haunted Mansion
echo Sunny Hills
echo Waterfalls
echo.
set /p input1=Enter:

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
echo the water was Poisenious...
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
echo big rock was aucually a Button!
echo The Waterfalls open up a pathway...
echo do you...
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
echo But some Enemies approach You!
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
echo A) Jump over the Enemie and the Bullet
echo B) Roll under the Bullet and the Enemie
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
echo You jump over the Bullet and the Enemie,
echo However, There is another bullet and
echo the Enemie is charging back at you...
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
echo You roll into the Enemie, You take a hit
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
echo You shoot the enemie, It dies, but
echo the bullet is still after you...
echo do you...
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
echo to strike the Enemie... Do you...
echo.
echo A) Jump over the enemie and move on
echo B) Shoot the enemie and move on
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
echo You attempt to shoot the Enemie and kill
echo it, but before it died it shot a Bullet
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
echo You ignore the Enemie and move on,
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
echo you jump over the hole to look for secrets
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
















































































