Write-host "`n"
Write-host "`n"
Write-host '__/\\\\\\\\\\\\\\\__/\\\\\\\\\\\\\\\__/\\\\\\\\\\\\\\\__/\\\\_____/\\\\\\\\\\\__________________________________________'
Write-host '__\/\\\///////////__\/\\\///////////__\/\\\///////////__\///\\___/\\\/////////\\\_______________________________________'
Write-host '___\/\\\_____________\/\\\_____________\/\\\______________/\\/___\//\\\______\///_______________________________________'
Write-host '____\/\\\\\\\\\\\_____\/\\\\\\\\\\\_____\/\\\\\\\\\\\_____\//______\////\\\_____________________________________________'
Write-host '_____\/\\\///////______\/\\\///////______\/\\\///////__________________\////\\\_________________________________________'
Write-host '______\/\\\_____________\/\\\_____________\/\\\____________________________\////\\\_____________________________________'
Write-host '_______\/\\\_____________\/\\\_____________\/\\\_____________________/\\\______\//\\\___________________________________'
Write-host '________\/\\\\\\\\\\\\\\\_\/\\\_____________\/\\\\\\\\\\\\\\\________\///\\\\\\\\\\\/___________________________________'
Write-host '_________\///////////////__\///______________\///////////////___________\///////////____________________________________'
Write-host '________________________________________________________________________________________________________________________'
Write-host '__/\\\\\\\\\\\\\\\______________________________/\\\\\\_____/\\\________________________________________________________'
Write-host '__\///////\\\/////______________________________\////\\\____\/\\\_______________________________________________________'
Write-host '_________\/\\\______________________________________\/\\\____\/\\\______________________________________________________'
Write-host '__________\/\\\___________/\\\\\________/\\\\\_______\/\\\____\/\\\____________/\\\\\_____/\\\____/\\\__________________'
Write-host '___________\/\\\_________/\\\///\\\____/\\\///\\\_____\/\\\____\/\\\\\\\\\____/\\\///\\\__\///\\\/\\\/__________________'
Write-host '____________\/\\\________/\\\__\//\\\__/\\\__\//\\\____\/\\\____\/\\\////\\\__/\\\__\//\\\___\///\\\/___________________'
Write-host '_____________\/\\\_______\//\\\__/\\\__\//\\\__/\\\_____\/\\\____\/\\\__\/\\\_\//\\\__/\\\_____/\\\/\\\_________________'
Write-host '______________\/\\\________\///\\\\\/____\///\\\\\/____/\\\\\\\\\_\/\\\\\\\\\___\///\\\\\/____/\\\/\///\\\______________'
Write-host '_______________\///___________\/////________\/////_____\/////////__\/////////______\/////_____\///____\///______________'
Write-host "`n"
Write-host "`n"
#https://patorjk.com/software/taag/#p=display&f=Slant%20Relief&t=EFE'S%0AToolbox


