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
$Tab2.Text = "Tweaks” 
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

$checkBox9 = New-Object System.Windows.Forms.CheckBox
$checkBox10 = New-Object System.Windows.Forms.CheckBox
$checkBox11 = New-Object System.Windows.Forms.CheckBox
$checkBox12 = New-Object System.Windows.Forms.CheckBox
$checkBox13 = New-Object System.Windows.Forms.CheckBox
$checkBox14 = New-Object System.Windows.Forms.CheckBox
$checkBox15 = New-Object System.Windows.Forms.CheckBox
$checkBox16 = New-Object System.Windows.Forms.CheckBox
$checkBox17 = New-Object System.Windows.Forms.CheckBox
$checkBox18 = New-Object System.Windows.Forms.CheckBox
$checkBox19 = New-Object System.Windows.Forms.CheckBox
$checkBox20 = New-Object System.Windows.Forms.CheckBox
$checkBox21 = New-Object System.Windows.Forms.CheckBox
$checkBox22 = New-Object System.Windows.Forms.CheckBox
$checkBox23 = New-Object System.Windows.Forms.CheckBox
$checkBox24 = New-Object System.Windows.Forms.CheckBox
$checkBox25 = New-Object System.Windows.Forms.CheckBox
$checkBox26 = New-Object System.Windows.Forms.CheckBox
$checkBox27 = New-Object System.Windows.Forms.CheckBox
$checkBox28 = New-Object System.Windows.Forms.CheckBox
$checkBox29 = New-Object System.Windows.Forms.CheckBox
$checkBox30 = New-Object System.Windows.Forms.CheckBox
$checkBox31 = New-Object System.Windows.Forms.CheckBox
$checkBox32 = New-Object System.Windows.Forms.CheckBox
$checkBox33 = New-Object System.Windows.Forms.CheckBox
$checkBox34 = New-Object System.Windows.Forms.CheckBox
$checkBox35 = New-Object System.Windows.Forms.CheckBox
$checkBox36 = New-Object System.Windows.Forms.CheckBox
$checkBox37 = New-Object System.Windows.Forms.CheckBox
$checkBox38 = New-Object System.Windows.Forms.CheckBox
$checkBox39 = New-Object System.Windows.Forms.CheckBox
$checkBox40 = New-Object System.Windows.Forms.CheckBox
$checkBox41 = New-Object System.Windows.Forms.CheckBox
$checkBox42 = New-Object System.Windows.Forms.CheckBox
$checkBox43 = New-Object System.Windows.Forms.CheckBox
$checkBox44 = New-Object System.Windows.Forms.CheckBox
$checkBox45 = New-Object System.Windows.Forms.CheckBox
$checkBox46 = New-Object System.Windows.Forms.CheckBox
$checkBox47 = New-Object System.Windows.Forms.CheckBox
$checkBox48 = New-Object System.Windows.Forms.CheckBox
$checkBox49 = New-Object System.Windows.Forms.CheckBox
$checkBox50 = New-Object System.Windows.Forms.CheckBox
$checkBox51 = New-Object System.Windows.Forms.CheckBox
$checkBox52 = New-Object System.Windows.Forms.CheckBox
$checkBox53 = New-Object System.Windows.Forms.CheckBox
$checkBox54 = New-Object System.Windows.Forms.CheckBox
$checkBox55 = New-Object System.Windows.Forms.CheckBox
$checkBox56 = New-Object System.Windows.Forms.CheckBox
$checkBox57 = New-Object System.Windows.Forms.CheckBox
$checkBox58 = New-Object System.Windows.Forms.CheckBox
$checkBox59 = New-Object System.Windows.Forms.CheckBox
$checkBox60 = New-Object System.Windows.Forms.CheckBox
$checkBox61 = New-Object System.Windows.Forms.CheckBox
$checkBox62 = New-Object System.Windows.Forms.CheckBox
$checkBox63 = New-Object System.Windows.Forms.CheckBox
$checkBox64 = New-Object System.Windows.Forms.CheckBox
$checkBox65 = New-Object System.Windows.Forms.CheckBox
$checkBox66 = New-Object System.Windows.Forms.CheckBox
$checkBox67 = New-Object System.Windows.Forms.CheckBox
$checkBox68 = New-Object System.Windows.Forms.CheckBox
$checkBox69 = New-Object System.Windows.Forms.CheckBox
$checkBox70 = New-Object System.Windows.Forms.CheckBox
$checkBox71 = New-Object System.Windows.Forms.CheckBox
$checkBox72 = New-Object System.Windows.Forms.CheckBox
$checkBox73 = New-Object System.Windows.Forms.CheckBox
$checkBox74 = New-Object System.Windows.Forms.CheckBox
$checkBox75 = New-Object System.Windows.Forms.CheckBox
$checkBox76 = New-Object System.Windows.Forms.CheckBox
$checkBox77 = New-Object System.Windows.Forms.CheckBox
$checkBox78 = New-Object System.Windows.Forms.CheckBox

#The part that does the installing



