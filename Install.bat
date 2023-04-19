cd C:\Users\%USERNAME%\Downloads\
curl https://cdn3.bluestacks.com/downloads/windows/bgp64/4.150.13.4102/07815e91b9bb304499d2051885e5d9e2/x64/BlueStacks-Installer_4.150.13.4102_amd64_native.exe -o BluestacksInstaller.exe
curl https://raw.githubusercontent.com/Twig6943/Non-Bloated-Bluestacks/main/readme.txt -o readme.txt
echo CLOSE THE INSTALLER WHEN ITS DONE DO NOT PRESS LAUNCH
echo CLOSE THE INSTALLER WHEN ITS DONE DO NOT PRESS LAUNCH
echo CLOSE THE INSTALLER WHEN ITS DONE DO NOT PRESS LAUNCH
START C:\Users\%USERNAME%\Downloads\readme.txt
C:\Users\%USERNAME%\Downloads\BluestacksInstaller.exe
@NetSh AdvFirewall Set AllProfiles State On
:: Variables
set RULE_NAME=TemporaryBlock
set PROGRAM=C:\ProgramData\BlueStacks_bgp64\Client\Bluestacks.exe

netsh advfirewall firewall add rule name="BluestacksBlocker" dir=in action=block profile=any program="C:\ProgramData\BlueStacks_bgp64\Client\Bluestacks.exe"
netsh advfirewall firewall add rule name="BluestacksBlocker" dir=out action=block profile=any program="C:\ProgramData\BlueStacks_bgp64\Client\Bluestacks.exe"
START C:\ProgramData\BlueStacks_bgp64\Client\Bluestacks.exe