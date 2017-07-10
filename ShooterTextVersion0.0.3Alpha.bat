@echo off
TITLE ---=====Mega-Man Alpha=====---

:startup
cls
echo ------=========Mega-Man Alpha=========-----------
echo Welcome to Megaman Text Alpha, Would you like to?
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
if %input0% equ Quit exit
if %input0% equ quit exit

goto startup



:Info
cls
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
echo 9. You have 3 lives, And 3 Checkpoints per stage
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
echo ------==============================------
set /p InputGO2WF1=Continue?:

if %inputGO2WF1% equ y goto WF1
if %inputGO2WF1% equ Y goto WF1
if %inputGO2WF1% equ n goto startup
if %inputGO2WF1% equ N goto startup

goto GameOver1WF1



























