[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

$ApplicationForm = New-Object System.Windows.Forms.Form
$ApplicationForm.StartPosition = "CenterScreen"
$ApplicationForm.Topmost = $false 
$ApplicationForm.Size = "700,500"
$ApplicationForm.FormBorderStyle = 'Fixed3D'
$ApplicationForm.MinimizeBox = $false
$ApplicationForm.MaximizeBox = $false
$ApplicationForm.Text = "Efe's Toolbox"
$ApplicationForm.Topmost = $true

# tab Control Window
$FormTabControl = New-object System.Windows.Forms.TabControl 
$FormTabControl.Size = "681,500" 
$FormTabControl.Location = "0,0" 
$ApplicationForm.Controls.Add($FormTabControl)


# TAB 1
#----------------------------------------------


$Tab1 = New-object System.Windows.Forms.Tabpage
$Tab1.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab1.Name = "Tab1" 
$Tab1.Text = "Admin” 
$FormTabControl.Controls.Add($Tab1)

# label 1
$Tab1_label1 = New-Object System.Windows.Forms.Label
$Tab1_label1.Location = New-Object System.Drawing.Point(100,10)
$Tab1_label1.Font = New-Object System.Drawing.Font('verdana',16)
$Tab1_label1.AutoSize = $true
$Tab1_label1.ForeColor = "#000000"
$Tab1_label1.Text = ("cpl")
$Tab1.Controls.Add($Tab1_label1)

# label 2
$Tab1_label2 = New-Object System.Windows.Forms.Label
$Tab1_label2.Location = New-Object System.Drawing.Point(300,10)
$Tab1_label2.Font = New-Object System.Drawing.Font('verdana',16)
$Tab1_label2.AutoSize = $true
$Tab1_label2.ForeColor = "#000000"
$Tab1_label2.Text = ("msc")
$Tab1.Controls.Add($Tab1_label2)

# label 3
$Tab1_label3 = New-Object System.Windows.Forms.Label
$Tab1_label3.Location = New-Object System.Drawing.Point(515,10)
$Tab1_label3.Font = New-Object System.Drawing.Font('verdana',16)
$Tab1_label3.AutoSize = $true
$Tab1_label3.ForeColor = "#000000"
$Tab1_label3.Text = ("exe")
$Tab1.Controls.Add($Tab1_label3)


# Lots of buttons
$Tab1_appbutton1 = New-Object System.Windows.Forms.Button
$Tab1_appbutton1.Location = New-Object System.Drawing.Point(10,50)
$Tab1_appbutton1.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton1.Text = "Device Manager"
$Tab1_appbutton1.Add_Click({hdwwiz.cpl})
$tab1.Controls.Add($Tab1_appbutton1)

$Tab1_appbutton2 = New-Object System.Windows.Forms.Button
$Tab1_appbutton2.Location = New-Object System.Drawing.Point(10,75)
$Tab1_appbutton2.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton2.Text = "Internet Properties"
$Tab1_appbutton2.Add_Click({inetcpl.cpl})
$tab1.Controls.Add($Tab1_appbutton2)

$Tab1_appbutton3 = New-Object System.Windows.Forms.Button
$Tab1_appbutton3.Location = New-Object System.Drawing.Point(10,100)
$Tab1_appbutton3.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton3.Text = "Mouse Properties"
$Tab1_appbutton3.Add_Click({main.cpl})
$tab1.Controls.Add($Tab1_appbutton3)

$Tab1_appbutton4 = New-Object System.Windows.Forms.Button
$Tab1_appbutton4.Location = New-Object System.Drawing.Point(10,125)
$Tab1_appbutton4.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton4.Text = "Sound and Audio"
$Tab1_appbutton4.Add_Click({mmsys.cpl})
$tab1.Controls.Add($Tab1_appbutton4)

$Tab1_appbutton5 = New-Object System.Windows.Forms.Button
$Tab1_appbutton5.Location = New-Object System.Drawing.Point(10,150)
$Tab1_appbutton5.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton5.Text = "Network Properties"
$Tab1_appbutton5.Add_Click({ncpa.cpl})
$tab1.Controls.Add($Tab1_appbutton5)

$Tab1_appbutton6 = New-Object System.Windows.Forms.Button
$Tab1_appbutton6.Location = New-Object System.Drawing.Point(10,175)
$Tab1_appbutton6.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton6.Text = "User Accounts"
$Tab1_appbutton6.Add_Click({nusrmgr.cpl})
$tab1.Controls.Add($Tab1_appbutton6)


$Tab1_appbutton7 = New-Object System.Windows.Forms.Button
$Tab1_appbutton7.Location = New-Object System.Drawing.Point(10,200)
$Tab1_appbutton7.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton7.Text = "Time/Date"
$Tab1_appbutton7.Add_Click({timedate.cpl})
$tab1.Controls.Add($Tab1_appbutton7)


$Tab1_appbutton8 = New-Object System.Windows.Forms.Button
$Tab1_appbutton8.Location = New-Object System.Drawing.Point(10,225)
$Tab1_appbutton8.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton8.Text = "Windows Security Center"
$Tab1_appbutton8.Add_Click({wscui.cpl})
$tab1.Controls.Add($Tab1_appbutton8)


$Tab1_appbutton9 = New-Object System.Windows.Forms.Button
$Tab1_appbutton9.Location = New-Object System.Drawing.Point(10,250)
$Tab1_appbutton9.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton9.Text = "Automatic Updates"
$Tab1_appbutton9.Add_Click({wuaucpl.cpl})
$tab1.Controls.Add($Tab1_appbutton9)


$Tab1_appbutton10 = New-Object System.Windows.Forms.Button
$Tab1_appbutton10.Location = New-Object System.Drawing.Point(10,275)
$Tab1_appbutton10.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton10.Text = "Add/Remove Applications"
$Tab1_appbutton10.Add_Click({appwiz.cpl})
$tab1.Controls.Add($Tab1_appbutton10)


$Tab1_appbutton11 = New-Object System.Windows.Forms.Button
$Tab1_appbutton11.Location = New-Object System.Drawing.Point(10,250)
$Tab1_appbutton11.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton11.Text = "Display Properties"
$Tab1_appbutton11.Add_Click({desk.cpl})
$tab1.Controls.Add($Tab1_appbutton11)


$Tab1_appbutton12 = New-Object System.Windows.Forms.Button
$Tab1_appbutton12.Location = New-Object System.Drawing.Point(10,300)
$Tab1_appbutton12.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton12.Text = "Windows Firewall Properties"
$Tab1_appbutton12.Add_Click({firewall.cpl})
$tab1.Controls.Add($Tab1_appbutton12)


$Tab1_appbutton13 = New-Object System.Windows.Forms.Button
$Tab1_appbutton13.Location = New-Object System.Drawing.Point(10,325)
$Tab1_appbutton13.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton13.Text = "System Properties"
$Tab1_appbutton13.Add_Click({sysdm.cpl})
$tab1.Controls.Add($Tab1_appbutton13)


$Tab1_appbutton14 = New-Object System.Windows.Forms.Button
$Tab1_appbutton14.Location = New-Object System.Drawing.Point(225,50)
$Tab1_appbutton14.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton14.Text = "Authorization Manager"
$Tab1_appbutton14.Add_Click({azman.msc})
$tab1.Controls.Add($Tab1_appbutton14)


$Tab1_appbutton15 = New-Object System.Windows.Forms.Button
$Tab1_appbutton15.Location = New-Object System.Drawing.Point(225,75)
$Tab1_appbutton15.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton15.Text = "Certificate Manager"
$Tab1_appbutton15.Add_Click({certmgr.msc})
$tab1.Controls.Add($Tab1_appbutton15)


$Tab1_appbutton16 = New-Object System.Windows.Forms.Button
$Tab1_appbutton16.Location = New-Object System.Drawing.Point(225,100)
$Tab1_appbutton16.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton16.Text = "Computer Management"
$Tab1_appbutton16.Add_Click({compmgmt.msc})
$tab1.Controls.Add($Tab1_appbutton16)


$Tab1_appbutton17 = New-Object System.Windows.Forms.Button
$Tab1_appbutton17.Location = New-Object System.Drawing.Point(225,125)
$Tab1_appbutton17.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton17.Text = "Device Management"
$Tab1_appbutton17.Add_Click({devmgmt.msc})
$tab1.Controls.Add($Tab1_appbutton17)


$Tab1_appbutton18 = New-Object System.Windows.Forms.Button
$Tab1_appbutton18.Location = New-Object System.Drawing.Point(225,150)
$Tab1_appbutton18.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton18.Text = "Disk Management"
$Tab1_appbutton18.Add_Click({diskmgmt.msc})
$tab1.Controls.Add($Tab1_appbutton18)


$Tab1_appbutton19 = New-Object System.Windows.Forms.Button
$Tab1_appbutton19.Location = New-Object System.Drawing.Point(225,175)
$Tab1_appbutton19.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton19.Text = "Event Viewer"
$Tab1_appbutton19.Add_Click({eventvwr.msc})
$tab1.Controls.Add($Tab1_appbutton19)


$Tab1_appbutton20 = New-Object System.Windows.Forms.Button
$Tab1_appbutton20.Location = New-Object System.Drawing.Point(225,200)
$Tab1_appbutton20.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton20.Text = "Shared Folders Management"
$Tab1_appbutton20.Add_Click({fsmgmt.mscs})
$tab1.Controls.Add($Tab1_appbutton20)


$Tab1_appbutton21 = New-Object System.Windows.Forms.Button
$Tab1_appbutton21.Location = New-Object System.Drawing.Point(225,225)
$Tab1_appbutton21.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton21.Text = "Group Policy Editor"
$Tab1_appbutton21.Add_Click({gpedit.msc})
$tab1.Controls.Add($Tab1_appbutton21)


$Tab1_appbutton22 = New-Object System.Windows.Forms.Button
$Tab1_appbutton22.Location = New-Object System.Drawing.Point(225,250)
$Tab1_appbutton22.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton22.Text = "Group Policy Man Console"
$Tab1_appbutton22.Add_Click({gpmc.msc})
$tab1.Controls.Add($Tab1_appbutton22)


$Tab1_appbutton23 = New-Object System.Windows.Forms.Button
$Tab1_appbutton23.Location = New-Object System.Drawing.Point(225,275)
$Tab1_appbutton23.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton23.Text = "Local Users and Groups"
$Tab1_appbutton23.Add_Click({lusrmgr.msc})
$tab1.Controls.Add($Tab1_appbutton23)


$Tab1_appbutton24 = New-Object System.Windows.Forms.Button
$Tab1_appbutton24.Location = New-Object System.Drawing.Point(225,250)
$Tab1_appbutton24.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton24.Text = "Performance Monitor"
$Tab1_appbutton24.Add_Click({perfmon.msc})
$tab1.Controls.Add($Tab1_appbutton24)


$Tab1_appbutton25 = New-Object System.Windows.Forms.Button
$Tab1_appbutton25.Location = New-Object System.Drawing.Point(225,300)
$Tab1_appbutton25.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton25.Text = "Services"
$Tab1_appbutton25.Add_Click({services.msc})
$tab1.Controls.Add($Tab1_appbutton25)


$Tab1_appbutton26 = New-Object System.Windows.Forms.Button
$Tab1_appbutton26.Location = New-Object System.Drawing.Point(225,325)
$Tab1_appbutton26.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton26.Text = "Remote Desktops"
$Tab1_appbutton26.Add_Click({mstsc.exe})
$tab1.Controls.Add($Tab1_appbutton26)


$Tab1_appbutton27 = New-Object System.Windows.Forms.Button
$Tab1_appbutton27.Location = New-Object System.Drawing.Point(225,350)
$Tab1_appbutton27.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton27.Text = "WMI"
$Tab1_appbutton27.Add_Click({wmimgmt.msc})
$tab1.Controls.Add($Tab1_appbutton27)


$Tab1_appbutton28 = New-Object System.Windows.Forms.Button
$Tab1_appbutton28.Location = New-Object System.Drawing.Point(440,50)
$Tab1_appbutton28.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton28.Text = "Explorer"
$Tab1_appbutton28.Add_Click({explorer.exe})
$tab1.Controls.Add($Tab1_appbutton28)


$Tab1_appbutton29 = New-Object System.Windows.Forms.Button
$Tab1_appbutton29.Location = New-Object System.Drawing.Point(440,75)
$Tab1_appbutton29.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton29.Text = "Notepad"
$Tab1_appbutton29.Add_Click({notepad.exe})
$tab1.Controls.Add($Tab1_appbutton29)


$Tab1_appbutton30 = New-Object System.Windows.Forms.Button
$Tab1_appbutton30.Location = New-Object System.Drawing.Point(440,100)
$Tab1_appbutton30.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton30.Text = "Regedit"
$Tab1_appbutton30.Add_Click({regedit.exe})
$tab1.Controls.Add($Tab1_appbutton30)


$Tab1_appbutton31 = New-Object System.Windows.Forms.Button
$Tab1_appbutton31.Location = New-Object System.Drawing.Point(440,125)
$Tab1_appbutton31.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton31.Text = "Activation"
$Tab1_appbutton31.Add_Click({changepk.exe})
$tab1.Controls.Add($Tab1_appbutton31)


$Tab1_appbutton32 = New-Object System.Windows.Forms.Button
$Tab1_appbutton32.Location = New-Object System.Drawing.Point(440,150)
$Tab1_appbutton32.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton32.Text = "Character Map"
$Tab1_appbutton32.Add_Click({charmap.exe})
$tab1.Controls.Add($Tab1_appbutton32)


$Tab1_appbutton33 = New-Object System.Windows.Forms.Button
$Tab1_appbutton33.Location = New-Object System.Drawing.Point(440,175)
$Tab1_appbutton33.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton33.Text = "Disk Cleanup"
$Tab1_appbutton33.Add_Click({cleanmgr.exe})
$tab1.Controls.Add($Tab1_appbutton33)


$Tab1_appbutton34 = New-Object System.Windows.Forms.Button
$Tab1_appbutton34.Location = New-Object System.Drawing.Point(440,200)
$Tab1_appbutton34.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton34.Text = "Command Prompt"
$Tab1_appbutton34.Add_Click({cmd.exe})
$tab1.Controls.Add($Tab1_appbutton34)


$Tab1_appbutton35 = New-Object System.Windows.Forms.Button
$Tab1_appbutton35.Location = New-Object System.Drawing.Point(440,225)
$Tab1_appbutton35.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton35.Text = "Default Apps"
$Tab1_appbutton35.Add_Click({ComputerDefaults.exe})
$tab1.Controls.Add($Tab1_appbutton35)


$Tab1_appbutton36 = New-Object System.Windows.Forms.Button
$Tab1_appbutton36.Location = New-Object System.Drawing.Point(440,250)
$Tab1_appbutton36.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton36.Text = "Control Panel"
$Tab1_appbutton36.Add_Click({control.exe})
$tab1.Controls.Add($Tab1_appbutton36)


$Tab1_appbutton37 = New-Object System.Windows.Forms.Button
$Tab1_appbutton37.Location = New-Object System.Drawing.Point(440,275)
$Tab1_appbutton37.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton37.Text = "Magnify"
$Tab1_appbutton37.Add_Click({Magnify.exe})
$tab1.Controls.Add($Tab1_appbutton37)


$Tab1_appbutton38 = New-Object System.Windows.Forms.Button
$Tab1_appbutton38.Location = New-Object System.Drawing.Point(440,250)
$Tab1_appbutton38.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton38.Text = "Mobility Center"
$Tab1_appbutton38.Add_Click({mblctr.exe})
$tab1.Controls.Add($Tab1_appbutton38)


$Tab1_appbutton39 = New-Object System.Windows.Forms.Button
$Tab1_appbutton39.Location = New-Object System.Drawing.Point(440,300)
$Tab1_appbutton39.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton39.Text = "Resource Monitor"
$Tab1_appbutton39.Add_Click({resmon.exe})
$tab1.Controls.Add($Tab1_appbutton39)


$Tab1_appbutton40 = New-Object System.Windows.Forms.Button
$Tab1_appbutton40.Location = New-Object System.Drawing.Point(10,325)
$Tab1_appbutton40.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton40.Text = "Region"
$Tab1_appbutton40.Add_Click({intl.cpl})
$tab1.Controls.Add($Tab1_appbutton40)


$Tab1_appbutton41 = New-Object System.Windows.Forms.Button
$Tab1_appbutton41.Location = New-Object System.Drawing.Point(440,325)
$Tab1_appbutton41.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton41.Text = "DiskPart"
$Tab1_appbutton41.Add_Click({diskpart.exe})
$tab1.Controls.Add($Tab1_appbutton41)


$Tab1_appbutton42 = New-Object System.Windows.Forms.Button
$Tab1_appbutton42.Location = New-Object System.Drawing.Point(10,350)
$Tab1_appbutton42.Size = New-Object System.Drawing.Size(200,25)
$Tab1_appbutton42.Text = "Region"
$Tab1_appbutton42.Add_Click({intl.cpl})
$tab1.Controls.Add($Tab1_appbutton42)


$Tab1_appbutton43 = New-Object System.Windows.Forms.Button
$Tab1_appbutton43.Location = New-Object System.Drawing.Point(440,350)
$Tab1_appbutton43.Size = New-Object System.Drawing.Size(100,25)
$Tab1_appbutton43.Text = "Powershell"
$Tab1_appbutton43.Add_Click({Start-Process powershell})
$tab1.Controls.Add($Tab1_appbutton43)


$Tab1_appbutton44 = New-Object System.Windows.Forms.Button
$Tab1_appbutton44.Location = New-Object System.Drawing.Point(540,350)
$Tab1_appbutton44.Size = New-Object System.Drawing.Size(100,25)
$Tab1_appbutton44.Text = "Adimin"
$Tab1_appbutton44.Add_Click({powershell start-process powershell -verb runas})
$tab1.Controls.Add($Tab1_appbutton44)


# TAB 2
#----------------------------------------------


$Tab2 = New-object System.Windows.Forms.Tabpage
$Tab2.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab2.Name = "Tab2" 
$Tab2.Text = "Config” 
$FormTabControl.Controls.Add($Tab2)

# label
$Tab2_label1 = New-Object System.Windows.Forms.Label
$Tab2_label1.Location = New-Object System.Drawing.Point(75,10)
$Tab2_label1.Font = New-Object System.Drawing.Font('verdana',14)
$Tab2_label1.AutoSize = $true
$Tab2_label1.ForeColor = "#000000"
$Tab2_label1.Text = ("Package`nManagers")
$Tab2.Controls.Add($Tab2_label1)

# label
$Tab2_label2 = New-Object System.Windows.Forms.Label
$Tab2_label2.Location = New-Object System.Drawing.Point(275,10)
$Tab2_label2.Font = New-Object System.Drawing.Font('verdana',14)
$Tab2_label2.AutoSize = $true
$Tab2_label2.ForeColor = "#000000"
$Tab2_label2.Text = ("Optional`nFeatures")
$Tab2.Controls.Add($Tab2_label2)

# label
$Tab2_label3 = New-Object System.Windows.Forms.Label
$Tab2_label3.Location = New-Object System.Drawing.Point(515,10)
$Tab2_label3.Font = New-Object System.Drawing.Font('verdana',14)
$Tab2_label3.AutoSize = $true
$Tab2_label3.ForeColor = "#000000"
$Tab2_label3.Text = ("Pro`nApps")
$Tab2.Controls.Add($Tab2_label3)

#Tweaks Package manager 
$Tab2_pkgmgrbutton1 = New-Object System.Windows.Forms.Button
$Tab2_pkgmgrbutton1.Location = New-Object System.Drawing.Point(10,75)
$Tab2_pkgmgrbutton1.Size = New-Object System.Drawing.Size (200,25)
$Tab2_pkgmgrbutton1.Text = "Winget"
$Tab2_pkgmgrbutton1.Add_Click({start-process powershell -verb runas {
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
mkdir $env:temp\c2r; Set-Location $env:temp\c2r
Invoke-WebRequest -o $env:temp\c2r\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle `
https://github.com/microsoft/winget-cli/releases/download/v1.2.10271/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
Add-AppPackage -Path $env:temp\c2r\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
pause
}})
$Tab2.Controls.Add($Tab2_pkgmgrbutton1)

$Tab2_pkgmgrbutton2 = New-Object System.Windows.Forms.Button
$Tab2_pkgmgrbutton2.Location = New-Object System.Drawing.Point(10,100)
$Tab2_pkgmgrbutton2.Size = New-Object System.Drawing.Size (200,25)
$Tab2_pkgmgrbutton2.Text = "Scoop"
$Tab2_pkgmgrbutton2.Add_Click({start-process powershell -verb runas {
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod get.scoop.sh | Invoke-Expression
}})
$Tab2.Controls.Add($Tab2_pkgmgrbutton2)

$Tab2_pkgmgrbutton3 = New-Object System.Windows.Forms.Button
$Tab2_pkgmgrbutton3.Location = New-Object System.Drawing.Point(10,125)
$Tab2_pkgmgrbutton3.Size = New-Object System.Drawing.Size (200,25)
$Tab2_pkgmgrbutton3.Text = "Chocolatey"
$Tab2_pkgmgrbutton3.Add_Click({start-process powershell -verb runas {
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}})
$Tab2.Controls.Add($Tab2_pkgmgrbutton3)

$Tab2_pkgmgrbutton4 = New-Object System.Windows.Forms.Button
$Tab2_pkgmgrbutton4.Location = New-Object System.Drawing.Point(10,150)
$Tab2_pkgmgrbutton4.Size = New-Object System.Drawing.Size (200,25)
$Tab2_pkgmgrbutton4.Text = "Reinstall MS Store"
$Tab2_pkgmgrbutton4.Add_Click({start-process powershell -verb runas {
Get-AppxPackage -allusers Microsoft.WindowsStore | ForEach-Object {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”}
}})
$Tab2.Controls.Add($Tab2_pkgmgrbutton4)

$Tab2_pkgmgrbutton5 = New-Object System.Windows.Forms.Button
$Tab2_pkgmgrbutton5.Location = New-Object System.Drawing.Point(10,175)
$Tab2_pkgmgrbutton5.Size = New-Object System.Drawing.Size (200,25)
$Tab2_pkgmgrbutton5.Text = "Remove MS Store Apps"
$Tab2_pkgmgrbutton5.Add_Click({start-process powershell -verb runas {
Get-AppPackage | Remove-AppPackage
}})
$Tab2.Controls.Add($Tab2_pkgmgrbutton5)




# tweak buttons
$Tab2_optfeaturebutton1 = New-Object System.Windows.Forms.Button
$Tab2_optfeaturebutton1.Location = New-Object System.Drawing.Point(225,75)
$Tab2_optfeaturebutton1.Size = New-Object System.Drawing.Size (200,25)
$Tab2_optfeaturebutton1.Text = "All .NET Framework (2,3,4)"
$Tab2_optfeaturebutton1.Add_Click({start-process powershell -verb runas {
Enable-WindowsOptionalFeature -Online -FeatureName "NetFx4-AdvSrvs" -All
Enable-WindowsOptionalFeature -Online -FeatureName "NetFx3" -All
}})
$Tab2.Controls.Add($Tab2_optfeaturebutton1)

$Tab2_optfeaturebutton2 = New-Object System.Windows.Forms.Button
$Tab2_optfeaturebutton2.Location = New-Object System.Drawing.Point(225,100)
$Tab2_optfeaturebutton2.Size = New-Object System.Drawing.Size (200,25)
$Tab2_optfeaturebutton2.Text = "Hyper-V"
$Tab2_optfeaturebutton2.Add_Click({start-process powershell -verb runas {
Enable-WindowsOptionalFeature -Online -FeatureName "HypervisorPlatform" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-All" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Tools-All" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Management-PowerShell" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Hypervisor" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Services" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Management-Clients" -All
cmd /c bcdedit /set hypervisorschedulertype classic
Write-Host "HyperV is now installed and configured. Please Reboot before using."
}})
$Tab2.Controls.Add($Tab2_optfeaturebutton2)

$Tab2_optfeaturebutton3 = New-Object System.Windows.Forms.Button
$Tab2_optfeaturebutton3.Location = New-Object System.Drawing.Point(225,125)
$Tab2_optfeaturebutton3.Size = New-Object System.Drawing.Size (200,25)
$Tab2_optfeaturebutton3.Text = "legacy Media"
$Tab2_optfeaturebutton3.Add_Click({start-process powershell -verb runas {
Enable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer" -All
Enable-WindowsOptionalFeature -Online -FeatureName "MediaPlayback" -All
Enable-WindowsOptionalFeature -Online -FeatureName "DirectPlay" -All
Enable-WindowsOptionalFeature -Online -FeatureName "LegacyComponents" -All
}})
$Tab2.Controls.Add($Tab2_optfeaturebutton3)

$Tab2_optfeaturebutton4 = New-Object System.Windows.Forms.Button
$Tab2_optfeaturebutton4.Location = New-Object System.Drawing.Point(225,150)
$Tab2_optfeaturebutton4.Size = New-Object System.Drawing.Size (200,25)
$Tab2_optfeaturebutton4.Text = "WSL"
$Tab2_optfeaturebutton4.Add_Click({start-process powershell -verb runas {
Enable-WindowsOptionalFeature -Online -FeatureName "VirtualMachinePlatform" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -All
Write-Host "WSL is now installed and configured. Please Reboot before using."
}})
$Tab2.Controls.Add($Tab2_optfeaturebutton4)

$Tab2_optfeaturebutton5 = New-Object System.Windows.Forms.Button
$Tab2_optfeaturebutton5.Location = New-Object System.Drawing.Point(225,175)
$Tab2_optfeaturebutton5.Size = New-Object System.Drawing.Size (200,25)
$Tab2_optfeaturebutton5.Text = "NFS"
$Tab2_optfeaturebutton5.Add_Click({start-process powershell -verb runas {
Enable-WindowsOptionalFeature -Online -FeatureName "ServicesForNFS-ClientOnly" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "ClientForNFS-Infrastructure" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "NFS-Administration" -All -NoRestart
nfsadmin client stop
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default" -Name "AnonymousUID" -Type DWord -Value 0
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default" -Name "AnonymousGID" -Type DWord -Value 0
nfsadmin client start
nfsadmin client localhost config fileaccess=755 SecFlavors=+sys -krb5 -krb5i
Write-Host "NFS is now setup for user based NFS mounts"
}})
$Tab2.Controls.Add($Tab2_optfeaturebutton5)

$Tab2_optfeaturebutton6 = New-Object System.Windows.Forms.Button
$Tab2_optfeaturebutton6.Location = New-Object System.Drawing.Point(225,200)
$Tab2_optfeaturebutton6.Size = New-Object System.Drawing.Size (200,25)
$Tab2_optfeaturebutton6.Text = "Telnet"
$Tab2_optfeaturebutton6.Add_Click({start-process powershell -verb runas {
dism /online /Enable-Feature /FeatureName:TelnetClient
}})
$Tab2.Controls.Add($Tab2_optfeaturebutton6)


$Tab2_probutton1 = New-Object System.Windows.Forms.Button
$Tab2_probutton1.Location = New-Object System.Drawing.Point(440,75)
$Tab2_probutton1.Size = New-Object System.Drawing.Size (200,25)
$Tab2_probutton1.Text = "Install User Manager"
$Tab2_probutton1.Add_Click({start-process powershell -verb runas {
mkdir 'C:\Program Files\usermanager'
Start-BitsTransfer -Source "https://github.com/proviq/AccountManagement/raw/master/lusrmgr/bin/Release/lusrmgr.exe" -Destination "C:\Program Files\usermanager"
$SourceFilePath = "C:\Program Files\usermanager\lusrmgr.exe"
$ShortcutPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\lusrmgr.lnk"
$WScriptObj = New-Object -ComObject ("WScript.Shell")
$shortcut = $WscriptObj.CreateShortcut($ShortcutPath)
$shortcut.TargetPath = $SourceFilePath
$shortcut.Save()
}})
$Tab2.Controls.Add($Tab2_probutton1)

$Tab2_probutton2 = New-Object System.Windows.Forms.Button
$Tab2_probutton2.Location = New-Object System.Drawing.Point(440,100)
$Tab2_probutton2.Size = New-Object System.Drawing.Size (200,25)
$Tab2_probutton2.Text = "User Manager"
$Tab2_probutton2.Add_Click({& 'C:\Program Files\usermanager\lusrmgr.exe'})
$Tab2.Controls.Add($Tab2_probutton2)

#$Tab2_probutton3 = New-Object System.Windows.Forms.Button
#$Tab2_probutton3.Location = New-Object System.Drawing.Point(440,125)
#$Tab2_probutton3.Size = New-Object System.Drawing.Size (200,25)
#$Tab2_probutton3.Text = "GPedit"
#$Tab2_probutton3.Add_Click({start-process cmd -verb runas {
#Push-Location "%~dp0" 
#Get-ChildItem /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >List.txt 
#Get-ChildItem /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>List.txt 
#i#f( /f %%i in ('findstr /i . List.txt 2^>nul')) {dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i" }
#pause
#}})
#$Tab2.Controls.Add($Tab2_probutton3)

# window label
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(50,225)
$label.AutoSize = $true
$label.Font = New-Object System.Drawing.Font('verdana',16)
$label.ForeColor = "#000000"
$label.Text = ("Rename`n    PC")
$tab2.Controls.Add($label)

$Tab2_textBox1 = New-Object System.Windows.Forms.TextBox
$Tab2_textBox1.Location = New-Object System.Drawing.Point(10,300)
$Tab2_textBox1.Size = New-Object System.Drawing.Size(200,100)
$tab2.Controls.Add($Tab2_textBox1)

Write-Host $Tab2_textBox1.Text

$tab2_renamebutton1 = New-Object System.Windows.Forms.Button
$tab2_renamebutton1.Location = New-Object System.Drawing.Point(75,350)
$tab2_renamebutton1.Size = New-Object System.Drawing.Size(75,25)
$tab2_renamebutton1.Text = "Rename"
$tab2_renamebutton1.Add_Click({Rename-Computer -NewName $textBox1.Text -Restart})
$tab2.Controls.Add($tab2_renamebutton1)



# TAB 3
#----------------------------------------------


$Tab3 = New-object System.Windows.Forms.Tabpage
$Tab3.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab3.Name = "Tab3" 
$Tab3.Text = "Activate” 
$FormTabControl.Controls.Add($Tab3)

# window label
$Tab3_label1 = New-Object System.Windows.Forms.Label
$Tab3_label1.Location = New-Object System.Drawing.Point(75,10)
$Tab3_label1.AutoSize = $true
$Tab3_label1.Font = New-Object System.Drawing.Font('verdana',16)
$Tab3_label1.ForeColor = "#000000"
$Tab3_label1.Text = ("Choose the Windows Edition you have installed")
$Tab3.Controls.Add($Tab3_label1)

# Activate Win 10 Home
$Tab3_actiavtebutton1 = New-Object System.Windows.Forms.Button
$Tab3_actiavtebutton1.Location = New-Object System.Drawing.Point(10,50)
$Tab3_actiavtebutton1.Size = New-Object System.Drawing.Size(320,25)
$Tab3_actiavtebutton1.Text = "Home"
$Tab3_actiavtebutton1.add_click({start-process powershell -verb runas {
slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 ; slmgr /skms kms8.msguides.com ; slmgr /ato
}})
$Tab3.Controls.add($Tab3_actiavtebutton1)

# Activate Win 10 Home N
$Tab3_actiavtebutton2 = New-Object System.Windows.Forms.Button
$Tab3_actiavtebutton2.Location = New-Object System.Drawing.Point(10,75)
$Tab3_actiavtebutton2.Size = New-Object System.Drawing.Size(320,25)
$Tab3_actiavtebutton2.Text = "Home N"
$Tab3_actiavtebutton2.add_click({start-process powershell -verb runas {
slmgr /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM ; slmgr /skms kms8.msguides.com ; slmgr /ato
}})
$Tab3.Controls.add($Tab3_actiavtebutton2)

# Activate Win 10 PRO
$Tab3_actiavtebutton3 = New-Object System.Windows.Forms.Button
$Tab3_actiavtebutton3.Location = New-Object System.Drawing.Point(340,50)
$Tab3_actiavtebutton3.Size = New-Object System.Drawing.Size(320,25)
$Tab3_actiavtebutton3.Text = "Pro"
$Tab3_actiavtebutton3.add_click({start-process powershell -verb runas {
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX ; slmgr /skms kms8.msguides.com ; slmgr /ato
}})
$Tab3.Controls.add($Tab3_actiavtebutton3)

# Activate Win 10 PRO N
$Tab3_actiavtebutton4 = New-Object System.Windows.Forms.Button
$Tab3_actiavtebutton4.Location = New-Object System.Drawing.Point(340,75)
$Tab3_actiavtebutton4.Size = New-Object System.Drawing.Size(320,25)
$Tab3_actiavtebutton4.Text = "Pro N"
$Tab3_actiavtebutton4.add_click({start-process powershell -verb runas {
slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 ; slmgr /skms kms8.msguides.com ; slmgr /ato
}})
$Tab3.Controls.add($Tab3_actiavtebutton4)

# Activate Win 10 EDU
$Tab3_actiavtebutton5 = New-Object System.Windows.Forms.Button
$Tab3_actiavtebutton5.Location = New-Object System.Drawing.Point(340,100)
$Tab3_actiavtebutton5.Size = New-Object System.Drawing.Size(320,25)
$Tab3_actiavtebutton5.Text = "Education"
$Tab3_actiavtebutton5.add_click({start-process powershell -verb runas {
slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 ; slmgr /skms kms8.msguides.com ; slmgr /ato
}})
$Tab3.Controls.add($Tab3_actiavtebutton5)

# Activate Win 10 EDU N
$Tab3_actiavtebutton6 = New-Object System.Windows.Forms.Button
$Tab3_actiavtebutton6.Location = New-Object System.Drawing.Point(340,125)
$Tab3_actiavtebutton6.Size = New-Object System.Drawing.Size(320,25)
$Tab3_actiavtebutton6.Text = "Education N"
$Tab3_actiavtebutton6.add_click({start-process powershell -verb runas {
slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ ; slmgr /skms kms8.msguides.com ; slmgr /ato
}})
$Tab3.Controls.add($Tab3_actiavtebutton6)

# Activate Win 10 ENT
$Tab3_actiavtebutton7 = New-Object System.Windows.Forms.Button
$Tab3_actiavtebutton7.Location = New-Object System.Drawing.Point(340,150)
$Tab3_actiavtebutton7.Size = New-Object System.Drawing.Size(320,25)
$Tab3_actiavtebutton7.Text = "Enterprise"
$Tab3_actiavtebutton7.add_click({start-process powershell -verb runas {
shutdslmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 ; slmgr /skms kms8.msguides.com ; slmgr /ato
}})
$Tab3.Controls.add($Tab3_actiavtebutton7)

# Activate Win 10 ENT N
$Tab3_actiavtebutton8 = New-Object System.Windows.Forms.Button
$Tab3_actiavtebutton8.Location = New-Object System.Drawing.Point(340,175)
$Tab3_actiavtebutton8.Size = New-Object System.Drawing.Size(320,25)
$Tab3_actiavtebutton8.Text = "Enterprise N"
$Tab3_actiavtebutton8.add_click({start-process powershell -verb runas {
slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 ; slmgr /skms kms8.msguides.com ; slmgr /ato
}})
$Tab3.Controls.add($Tab3_actiavtebutton8)

# Activate Home Single Language
$Tab3_actiavtebutton9 = New-Object System.Windows.Forms.Button
$Tab3_actiavtebutton9.Location = New-Object System.Drawing.Point(10,100)
$Tab3_actiavtebutton9.Size = New-Object System.Drawing.Size(320,25)
$Tab3_actiavtebutton9.Text = "Home Single Language"
$Tab3_actiavtebutton9.add_click({start-process powershell -verb runas {
slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH ; slmgr /skms kms8.msguides.com ; slmgr /ato
}})
$Tab3.Controls.add($Tab3_actiavtebutton9)

# Activate Home Country Specific
$Tab3_actiavtebutton10 = New-Object System.Windows.Forms.Button
$Tab3_actiavtebutton10.Location = New-Object System.Drawing.Point(10,125)
$Tab3_actiavtebutton10.Size = New-Object System.Drawing.Size(320,25)
$Tab3_actiavtebutton10.Text = "Home Country Specific"
$Tab3_actiavtebutton10.add_click({start-process powershell -verb runas {
slmgr /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR ; slmgr /skms kms8.msguides.com ; slmgr /ato
}})
$Tab3.Controls.add($Tab3_actiavtebutton10)

# Clear Product Key
$Tab3_actiavtebutton11 = New-Object System.Windows.Forms.Button
$Tab3_actiavtebutton11.Location = New-Object System.Drawing.Point(10,150)
$Tab3_actiavtebutton11.Size = New-Object System.Drawing.Size(320,50)
$Tab3_actiavtebutton11.Text = "Clear Product Key"
$Tab3_actiavtebutton11.add_click({start-process powershell -verb runas {
slmgr /upk ; slmgr /cpky ; slmgr /rearm
}})
$Tab3.Controls.add($Tab3_actiavtebutton11)


# TAB 4
#----------------------------------------------


$Tab4 = New-object System.Windows.Forms.Tabpage
$Tab4.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab4.Name = "Tab4" 
$Tab4.Text = "Power” 
$FormTabControl.Controls.Add($Tab4)

# window label
$Tab4_label1 = New-Object System.Windows.Forms.Label
$Tab4_label1.Location = New-Object System.Drawing.Point(250,10)
$Tab4_label1.AutoSize = $true
$Tab4_label1.Font = New-Object System.Drawing.Font('verdana',16)
$Tab4_label1.ForeColor = "#000000"
$Tab4_label1.Text = ("Power Settings")
$Tab4.Controls.Add($Tab4_label1)

# window label
#$Tab4_label2 = New-Object System.Windows.Forms.Label
#$Tab4_label2.Location = New-Object System.Drawing.Point(300,10)
#$Tab4_label2.AutoSize = $true
#$Tab4_label2.Font = New-Object System.Drawing.Font('verdana',16)
#$Tab4_label2.ForeColor = "#000000"
#$Tab4_label2.Text = ("Power Settings")
#$Tab4.Controls.Add($Tab4_label2)

$Tab4_powerbutton1 = New-Object System.Windows.Forms.Button
$Tab4_powerbutton1.Location = New-Object System.Drawing.Point(10,50)
$Tab4_powerbutton1.Size = New-Object System.Drawing.Size(320,25)
$Tab4_powerbutton1.Text = "Reboot"
$Tab4_powerbutton1.add_click({shutdown /r})
$Tab4.Controls.add($Tab4_powerbutton1)

$Tab4_powerbutton2 = New-Object System.Windows.Forms.Button
$Tab4_powerbutton2.Location = New-Object System.Drawing.Point(10,75)
$Tab4_powerbutton2.Size = New-Object System.Drawing.Size(320,25)
$Tab4_powerbutton2.Text = "Shutdown"
$Tab4_powerbutton2.add_click({shutdown /s})
$Tab4.Controls.add($Tab4_powerbutton2)

$Tab4_powerbutton3 = New-Object System.Windows.Forms.Button
$Tab4_powerbutton3.Location = New-Object System.Drawing.Point(10,100)
$Tab4_powerbutton3.Size = New-Object System.Drawing.Size(320,25)
$Tab4_powerbutton3.Text = "Abort"
$Tab4_powerbutton3.add_click({shutdown /a})
$Tab4.Controls.add($Tab4_powerbutton3)

$Tab4_powerbutton4 = New-Object System.Windows.Forms.Button
$Tab4_powerbutton4.Location = New-Object System.Drawing.Point(10,125)
$Tab4_powerbutton4.Size = New-Object System.Drawing.Size(320,25)
$Tab4_powerbutton4.Text = "Force Reboot"
$Tab4_powerbutton4.add_click({shutdown /r /f})
$Tab4.Controls.add($Tab4_powerbutton4)

$Tab4_powerbutton5 = New-Object System.Windows.Forms.Button
$Tab4_powerbutton5.Location = New-Object System.Drawing.Point(10,150)
$Tab4_powerbutton5.Size = New-Object System.Drawing.Size(320,25)
$Tab4_powerbutton5.Text = "Force Shutdown"
$Tab4_powerbutton5.add_click({shutdown /s /f})
$Tab4.Controls.add($Tab4_powerbutton5)

$Tab4_powerbutton6 = New-Object System.Windows.Forms.Button
$Tab4_powerbutton6.Location = New-Object System.Drawing.Point(10,175)
$Tab4_powerbutton6.Size = New-Object System.Drawing.Size(320,25)
$Tab4_powerbutton6.Text = "Log Out"
$Tab4_powerbutton6.add_click({shutdown /l})
$Tab4.Controls.add($Tab4_powerbutton6)

$Tab4_powerbutton7 = New-Object System.Windows.Forms.Button
$Tab4_powerbutton7.Location = New-Object System.Drawing.Point(10,200)
$Tab4_powerbutton7.Size = New-Object System.Drawing.Size(320,25)
$Tab4_powerbutton7.Text = "Remote Shutdown"
$Tab4_powerbutton7.add_click({shutdown /i})
$Tab4.Controls.add($Tab4_powerbutton7)

$Tab4_powerbutton8 = New-Object System.Windows.Forms.Button
$Tab4_powerbutton8.Location = New-Object System.Drawing.Point(340,50)
$Tab4_powerbutton8.Size = New-Object System.Drawing.Size(320,25)
$Tab4_powerbutton8.Text = "Power Options"
$Tab4_powerbutton8.add_click({powercfg.cpl})
$Tab4.Controls.add($Tab4_powerbutton8)

$Tab4_powerbutton9 = New-Object System.Windows.Forms.Button
$Tab4_powerbutton9.Location = New-Object System.Drawing.Point(340,75)
$Tab4_powerbutton9.Size = New-Object System.Drawing.Size(320,25)
$Tab4_powerbutton9.Text = "Mobility Center"
$Tab4_powerbutton9.add_click({mblctr.exe})
$Tab4.Controls.add($Tab4_powerbutton9)

$Tab4_powerbutton10 = New-Object System.Windows.Forms.Button
$Tab4_powerbutton10.Location = New-Object System.Drawing.Point(340,100)
$Tab4_powerbutton10.Size = New-Object System.Drawing.Size(320,25)
$Tab4_powerbutton10.Text = "Boot Options"
$Tab4_powerbutton10.add_click({cmd /c msconfig.exe})
$Tab4.Controls.add($Tab4_powerbutton10)

$Tab4_powerbutton11 = New-Object System.Windows.Forms.Button
$Tab4_powerbutton11.Location = New-Object System.Drawing.Point(340,125)
$Tab4_powerbutton11.Size = New-Object System.Drawing.Size(320,25)
$Tab4_powerbutton11.Text = "Battery Options"
$Tab4_powerbutton11.add_click({ms-settings:batterysaver})
$Tab4.Controls.add($Tab4_powerbutton11)


# TAB 5
#----------------------------------------------

$tab5 = New-object System.Windows.Forms.Tabpage
$Tab5.DataBindings.DefaultDataSourceUpdateMode = 0 
$tab5.Name = "tab5" 
$tab5.Text = "Scoop” 
$FormTabControl.Controls.Add($tab5)


# window label
$Tab5_label1 = New-Object System.Windows.Forms.Label
$Tab5_label1.Location = New-Object System.Drawing.Point(225,10)
$Tab5_label1.AutoSize = $true
$Tab5_label1.Font = New-Object System.Drawing.Font('verdana',16) 
#System.Drawing.Font('arial',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Tab5_label1.ForeColor = "#000000"
$Tab5_label1.Text = ("Install applications")
$Tab5.Controls.Add($Tab5_label1)

$Tab5_installerbutton1 = New-Object System.Windows.Forms.Button
$Tab5_installerbutton1.Location = New-Object System.Drawing.Point(10,10)
$Tab5_installerbutton1.Size = New-Object System.Drawing.Size(100,25)
$Tab5_installerbutton1.Text = "Install Scoop"
$Tab5_installerbutton1.add_click({ Start-Process powershell {
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser} ; Start-Process powershell { Invoke-RestMethod get.scoop.sh | Invoke-Expression}
})
$Tab5.Controls.add($Tab5_installerbutton1)

$Tab5_installerbutton2 = New-Object System.Windows.Forms.Button
$Tab5_installerbutton2.Location = New-Object System.Drawing.Point(110,10)
$Tab5_installerbutton2.Size = New-Object System.Drawing.Size(100,25)
$Tab5_installerbutton2.Text = "Update Scoop"
$Tab5_installerbutton2.add_click({scoop update -a})
$Tab5.Controls.add($Tab5_installerbutton2)


#The part that does the installing

$handler_Tab5_installbutton1_Click= {
	$Tab5_Statusbox1.Items.Clear();
	if ($Tab5_checkBox1.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing firefox..."  ) ; scoop bucket add extras ; scoop install firefox }
	if ($Tab5_checkBox2.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing librewolf..."  ) ; scoop bucket add extras ; scoop install librewolf }
	if ($Tab5_checkBox3.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing brave..."  ) ; scoop bucket add extras ; scoop install brave }
	if ($Tab5_checkBox4.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing googlechrome..."  ) ; scoop bucket add extras ; scoop install googlechrome }
	if ($Tab5_checkBox5.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing chromium..."  ) ; scoop bucket add extras ; scoop install chromium }
	if ($Tab5_checkBox6.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing mpv..."  ) ; scoop bucket add extras ; scoop install mpv }
	if ($Tab5_checkBox7.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing vlc..."  ) ; scoop bucket add extras ; scoop install vlc}
	if ($Tab5_checkBox8.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing audacity..."  ) ; scoop bucket add extras ; scoop install audacity }
	if ($Tab5_checkBox9.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing eartrumpet..."  ) ; scoop bucket add extras ; scoop install eartrumpet }
	if ($Tab5_checkBox10.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing handbrake..."  ) ; scoop bucket add extras ; scoop install handbrake }
	if ($Tab5_checkBox11.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing flameshot..."  ) ; scoop bucket add extras ; scoop install flameshot }
	if ($Tab5_checkBox12.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing obs-studio..."  ) ; scoop bucket add extras ; scoop install obs-studio }
	if ($Tab5_checkBox13.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing blender..."  ) ; scoop bucket add extras ; scoop install blender }
	if ($Tab5_checkBox14.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing gimp..."  ) ; scoop bucket add extras ; scoop install gimp }
	if ($Tab5_checkBox15.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing krita..."  ) ; scoop bucket add extras ; scoop install krita }
	if ($Tab5_checkBox16.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing inkscape..."  ) ; scoop bucket add extras ; scoop install inkscape }
	if ($Tab5_checkBox17.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing soundnode..."  ) ; scoop bucket add extras ; scoop install soundnode }
	if ($Tab5_checkBox18.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing spotify..."  ) ; scoop bucket add extras ; scoop install spotify }
	if ($Tab5_checkBox19.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing youtube-music..."  ) ; scoop bucket add extras ; scoop install youtube-music }
	if ($Tab5_checkBox20.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing cider..."  ) ; scoop bucket add extras ; scoop install cider }
	if ($Tab5_checkBox21.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing deluge..."  ) ; scoop bucket add extras ; scoop install deluge }
	if ($Tab5_checkBox22.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing picotorrent..."  ) ; scoop bucket add extras ; scoop install picotorrent }
	if ($Tab5_checkBox23.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing qbittorrent..."  ) ; scoop bucket add extras ; scoop install qbittorrent }
	if ($Tab5_checkBox24.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing transmission..."  ) ; scoop bucket add extras ; scoop install transmission }
	if ($Tab5_checkBox25.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing zoom..."  ) ; scoop bucket add extras ; scoop install zoom }
	if ($Tab5_checkBox26.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing microsoft-teams..."  ) ; scoop bucket add extras ; scoop install microsoft-teams }
	if ($Tab5_checkBox27.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing telegram..."  ) ; scoop bucket add extras ; scoop install telegram }
	if ($Tab5_checkBox28.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing signal..."  ) ; scoop bucket add extras ; scoop install signal }
	if ($Tab5_checkBox29.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing discord..."  ) ; scoop bucket add extras  ; scoop install discord }
	if ($Tab5_checkBox30.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing caprine..."  ) ; scoop bucket add extras  ; scoop install caprine }
	if ($Tab5_checkBox31.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing libreoffice..."  ) ; scoop bucket add extras  ; scoop install libreoffice }
	if ($Tab5_checkBox32.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing onlyoffice-desktopeditors..."  ) ; scoop bucket add extras  ; scoop install onlyoffice-desktopeditors }
	if ($Tab5_checkBox33.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing office-365-apps-np..."  ) ; scoop bucket add nonportable  ; scoop install office-365-apps-np }
	if ($Tab5_checkBox34.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing foxit-pdf-reader..."  ) ; scoop bucket add extras  ; scoop install foxit-pdf-reader }
	if ($Tab5_checkBox35.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing qalculate..."  ) ; scoop bucket add extras  ; scoop install qalculate }
	if ($Tab5_checkBox36.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing steam..."  ) ; scoop bucket add versions  ; scoop install steam }
	if ($Tab5_checkBox37.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing epicgameslauncher..."  ) ; scoop bucket add chawyehsu_dorado https://github.com/chawyehsu/dorado  ; scoop install epicgameslauncher }
	if ($Tab5_checkBox38.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing gog-galaxy..."  ) ; scoop bucket add anderlli0053_DEV-tools https://github.com/anderlli0053/DEV-tools  ; scoop install gog-galaxy }
	if ($Tab5_checkBox39.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing itch..."  ) ; scoop bucket add games  ; scoop install itch }
	if ($Tab5_checkBox40.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing polymc..."  ) ; scoop bucket add games  ; scoop install polymc }
	if ($Tab5_checkBox41.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing dolphin..."  ) ; scoop bucket add games  ; scoop install dolphin }
	if ($Tab5_checkBox42.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing citra..."  ) ; scoop bucket add games  ; scoop install citra }
	if ($Tab5_checkBox43.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing yuzu..."  ) ; scoop bucket add games  ; scoop install yuzu }
	if ($Tab5_checkBox44.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing dosbox-x..."  ) ; scoop bucket add extras  ; scoop install dosbox-x }
	if ($Tab5_checkBox45.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing loot..."  ) ; scoop bucket add games  ; scoop install loot }
	if ($Tab5_checkBox46.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing mo2..."  ) ; scoop bucket add games  ; scoop install mo2 }
	if ($Tab5_checkBox47.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing vortex..."  ) ; scoop bucket add games  ; scoop install vortex }
	if ($Tab5_checkBox48.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing logitech-gaming-software-np..."  ) ; scoop bucket add nonportable  ; scoop install logitech-gaming-software-np }
	if ($Tab5_checkBox49.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing roundedtb..."  ) ; scoop bucket add extras  ; scoop install roundedtb }
	if ($Tab5_checkBox50.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing taskbarx..."  ) ; scoop bucket add extras  ; scoop install taskbarx }
	if ($Tab5_checkBox51.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing translucenttb..."  ) ; scoop bucket add extras  ; scoop install translucenttb }
	if ($Tab5_checkBox52.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing powertoys..."  ) ; scoop bucket add extras  ; scoop install powertoys }
	if ($Tab5_checkBox53.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing 7zip..."  ) ; scoop bucket add main  ; scoop install 7zip }
	if ($Tab5_checkBox54.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing winrar..."  ) ; scoop bucket add extras  ; scoop install winrar }
	if ($Tab5_checkBox55.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing revouninstaller..."  ) ; scoop bucket add extras  ; scoop install revouninstaller }
	if ($Tab5_checkBox56.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing czkawka..."  ) ; scoop bucket add extras  ; scoop install czkawka }
	if ($Tab5_checkBox57.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing anydesk..."  ) ; scoop bucket add extras  ; scoop install anydesk }
	if ($Tab5_checkBox58.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing teamviewer..."  ) ; scoop bucket add extras  ; scoop install teamviewer }
	if ($Tab5_checkBox59.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing rustdesk..."  ) ; scoop bucket add extras  ; scoop install rustdesk }
	if ($Tab5_checkBox60.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing putty..."  ) ; scoop bucket add extras  ; scoop install putty }
	if ($Tab5_checkBox61.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing filezilla..."  ) ; scoop bucket add extras  ; scoop install filezilla }
	if ($Tab5_checkBox62.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing etcher..."  ) ; scoop bucket add extras  ; scoop install etcher }
	if ($Tab5_checkBox63.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing rufus..."  ) ; scoop bucket add extras  ; scoop install rufus }
	if ($Tab5_checkBox64.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing ventoy..."  ) ; scoop bucket add extras  ; scoop install ventoy }
	if ($Tab5_checkBox65.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing ddu..."  ) ; scoop bucket add extras  ; scoop install ddu }
	if ($Tab5_checkBox66.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing nvcleanstall..."  ) ; scoop bucket add extras  ; scoop install nvcleanstall }
	if ($Tab5_checkBox67.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing nvidia-display-driver-np..."  ) ; scoop bucket add nonportable  ; scoop install nvidia-display-driver-np }
	if ($Tab5_checkBox68.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing ryzen-controller..."  ) ; scoop bucket add extras  ; scoop install ryzen-controller }
	if ($Tab5_checkBox69.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing ryzentuner..."  ) ; scoop bucket add hoilc_scoop-lemon https://github.com/hoilc/scoop-lemon  ; scoop install ryzentuner }
	if ($Tab5_checkBox70.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing IntelExtremeTuningUtility-Install..."  ) ; scoop bucket add ACooper81_scoop-apps https://github.com/ACooper81/scoop-apps ; scoop install IntelExtremeTuningUtility-Install }
	if ($Tab5_checkBox71.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing neofetch..."  ) ; scoop bucket add main  ; scoop install neofetch }
	if ($Tab5_checkBox72.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing meow..."  ) ; scoop bucket add extras  ; scoop install meow }
	if ($Tab5_checkBox73.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing cowsay..."  ) ; scoop bucket add main  ; scoop install cowsay }
	if ($Tab5_checkBox74.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing alacritty..."  ) ; scoop bucket add extras  ; scoop install alacritty }
	if ($Tab5_checkBox75.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing tabby..."  ) ; scoop bucket add extras  ; scoop install tabby }
	if ($Tab5_checkBox76.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing hyper..."  ) ; scoop bucket add extras  ; scoop install hyper }
	if ($Tab5_checkBox77.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing fluent-terminal-np..."  ) ; scoop bucket add nonportable  ; scoop install fluent-terminal-np }
	if ($Tab5_checkBox78.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing windows-terminal..."  ) ; scoop bucket add extras  ; scoop install windows-terminal }
	if ( !$Tab5_checkBox1.Checked -and !$Tab5_checkBox2.Checked -and !$Tab5_checkBox1.Checked -and !$Tab5_checkBox4.Checked -and !$Tab5_checkBox5.Checked -and !$Tab5_checkBox6.Checked -and !$Tab5_checkBox7.Checked -and !$Tab5_checkBox8.Checked -and !$Tab5_checkBox9.Checked -and !$Tab5_checkBox10.Checked -and !$Tab5_checkBox11.Checked -and !$Tab5_checkBox12.Checked -and !$Tab5_checkBox13.Checked -and !$Tab5_checkBox14.Checked -and !$Tab5_checkBox15.Checked -and !$Tab5_checkBox16.Checked -and !$Tab5_checkBox17.Checked -and !$Tab5_checkBox18.Checked -and !$Tab5_checkBox19.Checked -and !$Tab5_checkBox20.Checked -and !$Tab5_checkBox21.Checked -and !$Tab5_checkBox22.Checked -and !$Tab5_checkBox23.Checked -and !$Tab5_checkBox24.Checked -and !$Tab5_checkBox25.Checked -and !$Tab5_checkBox26.Checked -and !$Tab5_checkBox27.Checked -and !$Tab5_checkBox28.Checked -and !$Tab5_checkBox29.Checked -and !$Tab5_checkBox30.Checked -and !$Tab5_checkBox31.Checked -and !$Tab5_checkBox32.Checked -and !$Tab5_checkBox33.Checked -and !$Tab5_checkBox34.Checked -and !$Tab5_checkBox35.Checked -and !$Tab5_checkBox36.Checked -and !$Tab5_checkBox37.Checked -and !$Tab5_checkBox38.Checked -and !$Tab5_checkBox39.Checked -and !$Tab5_checkBox40.Checked -and !$Tab5_checkBox41.Checked -and !$Tab5_checkBox42.Checked -and !$Tab5_checkBox43.Checked -and !$Tab5_checkBox44.Checked -and !$Tab5_checkBox45.Checked -and !$Tab5_checkBox46.Checked -and !$Tab5_checkBox47.Checked -and !$Tab5_checkBox48.Checked -and !$Tab5_checkBox49.Checked -and !$Tab5_checkBox50.Checked -and !$Tab5_checkBox51.Checked -and !$Tab5_checkBox52.Checked -and !$Tab5_checkBox53.Checked -and !$Tab5_checkBox54.Checked -and !$Tab5_checkBox55.Checked -and !$Tab5_checkBox56.Checked -and !$Tab5_checkBox57.Checked -and !$Tab5_checkBox58.Checked -and !$Tab5_checkBox59.Checked -and !$Tab5_checkBox60.Checked -and !$Tab5_checkBox61.Checked -and !$Tab5_checkBox62.Checked -and !$Tab5_checkBox63.Checked -and !$Tab5_checkBox64.Checked -and !$Tab5_checkBox65.Checked -and !$Tab5_checkBox66.Checked -and !$Tab5_checkBox67.Checked -and !$Tab5_checkBox67.Checked -and !$Tab5_checkBox68.Checked -and !$Tab5_checkBox69.Checked -and !$Tab5_checkBox70.Checked -and !$Tab5_checkBox71.Checked -and !$Tab5_checkBox72.Checked -and !$Tab5_checkBox73.Checked -and !$Tab5_checkBox74.Checked -and !$Tab5_checkBox75.Checked -and !$Tab5_checkBox76.Checked -and !$Tab5_checkBox77.Checked -and !$Tab5_checkBox78.Checked) {   $Tab5_Statusbox1.Items.Add("No Tab5_CheckBox selected....")} 
}

#Tab5_installbutton1
$Tab5_installbutton1 = New-Object System.Windows.Forms.Button
$Tab5_installbutton1.Name = "Tab5_installbutton1"
$Tab5_installbutton1.Location = New-Object System.Drawing.Point(450,10)
$Tab5_installbutton1.Size = New-Object System.Drawing.Size(200,25)
$Tab5_installbutton1.Text = "Install selected applications"
$Tab5_installbutton1.add_Click($handler_Tab5_installbutton1_Click)
$tab5.Controls.Add($Tab5_installbutton1)

#Tab5_Statusbox1
$Tab5_Statusbox1 = New-Object System.Windows.Forms.ListBox
$Tab5_Statusbox1.FormattingEnabled = $True
$Tab5_Statusbox1.Location = New-Object System.Drawing.Point(525,335)
$Tab5_Statusbox1.Size = New-Object System.Drawing.Size(200,100)
$Tab5_Statusbox1.Name = "Tab5_Statusbox1"
$tab5.Controls.Add($Tab5_Statusbox1)


# alot of Tab5_checkboxes
$Tab5_checkBox1 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox1.Location = New-Object System.Drawing.Point(10,50)
$Tab5_checkBox1.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox1.Text = "Firefox"
$Tab5_checkBox1.Name = "Tab5_checkBox1"
$tab5.Controls.Add($Tab5_checkBox1)

$Tab5_checkBox2 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox2.Location = New-Object System.Drawing.Point(10,70)
$Tab5_checkBox2.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox2.Text = "Librewolf"
$Tab5_checkBox2.Name = "Tab5_checkBox2"
$tab5.Controls.Add($Tab5_checkBox2)

$Tab5_checkBox3 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox3.Location = New-Object System.Drawing.Point(10,90)
$Tab5_checkBox3.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox3.Text = "Brave"
$Tab5_checkBox3.Name = "Tab5_checkBox3"
$tab5.Controls.Add($Tab5_checkBox3)

$Tab5_checkBox4 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox4.Location = New-Object System.Drawing.Point(10,110)
$Tab5_checkBox4.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox4.Text = "Chrome"
$Tab5_checkBox4.Name = "Tab5_checkBox4"
$tab5.Controls.Add($Tab5_checkBox4)

$Tab5_checkBox5 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox5.Location = New-Object System.Drawing.Point(10,130)
$Tab5_checkBox5.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox5.Text = "Chromium"
$Tab5_checkBox5.Name = "Tab5_checkBox5"
$tab5.Controls.Add($Tab5_checkBox5)

$Tab5_checkBox6 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox6.Location = New-Object System.Drawing.Point(10,160)
$Tab5_checkBox6.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox6.Text = "MPV"
$Tab5_checkBox6.Name = "Tab5_checkBox6"
$tab5.Controls.Add($Tab5_checkBox6)

$Tab5_checkBox7 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox7.Location = New-Object System.Drawing.Point(10,180)
$Tab5_checkBox7.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox7.Text = "VLC"
$Tab5_checkBox7.Name = "Tab5_checkBox7"
$tab5.Controls.Add($Tab5_checkBox7)

$Tab5_checkBox8 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox8.Location = New-Object System.Drawing.Point(10,200)
$Tab5_checkBox8.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox8.Text = "Audacity"
$Tab5_checkBox8.Name = "Tab5_checkBox8"
$tab5.Controls.Add($Tab5_checkBox8)

$Tab5_checkBox9 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox9.Location = New-Object System.Drawing.Point(10,220)
$Tab5_checkBox9.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox9.Text = "EarTrumpet"
$Tab5_checkBox9.Name = "Tab5_checkBox9"
$tab5.Controls.Add($Tab5_checkBox9)

$Tab5_checkBox10 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox10.Location = New-Object System.Drawing.Point(10,240)
$Tab5_checkBox10.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox10.Text = "HandBrake"
$Tab5_checkBox10.Name = "Tab5_checkBox10"
$tab5.Controls.Add($Tab5_checkBox10)

$Tab5_checkBox11 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox11.Location = New-Object System.Drawing.Point(10,280)
$Tab5_checkBox11.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox11.Text = "Flameshot"
$Tab5_checkBox11.Name = "Tab5_checkBox11"
$tab5.Controls.Add($Tab5_checkBox11)

$Tab5_checkBox12 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox12.Location = New-Object System.Drawing.Point(10,300)
$Tab5_checkBox12.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox12.Text = "OBS-Studio"
$Tab5_checkBox12.Name = "Tab5_checkBox12"
$tab5.Controls.Add($Tab5_checkBox12)

$Tab5_checkBox13 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox13.Location = New-Object System.Drawing.Point(10,320)
$Tab5_checkBox13.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox13.Text = "Blender"
$Tab5_checkBox13.Name = "Tab5_checkBox13"
$tab5.Controls.Add($Tab5_checkBox13)

$Tab5_checkBox14 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox14.Location = New-Object System.Drawing.Point(10,340)
$Tab5_checkBox14.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox14.Text = "Gimp"
$Tab5_checkBox14.Name = "Tab5_checkBox14"
$tab5.Controls.Add($Tab5_checkBox14)

$Tab5_checkBox15 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox15.Location = New-Object System.Drawing.Point(10,360)
$Tab5_checkBox15.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox15.Text = "Krita"
$Tab5_checkBox15.Name = "Tab5_checkBox15"
$tab5.Controls.Add($Tab5_checkBox15)

$Tab5_checkBox16 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox16.Location = New-Object System.Drawing.Point(10,380)
$Tab5_checkBox16.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox16.Text = "InkScape"
$Tab5_checkBox16.Name = "Tab5_checkBox16"
$tab5.Controls.Add($Tab5_checkBox16)

$Tab5_checkBox17 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox17.Location = New-Object System.Drawing.Point(110,50)
$Tab5_checkBox17.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox17.Text = "SoundCloud"
$Tab5_checkBox17.Name = "Tab5_checkBox17"
$tab5.Controls.Add($Tab5_checkBox17)

$Tab5_checkBox18 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox18.Location = New-Object System.Drawing.Point(110,70)
$Tab5_checkBox18.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox18.Text = "Spotify"
$Tab5_checkBox18.Name = "Tab5_checkBox18"
$tab5.Controls.Add($Tab5_checkBox18)

$Tab5_checkBox19 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox19.Location = New-Object System.Drawing.Point(110,90)
$Tab5_checkBox19.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox19.Text = "YT Music"
$Tab5_checkBox19.Name = "Tab5_checkBox19"
$tab5.Controls.Add($Tab5_checkBox19)

$Tab5_checkBox20 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox20.Location = New-Object System.Drawing.Point(110,110)
$Tab5_checkBox20.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox20.Text = "Cider"
$Tab5_checkBox20.Name = "Tab5_checkBox20"
$tab5.Controls.Add($Tab5_checkBox20)

$Tab5_checkBox21 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox21.Location = New-Object System.Drawing.Point(110,140)
$Tab5_checkBox21.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox21.Text = "Deluge"
$Tab5_checkBox21.Name = "Tab5_checkBox21"
$tab5.Controls.Add($Tab5_checkBox21)

$Tab5_checkBox22 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox22.Location = New-Object System.Drawing.Point(110,160)
$Tab5_checkBox22.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox22.Text = "Picotorrent"
$Tab5_checkBox22.Name = "Tab5_checkBox22"
$tab5.Controls.Add($Tab5_checkBox22)

$Tab5_checkBox23 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox23.Location = New-Object System.Drawing.Point(110,180)
$Tab5_checkBox23.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox23.Text = "qBittorrent"
$Tab5_checkBox23.Name = "Tab5_checkBox23"
$tab5.Controls.Add($Tab5_checkBox23)

$Tab5_checkBox24 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox24.Location = New-Object System.Drawing.Point(110,200)
$Tab5_checkBox24.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox24.Text = "Transmission"
$Tab5_checkBox24.Name = "Tab5_checkBox24"
$tab5.Controls.Add($Tab5_checkBox24)

$Tab5_checkBox25 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox25.Location = New-Object System.Drawing.Point(110,230)
$Tab5_checkBox25.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox25.Text = "Zoom"
$Tab5_checkBox25.Name = "Tab5_checkBox25"
$tab5.Controls.Add($Tab5_checkBox25)

$Tab5_checkBox26 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox26.Location = New-Object System.Drawing.Point(110,250)
$Tab5_checkBox26.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox26.Text = "Teams"
$Tab5_checkBox26.Name = "Tab5_checkBox26"
$tab5.Controls.Add($Tab5_checkBox26)

$Tab5_checkBox27 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox27.Location = New-Object System.Drawing.Point(110,270)
$Tab5_checkBox27.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox27.Text = "Telegram"
$Tab5_checkBox27.Name = "Tab5_checkBox27"
$tab5.Controls.Add($Tab5_checkBox27)

$Tab5_checkBox28 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox28.Location = New-Object System.Drawing.Point(110,290)
$Tab5_checkBox28.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox28.Text = "Signal"
$Tab5_checkBox28.Name = "Tab5_checkBox28"
$tab5.Controls.Add($Tab5_checkBox28)

$Tab5_checkBox29 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox29.Location = New-Object System.Drawing.Point(110,310)
$Tab5_checkBox29.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox29.Text = "Discord"
$Tab5_checkBox29.Name = "Tab5_checkBox29"
$tab5.Controls.Add($Tab5_checkBox29)

$Tab5_checkBox30 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox30.Location = New-Object System.Drawing.Point(110,330)
$Tab5_checkBox30.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox30.Text = "Caprine"
$Tab5_checkBox30.Name = "Tab5_checkBox30"
$tab5.Controls.Add($Tab5_checkBox30)

$Tab5_checkBox31 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox31.Location = New-Object System.Drawing.Point(110,360)
$Tab5_checkBox31.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox31.Text = "LibreOffice"
$Tab5_checkBox31.Name = "Tab5_checkBox31"
$tab5.Controls.Add($Tab5_checkBox31)

$Tab5_checkBox32 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox32.Location = New-Object System.Drawing.Point(110,380)
$Tab5_checkBox32.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox32.Text = "OnlyOffice"
$Tab5_checkBox32.Name = "Tab5_checkBox32"
$tab5.Controls.Add($Tab5_checkBox32)

$Tab5_checkBox33 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox33.Location = New-Object System.Drawing.Point(110,400)
$Tab5_checkBox33.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox33.Text = "Office 365"
$Tab5_checkBox33.Name = "Tab5_checkBox33"
$tab5.Controls.Add($Tab5_checkBox33)

$Tab5_checkBox34 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox34.Location = New-Object System.Drawing.Point(210,50)
$Tab5_checkBox34.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox34.Text = "Foxit"
$Tab5_checkBox34.Name = "Tab5_checkBox34"
$tab5.Controls.Add($Tab5_checkBox34)

$Tab5_checkBox35 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox35.Location = New-Object System.Drawing.Point(210,70)
$Tab5_checkBox35.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox35.Text = "Qalculate"
$Tab5_checkBox35.Name = "Tab5_checkBox35"
$tab5.Controls.Add($Tab5_checkBox35)

$Tab5_checkBox36 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox36.Location = New-Object System.Drawing.Point(210,100)
$Tab5_checkBox36.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox36.Text = "Steam"
$Tab5_checkBox36.Name = "Tab5_checkBox36"
$tab5.Controls.Add($Tab5_checkBox36)

$Tab5_checkBox37 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox37.Location = New-Object System.Drawing.Point(210,120)
$Tab5_checkBox37.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox37.Text = "Epic"
$Tab5_checkBox37.Name = "Tab5_checkBox37"
$tab5.Controls.Add($Tab5_checkBox37)

$Tab5_checkBox38 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox38.Location = New-Object System.Drawing.Point(210,140)
$Tab5_checkBox38.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox38.Text = "GOG"
$Tab5_checkBox38.Name = "Tab5_checkBox38"
$tab5.Controls.Add($Tab5_checkBox38)

$Tab5_checkBox39 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox39.Location = New-Object System.Drawing.Point(210,160)
$Tab5_checkBox39.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox39.Text = "Itch"
$Tab5_checkBox39.Name = "Tab5_checkBox39"
$tab5.Controls.Add($Tab5_checkBox39)

$Tab5_checkBox40 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox40.Location = New-Object System.Drawing.Point(210,180)
$Tab5_checkBox40.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox40.Text = "PolyMC"
$Tab5_checkBox40.Name = "Tab5_checkBox40"
$tab5.Controls.Add($Tab5_checkBox40)

$Tab5_checkBox41 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox41.Location = New-Object System.Drawing.Point(210,200)
$Tab5_checkBox41.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox41.Text = "Dolphin"
$Tab5_checkBox41.Name = "Tab5_checkBox41"
$tab5.Controls.Add($Tab5_checkBox41)

$Tab5_checkBox42 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox42.Location = New-Object System.Drawing.Point(210,220)
$Tab5_checkBox42.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox42.Text = "Citra"
$Tab5_checkBox42.Name = "Tab5_checkBox42"
$tab5.Controls.Add($Tab5_checkBox42)

$Tab5_checkBox43 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox43.Location = New-Object System.Drawing.Point(210,240)
$Tab5_checkBox43.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox43.Text = "Yuzu"
$Tab5_checkBox43.Name = "Tab5_checkBox43"
$tab5.Controls.Add($Tab5_checkBox43)

$Tab5_checkBox44 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox44.Location = New-Object System.Drawing.Point(210,260)
$Tab5_checkBox44.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox44.Text = "Dosbox"
$Tab5_checkBox44.Name = "Tab5_checkBox44"
$tab5.Controls.Add($Tab5_checkBox44)

$Tab5_checkBox45 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox45.Location = New-Object System.Drawing.Point(210,290)
$Tab5_checkBox45.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox45.Text = "Loot"
$Tab5_checkBox45.Name = "Tab5_checkBox45"
$tab5.Controls.Add($Tab5_checkBox45)

$Tab5_checkBox46 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox46.Location = New-Object System.Drawing.Point(210,310)
$Tab5_checkBox46.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox46.Text = "MO 2"
$Tab5_checkBox46.Name = "Tab5_checkBox46"
$tab5.Controls.Add($Tab5_checkBox46)

$Tab5_checkBox47 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox47.Location = New-Object System.Drawing.Point(210,330)
$Tab5_checkBox47.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox47.Text = "Vortex"
$Tab5_checkBox47.Name = "Tab5_checkBox47"
$tab5.Controls.Add($Tab5_checkBox47)

$Tab5_checkBox48 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox48.Location = New-Object System.Drawing.Point(210,360)
$Tab5_checkBox48.Size = New-Object System.Drawing.Size(100,30)
$Tab5_checkBox48.Text = "Logitech Software"
$Tab5_checkBox48.Name = "Tab5_checkBox48"
$tab5.Controls.Add($Tab5_checkBox48)

$Tab5_checkBox49 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox49.Location = New-Object System.Drawing.Point(310,50)
$Tab5_checkBox49.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox49.Text = "RoundedTB"
$Tab5_checkBox49.Name = "Tab5_checkBox49"
$tab5.Controls.Add($Tab5_checkBox49)

$Tab5_checkBox50 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox50.Location = New-Object System.Drawing.Point(310,70)
$Tab5_checkBox50.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox50.Text = "TaskbarX"
$Tab5_checkBox50.Name = "Tab5_checkBox50"
$tab5.Controls.Add($Tab5_checkBox50)

$Tab5_checkBox51 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox51.Location = New-Object System.Drawing.Point(310,90)
$Tab5_checkBox51.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox51.Text = "TranslucentTB"
$Tab5_checkBox51.Name = "Tab5_checkBox51"
$tab5.Controls.Add($Tab5_checkBox51)

$Tab5_checkBox52 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox52.Location = New-Object System.Drawing.Point(310,110)
$Tab5_checkBox52.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox52.Text = "Powertoys"
$Tab5_checkBox52.Name = "Tab5_checkBox52"
$tab5.Controls.Add($Tab5_checkBox52)

$Tab5_checkBox53 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox53.Location = New-Object System.Drawing.Point(310,130)
$Tab5_checkBox53.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox53.Text = "7-zip"
$Tab5_checkBox53.Name = "Tab5_checkBox53"
$tab5.Controls.Add($Tab5_checkBox53)

$Tab5_checkBox54 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox54.Location = New-Object System.Drawing.Point(310,150)
$Tab5_checkBox54.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox54.Text = "Winrar"
$Tab5_checkBox54.Name = "Tab5_checkBox54"
$tab5.Controls.Add($Tab5_checkBox54)

$Tab5_checkBox55 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox55.Location = New-Object System.Drawing.Point(310,170)
$Tab5_checkBox55.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox55.Text = "Revo"
$Tab5_checkBox55.Name = "Tab5_checkBox55"
$tab5.Controls.Add($Tab5_checkBox55)

$Tab5_checkBox56 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox56.Location = New-Object System.Drawing.Point(310,190)
$Tab5_checkBox56.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox56.Text = "Czkawka"
$Tab5_checkBox56.Name = "Tab5_checkBox56"
$tab5.Controls.Add($Tab5_checkBox56)

$Tab5_checkBox57 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox57.Location = New-Object System.Drawing.Point(310,220)
$Tab5_checkBox57.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox57.Text = "Anydesk"
$Tab5_checkBox57.Name = "Tab5_checkBox57"
$tab5.Controls.Add($Tab5_checkBox57)

$Tab5_checkBox58 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox58.Location = New-Object System.Drawing.Point(310,240)
$Tab5_checkBox58.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox58.Text = "TeamViewer"
$Tab5_checkBox58.Name = "Tab5_checkBox58"
$tab5.Controls.Add($Tab5_checkBox58)

$Tab5_checkBox59 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox59.Location = New-Object System.Drawing.Point(310,260)
$Tab5_checkBox59.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox59.Text = "RustDesk"
$Tab5_checkBox59.Name = "Tab5_checkBox59"
$tab5.Controls.Add($Tab5_checkBox59)

$Tab5_checkBox60 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox60.Location = New-Object System.Drawing.Point(310,290)
$Tab5_checkBox60.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox60.Text = "Putty"
$Tab5_checkBox60.Name = "Tab5_checkBox60"
$tab5.Controls.Add($Tab5_checkBox60)

$Tab5_checkBox61 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox61.Location = New-Object System.Drawing.Point(310,320)
$Tab5_checkBox61.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox61.Text = "Filezilla"
$Tab5_checkBox61.Name = "Tab5_checkBox61"
$tab5.Controls.Add($Tab5_checkBox61)

$Tab5_checkBox62 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox62.Location = New-Object System.Drawing.Point(310,340)
$Tab5_checkBox62.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox62.Text = "Etcher"
$Tab5_checkBox62.Name = "Tab5_checkBox62"
$tab5.Controls.Add($Tab5_checkBox62)

$Tab5_checkBox63 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox63.Location = New-Object System.Drawing.Point(310,360)
$Tab5_checkBox63.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox63.Text = "Rufus"
$Tab5_checkBox63.Name = "Tab5_checkBox63"
$tab5.Controls.Add($Tab5_checkBox63)

$Tab5_checkBox64 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox64.Location = New-Object System.Drawing.Point(310,380)
$Tab5_checkBox64.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox64.Text = "Ventoy"
$Tab5_checkBox64.Name = "Tab5_checkBox64"
$tab5.Controls.Add($Tab5_checkBox64)

$Tab5_checkBox65 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox65.Location = New-Object System.Drawing.Point(410,50)
$Tab5_checkBox65.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox65.Text = "DDU"
$Tab5_checkBox65.Name = "Tab5_checkBox65"
$tab5.Controls.Add($Tab5_checkBox65)

$Tab5_checkBox66 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox66.Location = New-Object System.Drawing.Point(410,70)
$Tab5_checkBox66.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox66.Text = "NVCleanInstall"
$Tab5_checkBox66.Name = "Tab5_checkBox66"
$tab5.Controls.Add($Tab5_checkBox66)

$Tab5_checkBox67 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox67.Location = New-Object System.Drawing.Point(410,90)
$Tab5_checkBox67.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox67.Text = "GFExperience"
$Tab5_checkBox67.Name = "Tab5_checkBox67"
$tab5.Controls.Add($Tab5_checkBox67)

$Tab5_checkBox68 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox68.Location = New-Object System.Drawing.Point(410,110)
$Tab5_checkBox68.Size = New-Object System.Drawing.Size(120,25)
$Tab5_checkBox68.Text = "Ryzen Controller"
$Tab5_checkBox68.Name = "Tab5_checkBox68"
$tab5.Controls.Add($Tab5_checkBox68)

$Tab5_checkBox69 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox69.Location = New-Object System.Drawing.Point(410,130)
$Tab5_checkBox69.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox69.Text = "Ryzen Tuner"
$Tab5_checkBox69.Name = "Tab5_checkBox69"
$tab5.Controls.Add($Tab5_checkBox69)

$Tab5_checkBox70 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox70.Location = New-Object System.Drawing.Point(410,150)
$Tab5_checkBox70.Size = New-Object System.Drawing.Size(100,35)
$Tab5_checkBox70.Text = "Intel Extreme Tuning Utility"
$Tab5_checkBox70.Name = "Tab5_checkBox70"
$tab5.Controls.Add($Tab5_checkBox70)

$Tab5_checkBox71 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox71.Location = New-Object System.Drawing.Point(410,180)
$Tab5_checkBox71.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox71.Text = "Neofetch"
$Tab5_checkBox71.Name = "Tab5_checkBox71"
$tab5.Controls.Add($Tab5_checkBox71)

$Tab5_checkBox72 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox72.Location = New-Object System.Drawing.Point(410,200)
$Tab5_checkBox72.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox72.Text = "Lolcat"
$Tab5_checkBox72.Name = "Tab5_checkBox72"
$tab5.Controls.Add($Tab5_checkBox72)


$Tab5_checkBox73 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox73.Location = New-Object System.Drawing.Point(410,220)
$Tab5_checkBox73.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox73.Text = "Cowsay"
$Tab5_checkBox73.Name = "Tab5_checkBox73"
$tab5.Controls.Add($Tab5_checkBox73)

$Tab5_checkBox74 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox74.Location = New-Object System.Drawing.Point(410,250)
$Tab5_checkBox74.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox74.Text = "Alacritty"
$Tab5_checkBox74.Name = "Tab5_checkBox74"
$tab5.Controls.Add($Tab5_checkBox74)

$Tab5_checkBox75 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox75.Location = New-Object System.Drawing.Point(410,270)
$Tab5_checkBox75.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox75.Text = "Tabby"
$Tab5_checkBox75.Name = "Tab5_checkBox75"
$tab5.Controls.Add($Tab5_checkBox75)

$Tab5_checkBox76 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox76.Location = New-Object System.Drawing.Point(410,290)
$Tab5_checkBox76.Size = New-Object System.Drawing.Size(100,25)
$Tab5_checkBox76.Text = "Hyper"
$Tab5_checkBox76.Name = "Tab5_checkBox76"
$tab5.Controls.Add($Tab5_checkBox76)

$Tab5_checkBox77 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox77.Location = New-Object System.Drawing.Point(410,310)
$Tab5_checkBox77.Size = New-Object System.Drawing.Size(120,25)
$Tab5_checkBox77.Text = "Fluent"
$Tab5_checkBox77.Name = "Tab5_checkBox77"
$tab5.Controls.Add($Tab5_checkBox77)

$Tab5_checkBox78 = New-Object System.Windows.Forms.CheckBox
$Tab5_checkBox78.Location = New-Object System.Drawing.Point(410,330)
$Tab5_checkBox78.Size = New-Object System.Drawing.Size(120,25)
$Tab5_checkBox78.Text = "Windows"
$Tab5_checkBox78.Name = "Tab5_checkBox78"
$tab5.Controls.Add($Tab5_checkBox78)


# link1
$tab5_manualinstall1 = New-Object System.Windows.Forms.LinkLabel
$tab5_manualinstall1.Location = New-Object System.Drawing.Point(530,50)
$tab5_manualinstall1.VisitedLinkColor = 'Red'
$tab5_manualinstall1.LinkBehavior = 'HoverUnderline'
$tab5_manualinstall1.LinkColor = 'Navy'
$tab5_manualinstall1.Font = New-Object System.Drawing.Font('arial',8)
$tab5_manualinstall1.ForeColor = "#000000"
$tab5_manualinstall1.Text = ("Digidoc4")
$tab5_manualinstall1.add_click({explorer "https://installer.id.ee/media/win/Open-EID-22.6.0.1930.exe"})
$tab5.Controls.Add($tab5_manualinstall1)

# link1
$tab5_manualinstall2 = New-Object System.Windows.Forms.LinkLabel
$tab5_manualinstall2.Location = New-Object System.Drawing.Point(530,75)
$tab5_manualinstall2.VisitedLinkColor = 'Red'
$tab5_manualinstall2.LinkBehavior = 'HoverUnderline'
$tab5_manualinstall2.LinkColor = 'Navy'
$tab5_manualinstall2.Font = New-Object System.Drawing.Font('arial',8)
$tab5_manualinstall2.ForeColor = "#000000"
$tab5_manualinstall2.Text = ("Packet Tracer")
$tab5_manualinstall2.add_click({explorer "https://www.netacad.com/portal/resources/file/84f3e715-2e22-435a-8742-fd51f136cf73"})
$tab5.Controls.Add($tab5_manualinstall2)

# link1
$tab5_manualinstall3 = New-Object System.Windows.Forms.LinkLabel
$tab5_manualinstall3.Location = New-Object System.Drawing.Point(530,100)
$tab5_manualinstall3.VisitedLinkColor = 'Red'
$tab5_manualinstall3.LinkBehavior = 'HoverUnderline'
$tab5_manualinstall3.LinkColor = 'Navy'
$tab5_manualinstall3.Font = New-Object System.Drawing.Font('arial',8)
$tab5_manualinstall3.ForeColor = "#000000"
$tab5_manualinstall3.Text = ("GNS3")
$tab5_manualinstall3.add_click({explorer "https://github.com/GNS3/gns3-gui/releases/download/v2.2.33.1/GNS3-2.2.33.1-all-in-one.exe"})
$tab5.Controls.Add($tab5_manualinstall3)




# link1
$tab5_manualinstall4 = New-Object System.Windows.Forms.LinkLabel
$tab5_manualinstall4.Location = New-Object System.Drawing.Point(530,125)
$tab5_manualinstall4.VisitedLinkColor = 'Red'
$tab5_manualinstall4.LinkBehavior = 'HoverUnderline'
$tab5_manualinstall4.LinkColor = 'Navy'
$tab5_manualinstall4.Font = New-Object System.Drawing.Font('arial',8)
$tab5_manualinstall4.ForeColor = "#000000"
$tab5_manualinstall4.Text = ("Explorer Patcher")
$tab5_manualinstall4.add_click({explorer "https://github.com/valinet/ExplorerPatcher/releases/download/22622.450.50.2_5de2eb0/ep_setup.exe"})
$tab5.Controls.Add($tab5_manualinstall4)


# link1
$tab5_manualinstall5 = New-Object System.Windows.Forms.LinkLabel
$tab5_manualinstall5.Location = New-Object System.Drawing.Point(530,150)
$tab5_manualinstall5.VisitedLinkColor = 'Red'
$tab5_manualinstall5.LinkBehavior = 'HoverUnderline'
$tab5_manualinstall5.LinkColor = 'Navy'
$tab5_manualinstall5.Font = New-Object System.Drawing.Font('arial',8)
$tab5_manualinstall5.ForeColor = "#000000"
$tab5_manualinstall5.Text = ("FxSound")
$tab5_manualinstall5.add_click({explorer "https://drive.fxsound.com/cs/sqCJUUJodRDCmXn/downloads3.fxsound.com/fxsound/1.1.16.0/fxsound_setup.exe/download"})
$tab5.Controls.Add($tab5_manualinstall5)

# link1
$tab5_manualinstall6 = New-Object System.Windows.Forms.LinkLabel
$tab5_manualinstall6.Location = New-Object System.Drawing.Point(530,175)
$tab5_manualinstall6.VisitedLinkColor = 'Red'
$tab5_manualinstall6.LinkBehavior = 'HoverUnderline'
$tab5_manualinstall6.LinkColor = 'Navy'
$tab5_manualinstall6.Font = New-Object System.Drawing.Font('arial',8)
$tab5_manualinstall6.ForeColor = "#000000"
$tab5_manualinstall6.Text = ("Battle.net")
$tab5_manualinstall6.add_click({explorer "https://eu.battle.net/download/getInstaller?os=win&installer=Battle.net-Setup.exe&id=undefined"})
$tab5.Controls.Add($tab5_manualinstall6)



# link1
$tab5_manualinstall6 = New-Object System.Windows.Forms.LinkLabel
$tab5_manualinstall6.Location = New-Object System.Drawing.Point(530,200)
$tab5_manualinstall6.VisitedLinkColor = 'Red'
$tab5_manualinstall6.LinkBehavior = 'HoverUnderline'
$tab5_manualinstall6.LinkColor = 'Navy'
$tab5_manualinstall6.Font = New-Object System.Drawing.Font('arial',8)
$tab5_manualinstall6.ForeColor = "#000000"
$tab5_manualinstall6.Text = ("Click Paste")
$tab5_manualinstall6.add_click({explorer "https://github.com/Collective-Software/ClickPaste/releases/download/v1.0.1/ClickPaste_v1.0.1.zip"})
$tab5.Controls.Add($tab5_manualinstall6)


# TAB 6
#----------------------------------------------

$tab6 = New-object System.Windows.Forms.Tabpage
$tab6.DataBindings.DefaultDataSourceUpdateMode = 0 
$tab6.Name = "tab6" 
$tab6.Text = "Update” 
$FormTabControl.Controls.Add($tab6)

# window label
$tab6_label1 = New-Object System.Windows.Forms.Label
$tab6_label1.Location = New-Object System.Drawing.Point(70,10)
$tab6_label1.AutoSize = $true
$tab6_label1.Font = New-Object System.Drawing.Font('verdana',16)
$tab6_label1.ForeColor = "#000000"
$tab6_label1.Text = ("Default")
$tab6.Controls.Add($tab6_label1)

$tab6_label2 = New-Object System.Windows.Forms.Label
$tab6_label2.Location = New-Object System.Drawing.Point(280,10)
$tab6_label2.AutoSize = $true
$tab6_label2.Font = New-Object System.Drawing.Font('verdana',16)
$tab6_label2.ForeColor = "#000000"
$tab6_label2.Text = ("Security")
$tab6.Controls.Add($tab6_label2)

$tab6_label3 = New-Object System.Windows.Forms.Label
$tab6_label3.Location = New-Object System.Drawing.Point(490,10)
$tab6_label3.AutoSize = $true
$tab6_label3.Font = New-Object System.Drawing.Font('verdana',16)
$tab6_label3.ForeColor = "#000000"
$tab6_label3.Text = ("Disabled")
$tab6.Controls.Add($tab6_label3)


$Tab6_updatebutton1 = New-Object System.Windows.Forms.Button
$Tab6_updatebutton1.Location = New-Object System.Drawing.Point(10,50)
$Tab6_updatebutton1.Size = New-Object System.Drawing.Size(200,25)
$Tab6_updatebutton1.Text = "Default"
$Tab6_updatebutton1.Add_Click({start-process powershell -verb runas {
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoUpdate" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUOptions" -Type DWord -Value 3
	If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 1
	
	$services = @(
		"BITS"
		"wuauserv"
	)

	foreach ($service in $services) {
		# -ErrorAction SilentlyContinue is so it doesn't write an error to stdout if a service doesn't exist

		Write-Host "Setting $service StartupType to Automatic"
		Get-Service -Name $service -ErrorAction SilentlyContinue | Set-Service -StartupType Automatic
	}
	Write-Host "Enabling driver offering through Windows Update..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -ErrorAction SilentlyContinue
	Write-Host "Enabling Windows Update automatic restart..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -ErrorAction SilentlyContinue
	Write-Host "Enabled driver offering through Windows Update"
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" -Name "BranchReadinessLevel" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" -Name "DeferFeatureUpdatesPeriodInDays" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" -Name "DeferQualityUpdatesPeriodInDays " -ErrorAction SilentlyContinue
	Write-Host "Updates Set to Default"
}})
$tab6.Controls.Add($Tab6_updatebutton1)

$Tab6_updatebutton2 = New-Object System.Windows.Forms.Button
$Tab6_updatebutton2.Location = New-Object System.Drawing.Point(225,50)
$Tab6_updatebutton2.Size = New-Object System.Drawing.Size(200,25)
$Tab6_updatebutton2.Text = "Security"
$Tab6_updatebutton2.Add_Click({start-process powershell -verb runas {
	Write-Host "Disabling driver offering through Windows Update..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -Type DWord -Value 1
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -Type DWord -Value 1
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -Type DWord -Value 1
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -Type DWord -Value 0
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -Type DWord -Value 1
	Write-Host "Disabling Windows Update automatic restart..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -Type DWord -Value 1
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -Type DWord -Value 0
	Write-Host "Disabled driver offering through Windows Update"
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" -Name "BranchReadinessLevel" -Type DWord -Value 20
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" -Name "DeferFeatureUpdatesPeriodInDays" -Type DWord -Value 365
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" -Name "DeferQualityUpdatesPeriodInDays " -Type DWord -Value 4
	Write-Host "Updates Set to Recommended"
}})
$tab6.Controls.Add($Tab6_updatebutton2)

$Tab6_updatebutton3 = New-Object System.Windows.Forms.Button
$Tab6_updatebutton3.Location = New-Object System.Drawing.Point(440,50)
$Tab6_updatebutton3.Size = New-Object System.Drawing.Size(200,25)
$Tab6_updatebutton3.Text = "Disabled"
$Tab6_updatebutton3.Add_Click({start-process powershell -verb runas {
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoUpdate" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUOptions" -Type DWord -Value 1
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 0
    
    $services = @(
        "BITS"
        "wuauserv"
    )

    foreach ($service in $services) {
        # -ErrorAction SilentlyContinue is so it doesn't write an error to stdout if a service doesn't exist

        Write-Host "Setting $service StartupType to Disabled"
        Get-Service -Name $service -ErrorAction SilentlyContinue | Set-Service -StartupType Disabled
    }
    Write-Host "Updates ARE DISABLED"
}})
$tab6.Controls.Add($Tab6_updatebutton3)


$Tab6_updatebutton4 = New-Object System.Windows.Forms.Button
$Tab6_updatebutton4.Location = New-Object System.Drawing.Point(540,350)
$Tab6_updatebutton4.Size = New-Object System.Drawing.Size(100,25)
$Tab6_updatebutton4.Text = "Factory"
$Tab6_updatebutton4.Add_Click({start-process powershell -verb runas {
	Write-Host "1. Stopping Windows Update Services..." 
	Stop-Service -Name BITS 
	Stop-Service -Name wuauserv 
	Stop-Service -Name appidsvc 
	Stop-Service -Name cryptsvc 

	Write-Host "2. Remove QMGR Data file..." 
	Remove-Item "$env:allusersprofile\Application Data\Microsoft\Network\Downloader\qmgr*.dat" -ErrorAction SilentlyContinue 

	Write-Host "3. Renaming the Software Distribution and CatRoot Folder..." 
	Rename-Item $env:systemroot\SoftwareDistribution SoftwareDistribution.bak -ErrorAction SilentlyContinue 
	Rename-Item $env:systemroot\System32\Catroot2 catroot2.bak -ErrorAction SilentlyContinue 

	Write-Host "4. Removing old Windows Update log..." 
	Remove-Item $env:systemroot\WindowsUpdate.log -ErrorAction SilentlyContinue 

	Write-Host "5. Resetting the Windows Update Services to defualt settings..." 
	"sc.exe sdset bits D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)" 
	"sc.exe sdset wuauserv D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)" 
	Set-Location $env:systemroot\system32 

	Write-Host "6. Registering some DLLs..." 
	regsvr32.exe /s atl.dll 
	regsvr32.exe /s urlmon.dll 
	regsvr32.exe /s mshtml.dll 
	regsvr32.exe /s shdocvw.dll 
	regsvr32.exe /s browseui.dll 
	regsvr32.exe /s jscript.dll 
	regsvr32.exe /s vbscript.dll 
	regsvr32.exe /s scrrun.dll 
	regsvr32.exe /s msxml.dll 
	regsvr32.exe /s msxml3.dll 
	regsvr32.exe /s msxml6.dll 
	regsvr32.exe /s actxprxy.dll 
	regsvr32.exe /s softpub.dll 
	regsvr32.exe /s wintrust.dll 
	regsvr32.exe /s dssenh.dll 
	regsvr32.exe /s rsaenh.dll 
	regsvr32.exe /s gpkcsp.dll 
	regsvr32.exe /s sccbase.dll 
	regsvr32.exe /s slbcsp.dll 
	regsvr32.exe /s cryptdlg.dll 
	regsvr32.exe /s oleaut32.dll 
	regsvr32.exe /s ole32.dll 
	regsvr32.exe /s shell32.dll 
	regsvr32.exe /s initpki.dll 
	regsvr32.exe /s wuapi.dll 
	regsvr32.exe /s wuaueng.dll 
	regsvr32.exe /s wuaueng1.dll 
	regsvr32.exe /s wucltui.dll 
	regsvr32.exe /s wups.dll 
	regsvr32.exe /s wups2.dll 
	regsvr32.exe /s wuweb.dll 
	regsvr32.exe /s qmgr.dll 
	regsvr32.exe /s qmgrprxy.dll 
	regsvr32.exe /s wucltux.dll 
	regsvr32.exe /s muweb.dll 
	regsvr32.exe /s wuwebv.dll 

	Write-Host "7) Removing WSUS client settings..." 
	REG DELETE "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v AccountDomainSid /f 
	REG DELETE "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v PingID /f 
	REG DELETE "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v SusClientId /f 

	Write-Host "8) Resetting the WinSock..." 
	netsh winsock reset 
	netsh winhttp reset proxy 
	netsh int ip reset

	Write-Host "9) Delete all BITS jobs..." 
	Get-BitsTransfer | Remove-BitsTransfer 

	Write-Host "10) Attempting to install the Windows Update Agent..." 
	If (!((wmic OS get OSArchitecture | Out-String).IndexOf("64") -eq -1)) { 
		wusa Windows8-RT-KB2937636-x64 /quiet 
	}
	else { 
		wusa Windows8-RT-KB2937636-x86 /quiet 
	} 

	Write-Host "11) Starting Windows Update Services..." 
	Start-Service -Name BITS 
	Start-Service -Name wuauserv 
	Start-Service -Name appidsvc 
	Start-Service -Name cryptsvc 

	Write-Host "12) Forcing discovery..." 
	wuauclt /resetauthorization /detectnow 

	Write-Host "Process complete. Please reboot your computer."

	$ButtonType = [System.Windows.MessageBoxButton]::OK
	$MessageboxTitle = "Reset Windows Update "
	$Messageboxbody = ("Stock settings loaded.`n Please reboot your computer")
	$MessageIcon = [System.Windows.MessageBoxImage]::Information

	[System.Windows.MessageBox]::Show($Messageboxbody, $MessageboxTitle, $ButtonType, $MessageIcon)
	Write-Host "Reset ALL Updates to Factory"
}})
$Tab6.Controls.Add($Tab6_updatebutton4)

# TAB 7
#----------------------------------------------

$tab7 = New-object System.Windows.Forms.Tabpage
$tab7.DataBindings.DefaultDataSourceUpdateMode = 0 
$tab7.Name = "tab7" 
$tab7.Text = "Tweaks”
$FormTabControl.Controls.Add($tab7)

# window label
$Tab7_label1 = New-Object System.Windows.Forms.Label
$Tab7_label1.Location = New-Object System.Drawing.Point(10,10)
$Tab7_label1.AutoSize = $true
$Tab7_label1.Font = New-Object System.Drawing.Font('verdana',16)
$Tab7_label1.ForeColor = "#000000"
$Tab7_label1.Text = ("Essential")
$tab7.Controls.Add($Tab7_label1)

$Tab7_label2 = New-Object System.Windows.Forms.Label
$Tab7_label2.Location = New-Object System.Drawing.Point(280,10)
$Tab7_label2.AutoSize = $true
$Tab7_label2.Font = New-Object System.Drawing.Font('verdana',16)
$Tab7_label2.ForeColor = "#000000"
$Tab7_label2.Text = ("Misc")
$tab7.Controls.Add($Tab7_label2)


$Tab7_Tweakbutton1 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton1.Location = New-Object System.Drawing.Point(10,50)
$Tab7_Tweakbutton1.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton1.Text = "Create Restore Point"
$Tab7_Tweakbutton1.Add_Click({start-process powershell -verb runas {
	Enable-ComputerRestore -Drive "C:\"
	Checkpoint-Computer -Description "RestorePoint1" -RestorePointType "MODIFY_SETTINGS"
}})
$tab7.Controls.Add($Tab7_Tweakbutton1)



$Tab7_Tweakbutton2 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton2.Location = New-Object System.Drawing.Point(10,75)
$Tab7_Tweakbutton2.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton2.Text = "O&O Shutup"
$Tab7_Tweakbutton2.Add_Click({start-process powershell -verb runas {
	Import-Module BitsTransfer
	Start-BitsTransfer -Source "https://raw.githubusercontent.com/Gren-95/efe-toolbox/main/ooshutup10.cfg" -Destination ooshutup10.cfg
	Start-BitsTransfer -Source "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -Destination OOSU10.exe
	./OOSU10.exe ooshutup10.cfg /quiet
}})
$tab7.Controls.Add($Tab7_Tweakbutton2)


$Tab7_Tweakbutton3 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton3.Location = New-Object System.Drawing.Point(10,100)
$Tab7_Tweakbutton3.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton3.Text = "Disable Telemetry"
$Tab7_Tweakbutton3.Add_Click({start-process powershell -verb runas {
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\ProgramDataUpdater" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Autochk\Proxy" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" | Out-Null
	Write-Host "Disabling Application suggestions..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "ContentDeliveryAllowed" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "OemPreInstalledAppsEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEverEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338387Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353698Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Type DWord -Value 0
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -Type DWord -Value 1
	Write-Host "Disabling Feedback..."
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Type DWord -Value 1
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClient" -ErrorAction SilentlyContinue | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" -ErrorAction SilentlyContinue | Out-Null
	Write-Host "Disabling Tailored Experiences..."
	If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
		New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -Type DWord -Value 1
	Write-Host "Disabling Advertising ID..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -Type DWord -Value 1
	Write-Host "Disabling Error reporting..."
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -Type DWord -Value 1
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Windows Error Reporting\QueueReporting" | Out-Null
	Write-Host "Restricting Windows Update P2P only to local network..."
	If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 1
	Write-Host "Stopping and disabling Diagnostics Tracking Service..."
	Stop-Service "DiagTrack" -WarningAction SilentlyContinue
	Set-Service "DiagTrack" -StartupType Disabled
	Write-Host "Stopping and disabling WAP Push Service..."
	Stop-Service "dmwappushservice" -WarningAction SilentlyContinue
	Set-Service "dmwappushservice" -StartupType Disabled
	Write-Host "Enabling F8 boot menu options..."
	bcdedit /set `{current`} bootmenupolicy Legacy | Out-Null
	Write-Host "Disabling Remote Assistance..."
	Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Type DWord -Value 0
	Write-Host "Stopping and disabling Superfetch service..."
	Stop-Service "SysMain" -WarningAction SilentlyContinue
	Set-Service "SysMain" -StartupType Disabled

	# Task Manager Details
	If ((get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" -Name CurrentBuild).CurrentBuild -lt 22557) {
		Write-Host "Showing task manager details..."
		$taskmgr = Start-Process -WindowStyle Hidden -FilePath taskmgr.exe -PassThru
		Do {
			  Start-Sleep -Milliseconds 100
			$preferences = Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -ErrorAction SilentlyContinue
		} Until ($preferences)
		Stop-Process $taskmgr
		$preferences.Preferences[28] = 0
		Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -Type Binary -Value $preferences.Preferences
	} else {Write-Host "Task Manager patch not run in builds 22557+ due to bug"}

	Write-Host "Showing file operations details..."
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -Type DWord -Value 1
	Write-Host "Hiding Task View button..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 0
	Write-Host "Hiding People icon..."
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Type DWord -Value 0

	Write-Host "Changing default Explorer view to This PC..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1

	Write-Host "Hiding 3D Objects icon from This PC..."
	Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -Recurse -ErrorAction SilentlyContinue  
	
	## Performance Tweaks and More Telemetry
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" -Name "SearchOrderConfig" -Type DWord -Value 00000000
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" -Name "SystemResponsiveness" -Type DWord -Value 0000000a
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" -Name "NetworkThrottlingIndex" -Type DWord -Value 0000000a
		Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control" -Name "WaitToKillServiceTimeout" -Type DWord -Value 2000
		Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "MenuShowDelay" -Type DWord -Value 0
		Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "WaitToKillAppTimeout" -Type DWord -Value 5000
		Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "HungAppTimeout" -Type DWord -Value 4000
		Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "AutoEndTasks" -Type DWord -Value 1
		Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "LowLevelHooksTimeout" -Type DWord -Value 00001000
		Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "WaitToKillServiceTimeout" -Type DWord -Value 00002000
		Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" -Name "ClearPageFileAtShutdown" -Type DWord -Value 00000001
		Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Services\Ndu" -Name "Start" -Type DWord -Value 00000004
		Set-ItemProperty -Path "HKLM:\Control Panel\Mouse" -Name "MouseHoverTime" -Type DWord -Value 00000010


		# Network Tweaks
		Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "IRPStackSize" -Type DWord -Value 20

		# Group svchost.exe processes
		$ram = (Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1kb
		Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control" -Name "SvcHostSplitThresholdInKB" -Type DWord -Value $ram -Force

		Write-Host "Disable News and Interests"
		Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" -Name "EnableFeeds" -Type DWord -Value 0
		# Remove "News and Interest" from taskbar
		Set-ItemProperty -Path  "HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds" -Name "ShellFeedsTaskbarViewMode" -Type DWord -Value 2

		# remove "Meet Now" button from taskbar

		If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
			New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Force | Out-Null
		}

	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "HideSCAMeetNow" -Type DWord -Value 1

	Write-Host "Removing AutoLogger file and restricting directory..."
	$autoLoggerDir = "$env:PROGRAMDATA\Microsoft\Diagnosis\ETLLogs\AutoLogger"
	If (Test-Path "$autoLoggerDir\AutoLogger-Diagtrack-Listener.etl") {
		Remove-Item "$autoLoggerDir\AutoLogger-Diagtrack-Listener.etl"
	}
	icacls $autoLoggerDir /deny SYSTEM:`(OI`)`(CI`)F | Out-Null
	Write-Host "Stopping and disabling Diagnostics Tracking Service..."
	Stop-Service "DiagTrack"
	Set-Service "DiagTrack" -StartupType Disabled
}})
$tab7.Controls.Add($Tab7_Tweakbutton3)


$Tab7_Tweakbutton4 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton4.Location = New-Object System.Drawing.Point(10,125)
$Tab7_Tweakbutton4.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton4.Text = "Disable Wifi-Sense"
$Tab7_Tweakbutton4.Add_Click({start-process powershell -verb runas {
	If (!(Test-Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting")) {
		New-Item -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Name "Value" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" -Name "Value" -Type DWord -Value 0
}})
$tab7.Controls.Add($Tab7_Tweakbutton4)


$Tab7_Tweakbutton5 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton5.Location = New-Object System.Drawing.Point(10,150)
$Tab7_Tweakbutton5.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton5.Text = "Disable Activity History"
$Tab7_Tweakbutton5.Add_Click({start-process powershell -verb runas {
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -Type DWord -Value 0
}})
$tab7.Controls.Add($Tab7_Tweakbutton5)


$Tab7_Tweakbutton6 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton6.Location = New-Object System.Drawing.Point(10,175)
$Tab7_Tweakbutton6.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton6.Text = "Delete Temporary Files"
$Tab7_Tweakbutton6.Add_Click({start-process powershell -verb runas {
	Get-ChildItem -Path "C:\Windows\Temp" *.* -Recurse | Remove-Item -Force -Recurse
	Get-ChildItem -Path $env:TEMP *.* -Recurse | Remove-Item -Force -Recurse
}})
$tab7.Controls.Add($Tab7_Tweakbutton6)


$Tab7_Tweakbutton7 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton7.Location = New-Object System.Drawing.Point(10,200)
$Tab7_Tweakbutton7.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton7.Text = "Disable Location Tracking"
$Tab7_Tweakbutton7.Add_Click({start-process powershell -verb runas {
	If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Deny"
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 0
	Write-Host "Disabling automatic Maps updates..."
	Set-ItemProperty -Path "HKLM:\SYSTEM\Maps" -Name "AutoUpdateEnabled" -Type DWord -Value 0
}})
$tab7.Controls.Add($Tab7_Tweakbutton7)


$Tab7_Tweakbutton8 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton8.Location = New-Object System.Drawing.Point(10,225)
$Tab7_Tweakbutton8.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton8.Text = "Disable Indexing"
$Tab7_Tweakbutton8.Add_Click({start-process powershell -verb runas {
Set-Content stop "wsearch"
Set-Content config "wsearch" start=disabled
}})
$tab7.Controls.Add($Tab7_Tweakbutton8)


$Tab7_Tweakbutton9 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton9.Location = New-Object System.Drawing.Point(10,250)
$Tab7_Tweakbutton9.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton9.Text = "Disable Storage Sense"
$Tab7_Tweakbutton9.Add_Click({start-process powershell -verb runas {
	Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Recurse -ErrorAction SilentlyContinue
}})
$tab7.Controls.Add($Tab7_Tweakbutton9)


$Tab7_Tweakbutton10 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton10.Location = New-Object System.Drawing.Point(10,275)
$Tab7_Tweakbutton10.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton10.Text = "Disable Hibernation"
$Tab7_Tweakbutton10.Add_Click({start-process powershell -verb runas {
	Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernateEnabled" -Type Dword -Value 0
	If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings")) {
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type Dword -Value 0
}})
$tab7.Controls.Add($Tab7_Tweakbutton10)


$Tab7_Tweakbutton11 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton11.Location = New-Object System.Drawing.Point(10,300)
$Tab7_Tweakbutton11.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton11.Text = "Disable GameDVR"
$Tab7_Tweakbutton11.Add_Click({start-process powershell -verb runas {
	If (!(Test-Path "HKCU:\System\GameConfigStore")) {
		New-Item -Path "HKCU:\System\GameConfigStore" -Force
	}
	Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_DXGIHonorFSEWindowsCompatible" -Type DWord -Value 0 -Force
	Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_HonorUserFSEBehaviorMode" -Type DWord -Value 0 -Force
	Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_EFSEFeatureFlags" -Type DWord -Value 0 -Force
	Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_Enabled" -Type DWord -Value 0 -Force
}})
$tab7.Controls.Add($Tab7_Tweakbutton11)


$Tab7_Tweakbutton12 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton12.Location = New-Object System.Drawing.Point(10,325)
$Tab7_Tweakbutton12.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton12.Text = "Set Services to Manual"
$Tab7_Tweakbutton12.Add_Click({start-process powershell -verb runas {
 # Set Services to Manual 

 $services = @(
	"ALG"                                          # Application Layer Gateway Service(Provides support for 3rd party protocol plug-ins for Internet Connection Sharing)
	"AJRouter"                                     # Needed for AllJoyn Router Service
	"BcastDVRUserService_48486de"                  # GameDVR and Broadcast is used for Game Recordings and Live Broadcasts
	#"BDESVC"                                      # Bitlocker Drive Encryption Service
	#"BFE"                                         # Base Filtering Engine (Manages Firewall and Internet Protocol security)
	#"BluetoothUserService_48486de"                # Bluetooth user service supports proper functionality of Bluetooth features relevant to each user session.
	#"BrokerInfrastructure"                        # Windows Infrastructure Service (Controls which background tasks can run on the system)
	"Browser"                                      # Let users browse and locate shared resources in neighboring computers
	"BthAvctpSvc"                                  # AVCTP service (needed for Bluetooth Audio Devices or Wireless Headphones)
	"CaptureService_48486de"                       # Optional screen capture functionality for applications that call the Windows.Graphics.Capture API.
	"cbdhsvc_48486de"                              # Clipboard Service
	"diagnosticshub.standardcollector.service"     # Microsoft (R) Diagnostics Hub Standard Collector Service
	"DiagTrack"                                    # Diagnostics Tracking Service
	"dmwappushservice"                             # WAP Push Message Routing Service
	"DPS"                                          # Diagnostic Policy Service (Detects and Troubleshoots Potential Problems)
	"edgeupdate"                                   # Edge Update Service
	"edgeupdatem"                                  # Another Update Service
	#"EntAppSvc"                                    # Enterprise Application Management.
	"Fax"                                          # Fax Service
	"fhsvc"                                        # Fax History
	"FontCache"                                    # Windows font cache
	#"FrameServer"                                 # Windows Camera Frame Server (Allows multiple clients to access video frames from camera devices)
	"gupdate"                                      # Google Update
	"gupdatem"                                     # Another Google Update Service
	"iphlpsvc"                                     # ipv6(Most websites use ipv4 instead)
	"lfsvc"                                        # Geolocation Service
	#"LicenseManager"                              # Disable LicenseManager (Windows Store may not work properly)
	"lmhosts"                                      # TCP/IP NetBIOS Helper
	"MapsBroker"                                   # Downloaded Maps Manager
	"MicrosoftEdgeElevationService"                # Another Edge Update Service
	"MSDTC"                                        # Distributed Transaction Coordinator
	"NahimicService"                               # Nahimic Service
	#"ndu"                                          # Windows Network Data Usage Monitor (Disabling Breaks Task Manager Per-Process Network Monitoring)
	"NetTcpPortSharing"                            # Net.Tcp Port Sharing Service
	"PcaSvc"                                       # Program Compatibility Assistant Service
	"PerfHost"                                     # Remote users and 64-bit processes to query performance.
	"PhoneSvc"                                     # Phone Service(Manages the telephony state on the device)
	#"PNRPsvc"                                     # Peer Name Resolution Protocol (Some peer-to-peer and collaborative applications, such as Remote Assistance, may not function, Discord will still work)
	#"p2psvc"                                      # Peer Name Resolution Protocol(Enables multi-party communication using Peer-to-Peer Grouping.  If disabled, some applications, such as HomeGroup, may not function. Discord will still work)iscord will still work)
	#"p2pimsvc"                                    # Peer Networking Identity Manager (Peer-to-Peer Grouping services may not function, and some applications, such as HomeGroup and Remote Assistance, may not function correctly. Discord will still work)
	"PrintNotify"                                  # Windows printer notifications and extentions
	"QWAVE"                                        # Quality Windows Audio Video Experience (audio and video might sound worse)
	"RemoteAccess"                                 # Routing and Remote Access
	"RemoteRegistry"                               # Remote Registry
	"RetailDemo"                                   # Demo Mode for Store Display
	"RtkBtManServ"                                 # Realtek Bluetooth Device Manager Service
	"SCardSvr"                                     # Windows Smart Card Service
	"seclogon"                                     # Secondary Logon (Disables other credentials only password will work)
	"SEMgrSvc"                                     # Payments and NFC/SE Manager (Manages payments and Near Field Communication (NFC) based secure elements)
	"SharedAccess"                                 # Internet Connection Sharing (ICS)
	#"Spooler"                                     # Printing
	"stisvc"                                       # Windows Image Acquisition (WIA)
	#"StorSvc"                                     # StorSvc (usb external hard drive will not be reconized by windows)
	"SysMain"                                      # Analyses System Usage and Improves Performance
	"TrkWks"                                       # Distributed Link Tracking Client
	#"WbioSrvc"                                    # Windows Biometric Service (required for Fingerprint reader / facial detection)
	"WerSvc"                                       # Windows error reporting
	"wisvc"                                        # Windows Insider program(Windows Insider will not work if Disabled)
	#"WlanSvc"                                     # WLAN AutoConfig
	"WMPNetworkSvc"                                # Windows Media Player Network Sharing Service
	"WpcMonSvc"                                    # Parental Controls
	"WPDBusEnum"                                   # Portable Device Enumerator Service
	"WpnService"                                   # WpnService (Push Notifications may not work)
	#"wscsvc"                                      # Windows Security Center Service
	"WSearch"                                      # Windows Search
	"XblAuthManager"                               # Xbox Live Auth Manager (Disabling Breaks Xbox Live Games)
	"XblGameSave"                                  # Xbox Live Game Save Service (Disabling Breaks Xbox Live Games)
	"XboxNetApiSvc"                                # Xbox Live Networking Service (Disabling Breaks Xbox Live Games)
	"XboxGipSvc"                                   # Xbox Accessory Management Service
	# Hp services
	"HPAppHelperCap"
	"HPDiagsCap"
	"HPNetworkCap"
	"HPSysInfoCap"
	"HpTouchpointAnalyticsService"
	# Hyper-V services
	"HvHost"
	"vmicguestinterface"
	"vmicheartbeat"
	"vmickvpexchange"
	"vmicrdv"
	"vmicshutdown"
	"vmictimesync"
	"vmicvmsession"
	# Services that cannot be disabled
	#"WdNisSvc"
)

foreach ($service in $services) {
	# -ErrorAction SilentlyContinue is so it doesn't write an error to stdout if a service doesn't exist

	Write-Host "Setting $service StartupType to Manual"
	Get-Service -Name $service -ErrorAction SilentlyContinue | Set-Service -StartupType Manual
}
}})
$tab7.Controls.Add($Tab7_Tweakbutton12)


$Tab7_Tweakbutton13 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton13.Location = New-Object System.Drawing.Point(340,50)
$Tab7_Tweakbutton13.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton13.Text = "Disable Power Throttling"
$Tab7_Tweakbutton13.Add_Click({start-process powershell -verb runas {
If (Test-Path "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling") {
	Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" -Name "PowerThrottlingOff" -Type DWord -Value 00000001
}
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name "HiberbootEnabled" -Type DWord -Value 0000000
}})
$tab7.Controls.Add($Tab7_Tweakbutton13)


$Tab7_Tweakbutton14 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton14.Location = New-Object System.Drawing.Point(340,75)
$Tab7_Tweakbutton14.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton14.Text = "Enable Power Throttling"
$Tab7_Tweakbutton14.Add_Click({start-process powershell -verb runas {
	If (Test-Path "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling") {
		Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" -Name "PowerThrottlingOff" -Type DWord -Value 00000000
	}
	Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name "HiberbootEnabled" -Type DWord -Value 0000001
}})
$tab7.Controls.Add($Tab7_Tweakbutton14)


$Tab7_Tweakbutton15 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton15.Location = New-Object System.Drawing.Point(340,100)
$Tab7_Tweakbutton15.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton15.Text = "Enable NumLock on Startup"
$Tab7_Tweakbutton15.Add_Click({start-process powershell -verb runas {
	If (!(Test-Path "HKU:")) {
		New-PSDrive -Name HKU -PSProvider Registry -Root HKEY_USERS | Out-Null
	}
	Set-ItemProperty -Path "HKU:\.DEFAULT\Control Panel\Keyboard" -Name "InitialKeyboardIndicators" -Type DWord -Value 2
}})
$tab7.Controls.Add($Tab7_Tweakbutton15)


$Tab7_Tweakbutton16 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton16.Location = New-Object System.Drawing.Point(340,125)
$Tab7_Tweakbutton16.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton16.Text = "Disable NumLock on Startup"
$Tab7_Tweakbutton16.Add_Click({start-process powershell -verb runas {
	If (!(Test-Path "HKU:")) {
		New-PSDrive -Name HKU -PSProvider Registry -Root HKEY_USERS | Out-Null
	}
	Set-ItemProperty -Path "HKU:\.DEFAULT\Control Panel\Keyboard" -Name "InitialKeyboardIndicators" -Type DWord -Value 0
}})
$tab7.Controls.Add($Tab7_Tweakbutton16)


$Tab7_Tweakbutton17 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton17.Location = New-Object System.Drawing.Point(340,150)
$Tab7_Tweakbutton17.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton17.Text = "Show File Extensions"
$Tab7_Tweakbutton17.Add_Click({start-process powershell -verb runas {
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0
}})
$tab7.Controls.Add($Tab7_Tweakbutton17)


$Tab7_Tweakbutton18 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton18.Location = New-Object System.Drawing.Point(340,175)
$Tab7_Tweakbutton18.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton18.Text = "Set Display for Performance"
$Tab7_Tweakbutton18.Add_Click({start-process powershell -verb runas {
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 0
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 200
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](144, 18, 3, 128, 16, 0, 0, 0))
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 0
	Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 0
}})
$tab7.Controls.Add($Tab7_Tweakbutton18)


$Tab7_Tweakbutton19 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton19.Location = New-Object System.Drawing.Point(340,200)
$Tab7_Tweakbutton19.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton19.Text = "Set Time to UTC"
$Tab7_Tweakbutton19.Add_Click({start-process powershell -verb runas {
	Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "RealTimeIsUniversal" -Type DWord -Value 1
}})
$tab7.Controls.Add($Tab7_Tweakbutton19)


$Tab7_Tweakbutton20 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton20.Location = New-Object System.Drawing.Point(340,200)
$Tab7_Tweakbutton20.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton20.Text = "Remove all MS Store Apps"
$Tab7_Tweakbutton20.Add_Click({start-process powershell -verb runas {
	Get-AppxPackage | Remove-AppPackage
}})
$tab7.Controls.Add($Tab7_Tweakbutton20)


$Tab7_Tweakbutton21 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton21.Location = New-Object System.Drawing.Point(340,225)
$Tab7_Tweakbutton21.Size = New-Object System.Drawing.Size(320,25)
$Tab7_Tweakbutton21.Text = "Disable UAC"
$Tab7_Tweakbutton21.Add_Click({start-process powershell -verb runas {
	Set-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin -Value 0
}})
$tab7.Controls.Add($Tab7_Tweakbutton21)


$Tab7_Tweakbutton22 = New-Object System.Windows.Forms.Button
$Tab7_Tweakbutton22.Location = New-Object System.Drawing.Point(10,50)
$Tab7_Tweakbutton22.Size = New-Object System.Drawing.Size(200,25)
$Tab7_Tweakbutton22.Text = "Undo All Tweaks"
$Tab7_Tweakbutton22.Add_Click({start-process powershell -verb runas {
	Write-Host "Creating Restore Point in case something bad happens"
        Enable-ComputerRestore -Drive "$env:SystemDrive"
        Checkpoint-Computer -Description "RestorePoint1" -RestorePointType "MODIFY_SETTINGS"

        Write-Host "Enabling Telemetry..."
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 1
        Write-Host "Enabling Wi-Fi Sense"
        Set-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Name "Value" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" -Name "Value" -Type DWord -Value 1
        Write-Host "Enabling Application suggestions..."
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "ContentDeliveryAllowed" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "OemPreInstalledAppsEnabled" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEnabled" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEverEnabled" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338387Enabled" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353698Enabled" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Type DWord -Value 1
        If (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent") {
            Remove-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Recurse -ErrorAction SilentlyContinue
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -Type DWord -Value 0
        Write-Host "Enabling Activity History..."
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -Type DWord -Value 1
        Write-Host "Enable Location Tracking..."
        If (Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location") {
            Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Recurse -ErrorAction SilentlyContinue
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Allow"
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 1
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 1
        Write-Host "Enabling automatic Maps updates..."
        Set-ItemProperty -Path "HKLM:\SYSTEM\Maps" -Name "AutoUpdateEnabled" -Type DWord -Value 1
        Write-Host "Enabling Feedback..."
        If (Test-Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules") {
            Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Recurse -ErrorAction SilentlyContinue
        }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -Type DWord -Value 0
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Type DWord -Value 0
        Write-Host "Enabling Tailored Experiences..."
        If (Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent") {
            Remove-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Recurse -ErrorAction SilentlyContinue
        }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -Type DWord -Value 0
        Write-Host "Disabling Advertising ID..."
        If (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo") {
            Remove-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Recurse -ErrorAction SilentlyContinue
        }
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -Type DWord -Value 0
        Write-Host "Allow Error reporting..."
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -Type DWord -Value 0
        Write-Host "Allowing Diagnostics Tracking Service..."
        Stop-Service "DiagTrack" -WarningAction SilentlyContinue
        Set-Service "DiagTrack" -StartupType Manual
        Write-Host "Allowing WAP Push Service..."
        Stop-Service "dmwappushservice" -WarningAction SilentlyContinue
        Set-Service "dmwappushservice" -StartupType Manual
        Write-Host "Allowing Home Groups services..."
        Stop-Service "HomeGroupListener" -WarningAction SilentlyContinue
        Set-Service "HomeGroupListener" -StartupType Manual
        Stop-Service "HomeGroupProvider" -WarningAction SilentlyContinue
        Set-Service "HomeGroupProvider" -StartupType Manual
        Write-Host "Enabling Storage Sense..."
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" | Out-Null
        Write-Host "Allowing Superfetch service..."
        Stop-Service "SysMain" -WarningAction SilentlyContinue
        Set-Service "SysMain" -StartupType Manual
        Write-Host "Setting BIOS time to Local Time instead of UTC..."
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "RealTimeIsUniversal" -Type DWord -Value 0
        Write-Host "Enabling Hibernation..."
        Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernteEnabled" -Type Dword -Value 1
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type Dword -Value 1
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" -Name "NoLockScreen" -ErrorAction SilentlyContinue

        Write-Host "Hiding file operations details..."
        If (Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager") {
            Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Recurse -ErrorAction SilentlyContinue
        }
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -Type DWord -Value 0
        Write-Host "Showing Task View button..."
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Type DWord -Value 1

        Write-Host "Changing default Explorer view to Quick Access..."
        Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1

        Write-Host "Unrestricting AutoLogger directory"
        $autoLoggerDir = "$env:PROGRAMDATA\Microsoft\Diagnosis\ETLLogs\AutoLogger"
        icacls $autoLoggerDir /grant:r SYSTEM:`(OI`)`(CI`)F | Out-Null

        Write-Host "Enabling and starting Diagnostics Tracking Service"
        Set-Service "DiagTrack" -StartupType Automatic
        Start-Service "DiagTrack"

        Write-Host "Hiding known file extensions"
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 1

        Write-Host "Reset Local Group Policies to Stock Defaults"
        # cmd /c secedit /configure /cfg %windir%\inf\defltbase.inf /db defltbase.sdb /verbose
        cmd /c RD /S /Q "%WinDir%\System32\GroupPolicyUsers"
        cmd /c RD /S /Q "%WinDir%\System32\GroupPolicy"
        cmd /c gpupdate /force
        # Considered using Invoke-GPUpdate but requires module most people won't have installed

        Write-Output "Adjusting visual effects for appearance..."
        Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 1
        Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 400
        Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](158, 30, 7, 128, 18, 0, 0, 0))
        Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 1
        Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 1
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 1
        Remove-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "HungAppTimeout" -ErrorAction SilentlyContinue
        Write-Host "Restoring Clipboard History..."
        Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Clipboard" -Name "EnableClipboardHistory" -ErrorAction SilentlyContinue
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "AllowClipboardHistory" -ErrorAction SilentlyContinue
        Write-Host "Done - Reverted to Stock Settings"
}})
$tab7.Controls.Add($Tab7_Tweakbutton22)

# TAB 10
#----------------------------------------------

$tab10 = New-object System.Windows.Forms.Tabpage
$Tab10.DataBindings.DefaultDataSourceUpdateMode = 0 
$tab10.Name = "tab10" 
$tab10.Text = "About” 
$FormTabControl.Controls.Add($tab10)

# window label
$tab10_label1 = New-Object System.Windows.Forms.Label
$tab10_label1.Location = New-Object System.Drawing.Point(10,10)
$tab10_label1.AutoSize = $true
$tab10_label1.Font = New-Object System.Drawing.Font('verdana',26,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$tab10_label1.ForeColor = "#000000"
$tab10_label1.Text =("Efe's Toolbox")
$tab10.Controls.Add($tab10_label1)


# window label
$label2 = New-Object System.Windows.Forms.Label
$label2.Location = New-Object System.Drawing.Point(10,90)
$label2.AutoSize = $true
$label2.Font = New-Object System.Drawing.Font('verdana',12)
$label2.ForeColor = "#000000"
#$label2.backColor = "#b3b3b3"
$label2.Text = ("Efe's Toolbox is designed by a student`nwho has gotten bored and found coding interesting.")
$tab10.Controls.Add($label2)

# link1
$link1 = New-Object System.Windows.Forms.LinkLabel
$link1.Location = New-Object System.Drawing.Point(10,150)
#$label.AutoSize = $true
#$label2.AutoSize.DisabledLinkColor = 'Blue'
$link1.VisitedLinkColor = 'Red'
$link1.LinkBehavior = 'HoverUnderline'
$link1.LinkColor = 'Navy'
$link1.Font = New-Object System.Drawing.Font('arial',10)
$link1.ForeColor = "#000000"
$link1.Text = ("Github Page")
$link1.add_click({explorer "https://github.com/Greninja9559/efe-toolbox"})
$tab10.Controls.Add($link1)

# link2
$link2 = New-Object System.Windows.Forms.LinkLabel
$link2.Location = New-Object System.Drawing.Point(110,150)
#$link2.AutoSize = $true
#$link2.AutoSize.DisabledLinkColor = 'Blue'
$link2.VisitedLinkColor = 'Red'
$link2.LinkBehavior = 'HoverUnderline'
$link2.LinkColor = 'Navy'
$link2.Font = New-Object System.Drawing.Font('arial',10)
$link2.ForeColor = "#000000"
#$link2.backColor = "#b3b3b3"
$link2.Text = ("Report issues")
$link2.add_click({explorer "https://github.com/Greninja9559/efe-toolbox/issues"})
$tab10.Controls.Add($link2)

# window label
$label3 = New-Object System.Windows.Forms.Label
$label3.Location = New-Object System.Drawing.Point(590,400)
$label3.AutoSize = $true
$label3.Font = New-Object System.Drawing.Font('arial',8)
$label3.ForeColor = "#000000"
$label3.Text = ("Made in 2022")
$tab10.Controls.Add($label3)

# Initlize the form
$ApplicationForm.Add_Shown({$ApplicationForm.Activate()})
[void] $ApplicationForm.ShowDialog()