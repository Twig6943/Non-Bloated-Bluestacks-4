@echo off
color a
cd C:\Users\%USERNAME%\Downloads\
curl https://cdn3.bluestacks.com/downloads/windows/bgp64/4.280.4.4002/c0e5b72daaec1a9e063fa25504c24753/x64/BlueStacks-Installer_4.280.4.4002_amd64_native.exe -o BluestacksInstaller.exe
curl https://raw.githubusercontent.com/Twig6943/Non-Bloated-Bluestacks/main/wallpaper.jpg -o wallpaper.jpg
curl https://raw.githubusercontent.com/Twig6943/Non-Bloated-Bluestacks/main/offline.html -o offline.html
echo When the installer is done press Launch Please!!!
echo When the installer is done press Launch Please!!!
echo When the installer is done press Launch Please!!!
@NetSh AdvFirewall Set AllProfiles State On

:: Variables
set RULE_NAME=TemporaryBlock
set PROGRAM=C:\Program Files\BlueStacks_bgp64\Bluestacks.exe

netsh advfirewall firewall add rule name="BluestacksBlocker" dir=in action=block profile=any program="C:\Program Files\BlueStacks_bgp64\Bluestacks.exe"
netsh advfirewall firewall add rule name="BluestacksBlocker" dir=out action=block profile=any program="C:\Program Files\BlueStacks_bgp64\Bluestacks.exe"
C:\Users\%USERNAME%\Downloads\BluestacksInstaller.exe
move C:\Users\%USERNAME%\Downloads\wallpaper.png C:\ProgramData\BlueStacks_bgp64\Client\OfflineHtmlHome\images
move C:\Users\%USERNAME%\Downloads\offline.html C:\ProgramData\BlueStacks_bgp64\Client\OfflineHtmlHome
