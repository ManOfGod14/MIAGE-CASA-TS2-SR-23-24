@echo off

@REM Acception des de l'encodage ASCII ou ANSI
@REM chcp 1252

@REM Acception des de l'encodage UTF-8
chcp 65001

:menu
@REM Affichage du menu
echo Choisissez un option :
echo 1. Pour arrêter la machine
echo 2. Pour redemarrer la machine
echo 3. Pour mettre en veille la machine
echo 4. Pour quitter terminal

@REM Demander à l'utilisateur de faire un choix
choice /c 1234 /n /m "Veuillez choisir une option (1/2/3/4) : "
set choix=%ERRORLEVEL%

@REM traitement du choix de l'utilisateur
echo L'utilisateur a choisi : %choix%

if %choix% equ 1 (
    echo Arrêt cours...
    shutdown.exe -s -f -t 2
) else if %choix% equ 2 (
    echo Redemarrage cours...
    shutdown.exe -r -f -t 0
) else if %choix% equ 3 (
    echo Mise en veille cours...
    rundll32.exe powrprof.dll,SetSuspendSate 0,1,0
) else if %choix% equ 4 (
    echo Merci d'avoir utilisé le script...
    goto :eof
) else (
    echo Votre choisx est invalide...
    goto menu
)

@REM mettre en pause
pause