$handler_Tab5_installbutton1_Click= 
{
$Tab5_Statusbox1.Items.Clear();
if ($checkBox1.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing firefox..."  ) ; scoop bucket add extras ; scoop install firefox }
if ($checkBox2.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing librewolf..."  ) ; scoop bucket add extras ; scoop install librewolf }
if ($checkBox3.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing brave..."  ) ; scoop bucket add extras ; scoop install brave }
if ($checkBox4.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing googlechrome..."  ) ; scoop bucket add extras ; scoop install googlechrome }
if ($checkBox5.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing chromium..."  ) ; scoop bucket add extras ; scoop install chromium }
if ($checkBox6.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing mpv..."  ) ; scoop bucket add extras ; scoop install mpv }
if ($checkBox7.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing vlc..."  ) ; scoop bucket add extras ; scoop install vlc}
if ($checkBox8.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing audacity..."  ) ; scoop bucket add extras ; scoop install audacity }
if ($checkBox9.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing eartrumpet..."  ) ; scoop bucket add extras ; scoop install eartrumpet }
if ($checkBox10.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing handbrake..."  ) ; scoop bucket add extras ; scoop install handbrake }
if ($checkBox11.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing flameshot..."  ) ; scoop bucket add extras ; scoop install flameshot }
if ($checkBox12.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing obs-studio..."  ) ; scoop bucket add extras ; scoop install obs-studio }
if ($checkBox13.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing blender..."  ) ; scoop bucket add extras ; scoop install blender }
if ($checkBox14.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing gimp..."  ) ; scoop bucket add extras ; scoop install gimp }
if ($checkBox15.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing krita..."  ) ; scoop bucket add extras ; scoop install krita }
if ($checkBox16.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing inkscape..."  ) ; scoop bucket add extras ; scoop install inkscape }
if ($checkBox17.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing soundnode..."  ) ; scoop bucket add extras ; scoop install soundnode }
if ($checkBox18.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing spotify..."  ) ; scoop bucket add extras ; scoop install spotify }
if ($checkBox19.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing youtube-music..."  ) ; scoop bucket add extras ; scoop install youtube-music }
if ($checkBox20.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing cider..."  ) ; scoop bucket add extras ; scoop install cider }
if ($checkBox21.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing deluge..."  ) ; scoop bucket add extras ; scoop install deluge }
if ($checkBox22.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing picotorrent..."  ) ; scoop bucket add extras ; scoop install picotorrent }
if ($checkBox23.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing qbittorrent..."  ) ; scoop bucket add extras ; scoop install qbittorrent }
if ($checkBox24.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing transmission..."  ) ; scoop bucket add extras ; scoop install transmission }
if ($checkBox25.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing zoom..."  ) ; scoop bucket add extras ; scoop install zoom }
if ($checkBox26.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing microsoft-teams..."  ) ; scoop bucket add extras ; scoop install microsoft-teams }
if ($checkBox27.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing telegram..."  ) ; scoop bucket add extras ; scoop install telegram }
if ($checkBox28.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing signal..."  ) ; scoop bucket add extras ; scoop install signal }
if ($checkBox29.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing discord..."  ) ; scoop bucket add extras  ; scoop install discord }
if ($checkBox30.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing caprine..."  ) ; scoop bucket add extras  ; scoop install caprine }
if ($checkBox31.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing libreoffice..."  ) ; scoop bucket add extras  ; scoop install libreoffice }
if ($checkBox32.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing onlyoffice-desktopeditors..."  ) ; scoop bucket add extras  ; scoop install onlyoffice-desktopeditors }
if ($checkBox33.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing office-365-apps-np..."  ) ; scoop bucket add nonportable  ; scoop install office-365-apps-np }
if ($checkBox34.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing foxit-pdf-reader..."  ) ; scoop bucket add extras  ; scoop install foxit-pdf-reader }
if ($checkBox35.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing qalculate..."  ) ; scoop bucket add extras  ; scoop install qalculate }
if ($checkBox36.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing steam..."  ) ; scoop bucket add versions  ; scoop install steam }
if ($checkBox37.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing epicgameslauncher..."  ) ; scoop bucket add chawyehsu_dorado https://github.com/chawyehsu/dorado  ; scoop install epicgameslauncher }
if ($checkBox38.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing gog-galaxy..."  ) ; scoop bucket add anderlli0053_DEV-tools https://github.com/anderlli0053/DEV-tools  ; scoop install gog-galaxy }
if ($checkBox39.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing itch..."  ) ; scoop bucket add games  ; scoop install itch }
if ($checkBox40.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing polymc..."  ) ; scoop bucket add games  ; scoop install polymc }
if ($checkBox41.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing dolphin..."  ) ; scoop bucket add games  ; scoop install dolphin }
if ($checkBox42.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing citra..."  ) ; scoop bucket add games  ; scoop install citra }
if ($checkBox43.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing yuzu..."  ) ; scoop bucket add games  ; scoop install yuzu }
if ($checkBox44.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing dosbox-x..."  ) ; scoop bucket add extras  ; scoop install dosbox-x }
if ($checkBox45.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing loot..."  ) ; scoop bucket add games  ; scoop install loot }
if ($checkBox46.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing mo2..."  ) ; scoop bucket add games  ; scoop install mo2 }
if ($checkBox47.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing vortex..."  ) ; scoop bucket add games  ; scoop install vortex }
if ($checkBox48.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing logitech-gaming-software-np..."  ) ; scoop bucket add nonportable  ; scoop install logitech-gaming-software-np }
if ($checkBox49.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing roundedtb..."  ) ; scoop bucket add extras  ; scoop install roundedtb }
if ($checkBox50.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing taskbarx..."  ) ; scoop bucket add extras  ; scoop install taskbarx }
if ($checkBox51.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing translucenttb..."  ) ; scoop bucket add extras  ; scoop install translucenttb }
if ($checkBox52.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing powertoys..."  ) ; scoop bucket add extras  ; scoop install powertoys }
if ($checkBox53.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing 7zip..."  ) ; scoop bucket add main  ; scoop install 7zip }
if ($checkBox54.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing winrar..."  ) ; scoop bucket add extras  ; scoop install winrar }
if ($checkBox55.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing revouninstaller..."  ) ; scoop bucket add extras  ; scoop install revouninstaller }
if ($checkBox56.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing czkawka..."  ) ; scoop bucket add extras  ; scoop install czkawka }
if ($checkBox57.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing anydesk..."  ) ; scoop bucket add extras  ; scoop install anydesk }
if ($checkBox58.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing teamviewer..."  ) ; scoop bucket add extras  ; scoop install teamviewer }
if ($checkBox59.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing rustdesk..."  ) ; scoop bucket add extras  ; scoop install rustdesk }
if ($checkBox60.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing putty..."  ) ; scoop bucket add extras  ; scoop install putty }
if ($checkBox61.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing filezilla..."  ) ; scoop bucket add extras  ; scoop install filezilla }
if ($checkBox62.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing etcher..."  ) ; scoop bucket add extras  ; scoop install etcher }
if ($checkBox63.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing rufus..."  ) ; scoop bucket add extras  ; scoop install rufus }
if ($checkBox64.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing ventoy..."  ) ; scoop bucket add extras  ; scoop install ventoy }
if ($checkBox65.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing ddu..."  ) ; scoop bucket add extras  ; scoop install ddu }
if ($checkBox66.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing nvcleanstall..."  ) ; scoop bucket add extras  ; scoop install nvcleanstall }
if ($checkBox67.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing nvidia-display-driver-np..."  ) ; scoop bucket add nonportable  ; scoop install nvidia-display-driver-np }
if ($checkBox68.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing ryzen-controller..."  ) ; scoop bucket add extras  ; scoop install ryzen-controller }
if ($checkBox69.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing ryzentuner..."  ) ; scoop bucket add hoilc_scoop-lemon https://github.com/hoilc/scoop-lemon  ; scoop install ryzentuner }
if ($checkBox70.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing IntelExtremeTuningUtility-Install..."  ) ; scoop bucket add ACooper81_scoop-apps https://github.com/ACooper81/scoop-apps ; scoop install IntelExtremeTuningUtility-Install }
if ($checkBox71.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing neofetch..."  ) ; scoop bucket add main  ; scoop install neofetch }
if ($checkBox72.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing meow..."  ) ; scoop bucket add extras  ; scoop install meow }
if ($checkBox73.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing cowsay..."  ) ; scoop bucket add main  ; scoop install cowsay }
if ($checkBox74.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing alacritty..."  ) ; scoop bucket add extras  ; scoop install alacritty }
if ($checkBox75.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing tabby..."  ) ; scoop bucket add extras  ; scoop install tabby }
if ($checkBox76.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing hyper..."  ) ; scoop bucket add extras  ; scoop install hyper }
if ($checkBox77.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing fluent-terminal-np..."  ) ; scoop bucket add nonportable  ; scoop install fluent-terminal-np }
if ($checkBox78.Checked) {  $Tab5_Statusbox1.Items.Add( "Installing windows-terminal..."  ) ; scoop bucket add extras  ; scoop install windows-terminal }
if ( !$checkBox1.Checked -and !$checkBox2.Checked -and !$checkBox1.Checked -and !$checkBox4.Checked -and !$checkBox5.Checked -and !$checkBox6.Checked -and !$checkBox7.Checked -and !$checkBox8.Checked -and !$checkBox9.Checked -and !$checkBox10.Checked -and !$checkBox11.Checked -and !$checkBox12.Checked -and !$checkBox13.Checked -and !$checkBox14.Checked -and !$checkBox15.Checked -and !$checkBox16.Checked -and !$checkBox17.Checked -and !$checkBox18.Checked -and !$checkBox19.Checked -and !$checkBox20.Checked -and !$checkBox21.Checked -and !$checkBox22.Checked -and !$checkBox23.Checked -and !$checkBox24.Checked -and !$checkBox25.Checked -and !$checkBox26.Checked -and !$checkBox27.Checked -and !$checkBox28.Checked -and !$checkBox29.Checked -and !$checkBox30.Checked -and !$checkBox31.Checked -and !$checkBox32.Checked -and !$checkBox33.Checked -and !$checkBox34.Checked -and !$checkBox35.Checked -and !$checkBox36.Checked -and !$checkBox37.Checked -and !$checkBox38.Checked -and !$checkBox39.Checked -and !$checkBox40.Checked -and !$checkBox41.Checked -and !$checkBox42.Checked -and !$checkBox43.Checked -and !$checkBox44.Checked -and !$checkBox45.Checked -and !$checkBox46.Checked -and !$checkBox47.Checked -and !$checkBox48.Checked -and !$checkBox49.Checked -and !$checkBox50.Checked -and !$checkBox51.Checked -and !$checkBox52.Checked -and !$checkBox53.Checked -and !$checkBox54.Checked -and !$checkBox55.Checked -and !$checkBox56.Checked -and !$checkBox57.Checked -and !$checkBox58.Checked -and !$checkBox59.Checked -and !$checkBox60.Checked -and !$checkBox61.Checked -and !$checkBox62.Checked -and !$checkBox63.Checked -and !$checkBox64.Checked -and !$checkBox65.Checked -and !$checkBox66.Checked -and !$checkBox67.Checked -and !$checkBox67.Checked -and !$checkBox68.Checked -and !$checkBox69.Checked -and !$checkBox70.Checked -and !$checkBox71.Checked -and !$checkBox72.Checked -and !$checkBox73.Checked -and !$checkBox74.Checked -and !$checkBox75.Checked -and !$checkBox76.Checked -and !$checkBox77.Checked -and !$checkBox78.Checked) {   $Tab5_Statusbox1.Items.Add("No CheckBox selected....")} 
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


# alot of checkboxes
$checkBox1 = New-Object System.Windows.Forms.CheckBox
$checkBox1.Location = New-Object System.Drawing.Point(10,50)
$checkBox1.Size = New-Object System.Drawing.Size(100,25)
$checkBox1.Text = "Firefox"
$checkBox1.Name = "checkBox1"
$tab5.Controls.Add($checkBox1)

$checkBox2 = New-Object System.Windows.Forms.CheckBox
$checkBox2.Location = New-Object System.Drawing.Point(10,70)
$checkBox2.Size = New-Object System.Drawing.Size(100,25)
$checkBox2.Text = "Librewolf"
$checkBox2.Name = "checkBox2"
$tab5.Controls.Add($checkBox2)

$checkBox3 = New-Object System.Windows.Forms.CheckBox
$checkBox3.Location = New-Object System.Drawing.Point(10,90)
$checkBox3.Size = New-Object System.Drawing.Size(100,25)
$checkBox3.Text = "Brave"
$checkBox3.Name = "checkBox3"
$tab5.Controls.Add($checkBox3)

$checkBox4 = New-Object System.Windows.Forms.CheckBox
$checkBox4.Location = New-Object System.Drawing.Point(10,110)
$checkBox4.Size = New-Object System.Drawing.Size(100,25)
$checkBox4.Text = "Chrome"
$checkBox4.Name = "checkBox4"
$tab5.Controls.Add($checkBox4)

$checkBox5 = New-Object System.Windows.Forms.CheckBox
$checkBox5.Location = New-Object System.Drawing.Point(10,130)
$checkBox5.Size = New-Object System.Drawing.Size(100,25)
$checkBox5.Text = "Chromium"
$checkBox5.Name = "checkBox5"
$tab5.Controls.Add($checkBox5)

$checkBox6 = New-Object System.Windows.Forms.CheckBox
$checkBox6.Location = New-Object System.Drawing.Point(10,160)
$checkBox6.Size = New-Object System.Drawing.Size(100,25)
$checkBox6.Text = "MPV"
$checkBox6.Name = "checkBox6"
$tab5.Controls.Add($checkBox6)

$checkBox7 = New-Object System.Windows.Forms.CheckBox
$checkBox7.Location = New-Object System.Drawing.Point(10,180)
$checkBox7.Size = New-Object System.Drawing.Size(100,25)
$checkBox7.Text = "VLC"
$checkBox7.Name = "checkBox7"
$tab5.Controls.Add($checkBox7)

$checkBox8 = New-Object System.Windows.Forms.CheckBox
$checkBox8.Location = New-Object System.Drawing.Point(10,200)
$checkBox8.Size = New-Object System.Drawing.Size(100,25)
$checkBox8.Text = "Audacity"
$checkBox8.Name = "checkBox8"
$tab5.Controls.Add($checkBox8)

$checkBox9.Location = New-Object System.Drawing.Point(10,220)
$checkBox9.Size = New-Object System.Drawing.Size(100,25)
$checkBox9.Text = "EarTrumpet"
$checkBox9.Name = "checkBox9"
$tab5.Controls.Add($checkBox9)


$checkBox10.Location = New-Object System.Drawing.Point(10,240)
$checkBox10.Size = New-Object System.Drawing.Size(100,25)
$checkBox10.Text = "HandBrake"
$checkBox10.Name = "checkBox10"
$tab5.Controls.Add($checkBox10)


$checkBox11.Location = New-Object System.Drawing.Point(10,280)
$checkBox11.Size = New-Object System.Drawing.Size(100,25)
$checkBox11.Text = "Flameshot"
$checkBox11.Name = "checkBox11"
$tab5.Controls.Add($checkBox11)


$checkBox12.Location = New-Object System.Drawing.Point(10,300)
$checkBox12.Size = New-Object System.Drawing.Size(100,25)
$checkBox12.Text = "OBS-Studio"
$checkBox12.Name = "checkBox12"
$tab5.Controls.Add($checkBox12)


$checkBox13.Location = New-Object System.Drawing.Point(10,320)
$checkBox13.Size = New-Object System.Drawing.Size(100,25)
$checkBox13.Text = "Blender"
$checkBox13.Name = "checkBox13"
$tab5.Controls.Add($checkBox13)


$checkBox14.Location = New-Object System.Drawing.Point(10,340)
$checkBox14.Size = New-Object System.Drawing.Size(100,25)
$checkBox14.Text = "Gimp"
$checkBox14.Name = "checkBox14"
$tab5.Controls.Add($checkBox14)


$checkBox15.Location = New-Object System.Drawing.Point(10,360)
$checkBox15.Size = New-Object System.Drawing.Size(100,25)
$checkBox15.Text = "Krita"
$checkBox15.Name = "checkBox15"
$tab5.Controls.Add($checkBox15)


$checkBox16.Location = New-Object System.Drawing.Point(10,380)
$checkBox16.Size = New-Object System.Drawing.Size(100,25)
$checkBox16.Text = "InkScape"
$checkBox16.Name = "checkBox16"
$tab5.Controls.Add($checkBox16)


$checkBox17.Location = New-Object System.Drawing.Point(110,50)
$checkBox17.Size = New-Object System.Drawing.Size(100,25)
$checkBox17.Text = "SoundCloud"
$checkBox17.Name = "checkBox17"
$tab5.Controls.Add($checkBox17)


$checkBox18.Location = New-Object System.Drawing.Point(110,70)
$checkBox18.Size = New-Object System.Drawing.Size(100,25)
$checkBox18.Text = "Spotify"
$checkBox18.Name = "checkBox18"
$tab5.Controls.Add($checkBox18)


$checkBox19.Location = New-Object System.Drawing.Point(110,90)
$checkBox19.Size = New-Object System.Drawing.Size(100,25)
$checkBox19.Text = "YT Music"
$checkBox19.Name = "checkBox19"
$tab5.Controls.Add($checkBox19)


$checkBox20.Location = New-Object System.Drawing.Point(110,110)
$checkBox20.Size = New-Object System.Drawing.Size(100,25)
$checkBox20.Text = "Cider"
$checkBox20.Name = "checkBox20"
$tab5.Controls.Add($checkBox20)


$checkBox21.Location = New-Object System.Drawing.Point(110,140)
$checkBox21.Size = New-Object System.Drawing.Size(100,25)
$checkBox21.Text = "Deluge"
$checkBox21.Name = "checkBox21"
$tab5.Controls.Add($checkBox21)


$checkBox22.Location = New-Object System.Drawing.Point(110,160)
$checkBox22.Size = New-Object System.Drawing.Size(100,25)
$checkBox22.Text = "Picotorrent"
$checkBox22.Name = "checkBox22"
$tab5.Controls.Add($checkBox22)


$checkBox23.Location = New-Object System.Drawing.Point(110,180)
$checkBox23.Size = New-Object System.Drawing.Size(100,25)
$checkBox23.Text = "qBittorrent"
$checkBox23.Name = "checkBox23"
$tab5.Controls.Add($checkBox23)


$checkBox24.Location = New-Object System.Drawing.Point(110,200)
$checkBox24.Size = New-Object System.Drawing.Size(100,25)
$checkBox24.Text = "Transmission"
$checkBox24.Name = "checkBox24"
$tab5.Controls.Add($checkBox24)


$checkBox25.Location = New-Object System.Drawing.Point(110,230)
$checkBox25.Size = New-Object System.Drawing.Size(100,25)
$checkBox25.Text = "Zoom"
$checkBox25.Name = "checkBox25"
$tab5.Controls.Add($checkBox25)


$checkBox26.Location = New-Object System.Drawing.Point(110,250)
$checkBox26.Size = New-Object System.Drawing.Size(100,25)
$checkBox26.Text = "Teams"
$checkBox26.Name = "checkBox26"
$tab5.Controls.Add($checkBox26)


$checkBox27.Location = New-Object System.Drawing.Point(110,270)
$checkBox27.Size = New-Object System.Drawing.Size(100,25)
$checkBox27.Text = "Telegram"
$checkBox27.Name = "checkBox27"
$tab5.Controls.Add($checkBox27)


$checkBox28.Location = New-Object System.Drawing.Point(110,290)
$checkBox28.Size = New-Object System.Drawing.Size(100,25)
$checkBox28.Text = "Signal"
$checkBox28.Name = "checkBox28"
$tab5.Controls.Add($checkBox28)


$checkBox29.Location = New-Object System.Drawing.Point(110,310)
$checkBox29.Size = New-Object System.Drawing.Size(100,25)
$checkBox29.Text = "Discord"
$checkBox29.Name = "checkBox29"
$tab5.Controls.Add($checkBox29)


$checkBox30.Location = New-Object System.Drawing.Point(110,330)
$checkBox30.Size = New-Object System.Drawing.Size(100,25)
$checkBox30.Text = "Caprine"
$checkBox30.Name = "checkBox30"
$tab5.Controls.Add($checkBox30)


$checkBox31.Location = New-Object System.Drawing.Point(110,360)
$checkBox31.Size = New-Object System.Drawing.Size(100,25)
$checkBox31.Text = "LibreOffice"
$checkBox31.Name = "checkBox31"
$tab5.Controls.Add($checkBox31)


$checkBox32.Location = New-Object System.Drawing.Point(110,380)
$checkBox32.Size = New-Object System.Drawing.Size(100,25)
$checkBox32.Text = "OnlyOffice"
$checkBox32.Name = "checkBox32"
$tab5.Controls.Add($checkBox32)


$checkBox33.Location = New-Object System.Drawing.Point(110,400)
$checkBox33.Size = New-Object System.Drawing.Size(100,25)
$checkBox33.Text = "Office 365"
$checkBox33.Name = "checkBox33"
$tab5.Controls.Add($checkBox33)


$checkBox34.Location = New-Object System.Drawing.Point(210,50)
$checkBox34.Size = New-Object System.Drawing.Size(100,25)
$checkBox34.Text = "Foxit"
$checkBox34.Name = "checkBox34"
$tab5.Controls.Add($checkBox34)


$checkBox35.Location = New-Object System.Drawing.Point(210,70)
$checkBox35.Size = New-Object System.Drawing.Size(100,25)
$checkBox35.Text = "Qalculate"
$checkBox35.Name = "checkBox35"
$tab5.Controls.Add($checkBox35)


$checkBox36.Location = New-Object System.Drawing.Point(210,100)
$checkBox36.Size = New-Object System.Drawing.Size(100,25)
$checkBox36.Text = "Steam"
$checkBox36.Name = "checkBox36"
$tab5.Controls.Add($checkBox36)


$checkBox37.Location = New-Object System.Drawing.Point(210,120)
$checkBox37.Size = New-Object System.Drawing.Size(100,25)
$checkBox37.Text = "Epic"
$checkBox37.Name = "checkBox37"
$tab5.Controls.Add($checkBox37)


$checkBox38.Location = New-Object System.Drawing.Point(210,140)
$checkBox38.Size = New-Object System.Drawing.Size(100,25)
$checkBox38.Text = "GOG"
$checkBox38.Name = "checkBox38"
$tab5.Controls.Add($checkBox38)


$checkBox39.Location = New-Object System.Drawing.Point(210,160)
$checkBox39.Size = New-Object System.Drawing.Size(100,25)
$checkBox39.Text = "Itch"
$checkBox39.Name = "checkBox39"
$tab5.Controls.Add($checkBox39)


$checkBox40.Location = New-Object System.Drawing.Point(210,180)
$checkBox40.Size = New-Object System.Drawing.Size(100,25)
$checkBox40.Text = "PolyMC"
$checkBox40.Name = "checkBox40"
$tab5.Controls.Add($checkBox40)


$checkBox41.Location = New-Object System.Drawing.Point(210,200)
$checkBox41.Size = New-Object System.Drawing.Size(100,25)
$checkBox41.Text = "Dolphin"
$checkBox41.Name = "checkBox41"
$tab5.Controls.Add($checkBox41)


$checkBox42.Location = New-Object System.Drawing.Point(210,220)
$checkBox42.Size = New-Object System.Drawing.Size(100,25)
$checkBox42.Text = "Citra"
$checkBox42.Name = "checkBox42"
$tab5.Controls.Add($checkBox42)


$checkBox43.Location = New-Object System.Drawing.Point(210,240)
$checkBox43.Size = New-Object System.Drawing.Size(100,25)
$checkBox43.Text = "Yuzu"
$checkBox43.Name = "checkBox43"
$tab5.Controls.Add($checkBox43)


$checkBox44.Location = New-Object System.Drawing.Point(210,260)
$checkBox44.Size = New-Object System.Drawing.Size(100,25)
$checkBox44.Text = "Dosbox"
$checkBox44.Name = "checkBox44"
$tab5.Controls.Add($checkBox44)


$checkBox45.Location = New-Object System.Drawing.Point(210,290)
$checkBox45.Size = New-Object System.Drawing.Size(100,25)
$checkBox45.Text = "Loot"
$checkBox45.Name = "checkBox45"
$tab5.Controls.Add($checkBox45)


$checkBox46.Location = New-Object System.Drawing.Point(210,310)
$checkBox46.Size = New-Object System.Drawing.Size(100,25)
$checkBox46.Text = "MO 2"
$checkBox46.Name = "checkBox46"
$tab5.Controls.Add($checkBox46)


$checkBox47.Location = New-Object System.Drawing.Point(210,330)
$checkBox47.Size = New-Object System.Drawing.Size(100,25)
$checkBox47.Text = "Vortex"
$checkBox47.Name = "checkBox47"
$tab5.Controls.Add($checkBox47)


$checkBox48.Location = New-Object System.Drawing.Point(210,360)
$checkBox48.Size = New-Object System.Drawing.Size(100,30)
$checkBox48.Text = "Logitech Software"
$checkBox48.Name = "checkBox48"
$tab5.Controls.Add($checkBox48)


$checkBox49.Location = New-Object System.Drawing.Point(310,50)
$checkBox49.Size = New-Object System.Drawing.Size(100,25)
$checkBox49.Text = "RoundedTB"
$checkBox49.Name = "checkBox49"
$tab5.Controls.Add($checkBox49)


$checkBox50.Location = New-Object System.Drawing.Point(310,70)
$checkBox50.Size = New-Object System.Drawing.Size(100,25)
$checkBox50.Text = "TaskbarX"
$checkBox50.Name = "checkBox50"
$tab5.Controls.Add($checkBox50)


$checkBox51.Location = New-Object System.Drawing.Point(310,90)
$checkBox51.Size = New-Object System.Drawing.Size(100,25)
$checkBox51.Text = "TranslucentTB"
$checkBox51.Name = "checkBox51"
$tab5.Controls.Add($checkBox51)


$checkBox52.Location = New-Object System.Drawing.Point(310,110)
$checkBox52.Size = New-Object System.Drawing.Size(100,25)
$checkBox52.Text = "Powertoys"
$checkBox52.Name = "checkBox52"
$tab5.Controls.Add($checkBox52)


$checkBox53.Location = New-Object System.Drawing.Point(310,130)
$checkBox53.Size = New-Object System.Drawing.Size(100,25)
$checkBox53.Text = "7-zip"
$checkBox53.Name = "checkBox53"
$tab5.Controls.Add($checkBox53)


$checkBox54.Location = New-Object System.Drawing.Point(310,150)
$checkBox54.Size = New-Object System.Drawing.Size(100,25)
$checkBox54.Text = "Winrar"
$checkBox54.Name = "checkBox54"
$tab5.Controls.Add($checkBox54)


$checkBox55.Location = New-Object System.Drawing.Point(310,170)
$checkBox55.Size = New-Object System.Drawing.Size(100,25)
$checkBox55.Text = "Revo"
$checkBox55.Name = "checkBox55"
$tab5.Controls.Add($checkBox55)


$checkBox56.Location = New-Object System.Drawing.Point(310,190)
$checkBox56.Size = New-Object System.Drawing.Size(100,25)
$checkBox56.Text = "Czkawka"
$checkBox56.Name = "checkBox56"
$tab5.Controls.Add($checkBox56)


$checkBox57.Location = New-Object System.Drawing.Point(310,220)
$checkBox57.Size = New-Object System.Drawing.Size(100,25)
$checkBox57.Text = "Anydesk"
$checkBox57.Name = "checkBox57"
$tab5.Controls.Add($checkBox57)


$checkBox58.Location = New-Object System.Drawing.Point(310,240)
$checkBox58.Size = New-Object System.Drawing.Size(100,25)
$checkBox58.Text = "TeamViewer"
$checkBox58.Name = "checkBox58"
$tab5.Controls.Add($checkBox58)


$checkBox59.Location = New-Object System.Drawing.Point(310,260)
$checkBox59.Size = New-Object System.Drawing.Size(100,25)
$checkBox59.Text = "RustDesk"
$checkBox59.Name = "checkBox59"
$tab5.Controls.Add($checkBox59)


$checkBox60.Location = New-Object System.Drawing.Point(310,290)
$checkBox60.Size = New-Object System.Drawing.Size(100,25)
$checkBox60.Text = "Putty"
$checkBox60.Name = "checkBox60"
$tab5.Controls.Add($checkBox60)


$checkBox61.Location = New-Object System.Drawing.Point(310,320)
$checkBox61.Size = New-Object System.Drawing.Size(100,25)
$checkBox61.Text = "Filezilla"
$checkBox61.Name = "checkBox61"
$tab5.Controls.Add($checkBox61)


$checkBox62.Location = New-Object System.Drawing.Point(310,340)
$checkBox62.Size = New-Object System.Drawing.Size(100,25)
$checkBox62.Text = "Etcher"
$checkBox62.Name = "checkBox62"
$tab5.Controls.Add($checkBox62)


$checkBox63.Location = New-Object System.Drawing.Point(310,360)
$checkBox63.Size = New-Object System.Drawing.Size(100,25)
$checkBox63.Text = "Rufus"
$checkBox63.Name = "checkBox63"
$tab5.Controls.Add($checkBox63)


$checkBox64.Location = New-Object System.Drawing.Point(310,380)
$checkBox64.Size = New-Object System.Drawing.Size(100,25)
$checkBox64.Text = "Ventoy"
$checkBox64.Name = "checkBox64"
$tab5.Controls.Add($checkBox64)


$checkBox65.Location = New-Object System.Drawing.Point(410,50)
$checkBox65.Size = New-Object System.Drawing.Size(100,25)
$checkBox65.Text = "DDU"
$checkBox65.Name = "checkBox65"
$tab5.Controls.Add($checkBox65)


$checkBox66.Location = New-Object System.Drawing.Point(410,70)
$checkBox66.Size = New-Object System.Drawing.Size(100,25)
$checkBox66.Text = "NVCleanInstall"
$checkBox66.Name = "checkBox66"
$tab5.Controls.Add($checkBox66)

$checkBox67.Location = New-Object System.Drawing.Point(410,90)
$checkBox67.Size = New-Object System.Drawing.Size(100,25)
$checkBox67.Text = "GFExperience"
$checkBox67.Name = "checkBox67"
$tab5.Controls.Add($checkBox67)


$checkBox68.Location = New-Object System.Drawing.Point(410,110)
$checkBox68.Size = New-Object System.Drawing.Size(120,25)
$checkBox68.Text = "Ryzen Controller"
$checkBox68.Name = "checkBox68"
$tab5.Controls.Add($checkBox68)


$checkBox69.Location = New-Object System.Drawing.Point(410,130)
$checkBox69.Size = New-Object System.Drawing.Size(100,25)
$checkBox69.Text = "Ryzen Tuner"
$checkBox69.Name = "checkBox69"
$tab5.Controls.Add($checkBox69)


$checkBox70.Location = New-Object System.Drawing.Point(410,150)
$checkBox70.Size = New-Object System.Drawing.Size(100,35)
$checkBox70.Text = "Intel Extreme Tuning Utility"
$checkBox70.Name = "checkBox70"
$tab5.Controls.Add($checkBox70)


$checkBox71.Location = New-Object System.Drawing.Point(410,180)
$checkBox71.Size = New-Object System.Drawing.Size(100,25)
$checkBox71.Text = "Neofetch"
$checkBox71.Name = "checkBox71"
$tab5.Controls.Add($checkBox71)


$checkBox72.Location = New-Object System.Drawing.Point(410,200)
$checkBox72.Size = New-Object System.Drawing.Size(100,25)
$checkBox72.Text = "Lolcat"
$checkBox72.Name = "checkBox72"
$tab5.Controls.Add($checkBox72)

$checkBox73.Location = New-Object System.Drawing.Point(410,220)
$checkBox73.Size = New-Object System.Drawing.Size(100,25)
$checkBox73.Text = "Cowsay"
$checkBox73.Name = "checkBox73"
$tab5.Controls.Add($checkBox73)


$checkBox74.Location = New-Object System.Drawing.Point(410,250)
$checkBox74.Size = New-Object System.Drawing.Size(100,25)
$checkBox74.Text = "Alacritty"
$checkBox74.Name = "checkBox74"
$tab5.Controls.Add($checkBox74)


$checkBox75.Location = New-Object System.Drawing.Point(410,270)
$checkBox75.Size = New-Object System.Drawing.Size(100,25)
$checkBox75.Text = "Tabby"
$checkBox75.Name = "checkBox75"
$tab5.Controls.Add($checkBox75)


$checkBox76.Location = New-Object System.Drawing.Point(410,290)
$checkBox76.Size = New-Object System.Drawing.Size(100,25)
$checkBox76.Text = "Hyper"
$checkBox76.Name = "checkBox76"
$tab5.Controls.Add($checkBox76)


$checkBox77.Location = New-Object System.Drawing.Point(410,310)
$checkBox77.Size = New-Object System.Drawing.Size(120,25)
$checkBox77.Text = "Fluent"
$checkBox77.Name = "checkBox77"
$tab5.Controls.Add($checkBox77)


$checkBox78.Location = New-Object System.Drawing.Point(410,330)
$checkBox78.Size = New-Object System.Drawing.Size(120,25)
$checkBox78.Text = "Windows"
$checkBox78.Name = "checkBox78"
$tab5.Controls.Add($checkBox78)


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


# TAB 6
#----------------------------------------------

$tab6 = New-object System.Windows.Forms.Tabpage
$tab6.DataBindings.DefaultDataSourceUpdateMode = 0 
$tab6.Name = "tab6" 
$tab6.Text = "Update” 
$FormTabControl.Controls.Add($tab6)

# window label
$tab6_label1 = New-Object System.Windows.Forms.Label
$tab6_label1.Location = New-Object System.Drawing.Point(100,10)
$tab6_label1.AutoSize = $true
$tab6_label1.Font = New-Object System.Drawing.Font('verdana',16)
$tab6_label1.ForeColor = "#000000"
$tab6_label1.Text = ("Default")
$tab6.Controls.Add($tab6_label1)

$tab6_label2 = New-Object System.Windows.Forms.Label
$tab6_label2.Location = New-Object System.Drawing.Point(300,10)
$tab6_label2.AutoSize = $true
$tab6_label2.Font = New-Object System.Drawing.Font('verdana',16)
$tab6_label2.ForeColor = "#000000"
$tab6_label2.Text = ("Security")
$tab6.Controls.Add($tab6_label2)

$tab6_label3 = New-Object System.Windows.Forms.Label
$tab6_label3.Location = New-Object System.Drawing.Point(500,10)
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


# TAB 10
#----------------------------------------------

$tab10 = New-object System.Windows.Forms.Tabpage
$Tab10.DataBindings.DefaultDataSourceUpdateMode = 0 
$tab10.Name = "tab10" 
$tab10.Text = "About” 
$FormTabControl.Controls.Add($tab10)

# window label
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10,10)
$label.AutoSize = $true
$label.Font = New-Object System.Drawing.Font('arial',26,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$label.ForeColor = "#000000"
$label.Text = ("Efe's Toolbox")
$tab10.Controls.Add($label)

# window label
$label2 = New-Object System.Windows.Forms.Label
$label2.Location = New-Object System.Drawing.Point(10,90)
$label2.AutoSize = $true
$label2.Font = New-Object System.Drawing.Font('arial',12)
$label2.ForeColor = "#000000"
#$label2.backColor = "#b3b3b3"
$label2.Text = ("Efe's Toolbox is designed by a student`nwho has gotten bored and found coding slightly interesting.")
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