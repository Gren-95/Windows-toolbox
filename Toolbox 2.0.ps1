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

# tab Control Window
$FormTabControl = New-object System.Windows.Forms.TabControl 
$FormTabControl.Size = "681,500" 
$FormTabControl.Location = "0,0" 
$ApplicationForm.Controls.Add($FormTabControl)

# tab 1
$Tab1 = New-object System.Windows.Forms.Tabpage
$Tab1.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab1.UseVisualStyleBackColor = $True 
$Tab1.Name = "Tab1" 
$Tab1.Text = "Administrator Stuff” 
$FormTabControl.Controls.Add($Tab1)

# label 1
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10,10)
$label.Font = New-Object System.Drawing.Font('arial',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$label.AutoSize = $true
$label.ForeColor = "#000000"
#$label.backColor = "#b3b3b3"
$label.Text = ("Open your desired Application")
$Tab1.Controls.Add($label)

# label 2
$label2 = New-Object System.Windows.Forms.Label
$label2.Location = New-Object System.Drawing.Point(10,375)
$label2.Font = New-Object System.Drawing.Font('arial',10)
$label2.AutoSize = $true
$label2.ForeColor = "#000000"
#$label.backColor = "#b3b3b3"
$label2.Text = ("cpl")
$Tab1.Controls.Add($label2)

# label 3
$label3 = New-Object System.Windows.Forms.Label
$label3.Location = New-Object System.Drawing.Point(225,375)
$label3.Font = New-Object System.Drawing.Font('arial',10)
$label3.AutoSize = $true
$label3.ForeColor = "#000000"
#$label.backColor = "#b3b3b3"
$label3.Text = ("msc")
$Tab1.Controls.Add($label3)

# label 4
$label4 = New-Object System.Windows.Forms.Label
$label4.Location = New-Object System.Drawing.Point(440,375)
$label4.Font = New-Object System.Drawing.Font('arial',10)
$label4.AutoSize = $true
$label4.ForeColor = "#000000"
#$label.backColor = "#b3b3b3"
$label4.Text = ("exe")
$Tab1.Controls.Add($label4)

# Lots of buttons
$button1 = New-Object System.Windows.Forms.Button
$button1.Location = New-Object System.Drawing.Point(10,50)
$button1.Size = New-Object System.Drawing.Size(200,25)
$button1.Text = "Device Manager"
$button1.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button1.Add_Click({hdwwiz.cpl})
$tab1.Controls.Add($button1)

$button2 = New-Object System.Windows.Forms.Button
$button2.Location = New-Object System.Drawing.Point(10,75)
$button2.Size = New-Object System.Drawing.Size(200,25)
$button2.Text = "Internet Properties"
$button2.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button2.Add_Click({inetcpl.cpl})
$tab1.Controls.Add($button2)

$button3 = New-Object System.Windows.Forms.Button
$button3.Location = New-Object System.Drawing.Point(10,100)
$button3.Size = New-Object System.Drawing.Size(200,25)
$button3.Text = "Mouse Properties"
$button3.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button3.Add_Click({main.cpl})
$tab1.Controls.Add($button3)

$button4 = New-Object System.Windows.Forms.Button
$button4.Location = New-Object System.Drawing.Point(10,125)
$button4.Size = New-Object System.Drawing.Size(200,25)
$button4.Text = "Sound and Audio"
$button4.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button4.Add_Click({mmsys.cpl})
$tab1.Controls.Add($button4)

$button5 = New-Object System.Windows.Forms.Button
$button5.Location = New-Object System.Drawing.Point(10,150)
$button5.Size = New-Object System.Drawing.Size(200,25)
$button5.Text = "Network Properties"
$button5.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button5.Add_Click({ncpa.cpl})
$tab1.Controls.Add($button5)

$button6 = New-Object System.Windows.Forms.Button
$button6.Location = New-Object System.Drawing.Point(10,175)
$button6.Size = New-Object System.Drawing.Size(200,25)
$button6.Text = "User Accounts"
$button6.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button6.Add_Click({nusrmgr.cpl})
$tab1.Controls.Add($button6)


$button7 = New-Object System.Windows.Forms.Button
$button7.Location = New-Object System.Drawing.Point(10,200)
$button7.Size = New-Object System.Drawing.Size(200,25)
$button7.Text = "Time/Date"
$button7.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button7.Add_Click({timedate.cpl})
$tab1.Controls.Add($button7)


$button8 = New-Object System.Windows.Forms.Button
$button8.Location = New-Object System.Drawing.Point(10,225)
$button8.Size = New-Object System.Drawing.Size(200,25)
$button8.Text = "Windows Security Center"
$button8.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button8.Add_Click({wscui.cpl})
$tab1.Controls.Add($button8)


$button9 = New-Object System.Windows.Forms.Button
$button9.Location = New-Object System.Drawing.Point(10,250)
$button9.Size = New-Object System.Drawing.Size(200,25)
$button9.Text = "Automatic Updates"
$button9.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button9.Add_Click({wuaucpl.cpl})
$tab1.Controls.Add($button9)


$button10 = New-Object System.Windows.Forms.Button
$button10.Location = New-Object System.Drawing.Point(10,275)
$button10.Size = New-Object System.Drawing.Size(200,25)
$button10.Text = "Add/Remove Applications"
$button10.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button10.Add_Click({appwiz.cpl})
$tab1.Controls.Add($button10)


$button11 = New-Object System.Windows.Forms.Button
$button11.Location = New-Object System.Drawing.Point(10,250)
$button11.Size = New-Object System.Drawing.Size(200,25)
$button11.Text = "Display Properties"
$button11.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button11.Add_Click({desk.cpl})
$tab1.Controls.Add($button11)


$button12 = New-Object System.Windows.Forms.Button
$button12.Location = New-Object System.Drawing.Point(10,300)
$button12.Size = New-Object System.Drawing.Size(200,25)
$button12.Text = "Windows Firewall Properties"
$button12.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button12.Add_Click({firewall.cpl})
$tab1.Controls.Add($button12)


$button13 = New-Object System.Windows.Forms.Button
$button13.Location = New-Object System.Drawing.Point(10,325)
$button13.Size = New-Object System.Drawing.Size(200,25)
$button13.Text = "System Properties"
$button13.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button13.Add_Click({sysdm.cpl})
$tab1.Controls.Add($button13)


$button14 = New-Object System.Windows.Forms.Button
$button14.Location = New-Object System.Drawing.Point(225,50)
$button14.Size = New-Object System.Drawing.Size(200,25)
$button14.Text = "Authorization Manager"
$button14.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button14.Add_Click({azman.msc})
$tab1.Controls.Add($button14)


$button15 = New-Object System.Windows.Forms.Button
$button15.Location = New-Object System.Drawing.Point(225,75)
$button15.Size = New-Object System.Drawing.Size(200,25)
$button15.Text = "Certificate Manager"
$button15.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button15.Add_Click({certmgr.msc})
$tab1.Controls.Add($button15)


$button16 = New-Object System.Windows.Forms.Button
$button16.Location = New-Object System.Drawing.Point(225,100)
$button16.Size = New-Object System.Drawing.Size(200,25)
$button16.Text = "Computer Management"
$button16.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button16.Add_Click({compmgmt.msc})
$tab1.Controls.Add($button16)


$button17 = New-Object System.Windows.Forms.Button
$button17.Location = New-Object System.Drawing.Point(225,125)
$button17.Size = New-Object System.Drawing.Size(200,25)
$button17.Text = "Device Management"
$button17.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button17.Add_Click({devmgmt.msc})
$tab1.Controls.Add($button17)


$button18 = New-Object System.Windows.Forms.Button
$button18.Location = New-Object System.Drawing.Point(225,150)
$button18.Size = New-Object System.Drawing.Size(200,25)
$button18.Text = "Disk Management"
$button18.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button18.Add_Click({diskmgmt.msc})
$tab1.Controls.Add($button18)


$button19 = New-Object System.Windows.Forms.Button
$button19.Location = New-Object System.Drawing.Point(225,175)
$button19.Size = New-Object System.Drawing.Size(200,25)
$button19.Text = "Event Viewer"
$button19.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button19.Add_Click({eventvwr.msc})
$tab1.Controls.Add($button19)


$button20 = New-Object System.Windows.Forms.Button
$button20.Location = New-Object System.Drawing.Point(225,200)
$button20.Size = New-Object System.Drawing.Size(200,25)
$button20.Text = "Shared Folders Management"
$button20.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button20.Add_Click({fsmgmt.mscs})
$tab1.Controls.Add($button20)


$button21 = New-Object System.Windows.Forms.Button
$button21.Location = New-Object System.Drawing.Point(225,225)
$button21.Size = New-Object System.Drawing.Size(200,25)
$button21.Text = "Group Policy Editor"
$button21.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button21.Add_Click({gpedit.msc})
$tab1.Controls.Add($button21)


$button22 = New-Object System.Windows.Forms.Button
$button22.Location = New-Object System.Drawing.Point(225,250)
$button22.Size = New-Object System.Drawing.Size(200,25)
$button22.Text = "Group Policy Man Console"
$button22.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button22.Add_Click({gpmc.msc})
$tab1.Controls.Add($button22)


$button23 = New-Object System.Windows.Forms.Button
$button23.Location = New-Object System.Drawing.Point(225,275)
$button23.Size = New-Object System.Drawing.Size(200,25)
$button23.Text = "Local Users and Groups"
$button23.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button23.Add_Click({lusrmgr.msc})
$tab1.Controls.Add($button23)


$button24 = New-Object System.Windows.Forms.Button
$button24.Location = New-Object System.Drawing.Point(225,250)
$button24.Size = New-Object System.Drawing.Size(200,25)
$button24.Text = "Performance Monitor"
$button24.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button24.Add_Click({perfmon.msc})
$tab1.Controls.Add($button24)


$button25 = New-Object System.Windows.Forms.Button
$button25.Location = New-Object System.Drawing.Point(225,300)
$button25.Size = New-Object System.Drawing.Size(200,25)
$button25.Text = "Services"
$button25.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button25.Add_Click({services.msc})
$tab1.Controls.Add($button25)


$button26 = New-Object System.Windows.Forms.Button
$button26.Location = New-Object System.Drawing.Point(225,325)
$button26.Size = New-Object System.Drawing.Size(200,25)
$button26.Text = "Remote Desktops"
$button26.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button26.Add_Click({tsmmc.msc})
$tab1.Controls.Add($button26)


$button27 = New-Object System.Windows.Forms.Button
$button27.Location = New-Object System.Drawing.Point(225,350)
$button27.Size = New-Object System.Drawing.Size(200,25)
$button27.Text = "WMI"
$button27.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button27.Add_Click({wmimgmt.msc})
$tab1.Controls.Add($button27)


$button28 = New-Object System.Windows.Forms.Button
$button28.Location = New-Object System.Drawing.Point(440,50)
$button28.Size = New-Object System.Drawing.Size(200,25)
$button28.Text = "Explorer"
$button28.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button28.Add_Click({explorer.exe})
$tab1.Controls.Add($button28)


$button29 = New-Object System.Windows.Forms.Button
$button29.Location = New-Object System.Drawing.Point(440,75)
$button29.Size = New-Object System.Drawing.Size(200,25)
$button29.Text = "Notepad"
$button29.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button29.Add_Click({notepad.exe})
$tab1.Controls.Add($button29)


$button25 = New-Object System.Windows.Forms.Button
$button25.Location = New-Object System.Drawing.Point(440,100)
$button25.Size = New-Object System.Drawing.Size(200,25)
$button25.Text = "Regedit"
$button25.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button25.Add_Click({regedit.exe})
$tab1.Controls.Add($button25)


$button31 = New-Object System.Windows.Forms.Button
$button31.Location = New-Object System.Drawing.Point(440,125)
$button31.Size = New-Object System.Drawing.Size(200,25)
$button31.Text = "Activation"
$button31.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button31.Add_Click({changepk.exe})
$tab1.Controls.Add($button31)


$button32 = New-Object System.Windows.Forms.Button
$button32.Location = New-Object System.Drawing.Point(440,150)
$button32.Size = New-Object System.Drawing.Size(200,25)
$button32.Text = "Character Map"
$button32.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button32.Add_Click({charmap.exe})
$tab1.Controls.Add($button32)


$button33 = New-Object System.Windows.Forms.Button
$button33.Location = New-Object System.Drawing.Point(440,175)
$button33.Size = New-Object System.Drawing.Size(200,25)
$button33.Text = "Disk Cleanup"
$button33.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button33.Add_Click({cleanmgr.exe})
$tab1.Controls.Add($button33)


$button34 = New-Object System.Windows.Forms.Button
$button34.Location = New-Object System.Drawing.Point(440,200)
$button34.Size = New-Object System.Drawing.Size(200,25)
$button34.Text = "Command Prompt"
$button34.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button34.Add_Click({cmd.exe})
$tab1.Controls.Add($button34)


$button35 = New-Object System.Windows.Forms.Button
$button35.Location = New-Object System.Drawing.Point(440,225)
$button35.Size = New-Object System.Drawing.Size(200,25)
$button35.Text = "Default Apps"
$button35.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button35.Add_Click({ComputerDefaults.exe})
$tab1.Controls.Add($button35)


$button36 = New-Object System.Windows.Forms.Button
$button36.Location = New-Object System.Drawing.Point(440,250)
$button36.Size = New-Object System.Drawing.Size(200,25)
$button36.Text = "Control Panel"
$button36.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button36.Add_Click({control.exe})
$tab1.Controls.Add($button36)


$button37 = New-Object System.Windows.Forms.Button
$button37.Location = New-Object System.Drawing.Point(440,275)
$button37.Size = New-Object System.Drawing.Size(200,25)
$button37.Text = "Magnify"
$button37.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button37.Add_Click({Magnify.exe})
$tab1.Controls.Add($button37)


$button38 = New-Object System.Windows.Forms.Button
$button38.Location = New-Object System.Drawing.Point(440,250)
$button38.Size = New-Object System.Drawing.Size(200,25)
$button38.Text = "Mobility Center"
$button38.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button38.Add_Click({mblctr.exe})
$tab1.Controls.Add($button38)


$button39 = New-Object System.Windows.Forms.Button
$button39.Location = New-Object System.Drawing.Point(440,300)
$button39.Size = New-Object System.Drawing.Size(200,25)
$button39.Text = "Resource Monitor"
$button39.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button39.Add_Click({resmon.exe})
$tab1.Controls.Add($button39)


$button40 = New-Object System.Windows.Forms.Button
$button40.Location = New-Object System.Drawing.Point(10,325)
$button40.Size = New-Object System.Drawing.Size(200,25)
$button40.Text = "Region"
$button40.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button40.Add_Click({intl.cpl})
$tab1.Controls.Add($button40)


$button41 = New-Object System.Windows.Forms.Button
$button41.Location = New-Object System.Drawing.Point(440,325)
$button41.Size = New-Object System.Drawing.Size(200,25)
$button41.Text = "DiskPart"
$button41.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button41.Add_Click({diskpart.exe})
$tab1.Controls.Add($button41)


$button42 = New-Object System.Windows.Forms.Button
$button42.Location = New-Object System.Drawing.Point(10,350)
$button42.Size = New-Object System.Drawing.Size(200,25)
$button42.Text = "Region"
$button42.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button42.Add_Click({intl.cpl})
$tab1.Controls.Add($button42)


$button43 = New-Object System.Windows.Forms.Button
$button43.Location = New-Object System.Drawing.Point(440,350)
$button43.Size = New-Object System.Drawing.Size(100,25)
$button43.Text = "Powershell"
$button43.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button43.Add_Click({Start-Process powershell})
$tab1.Controls.Add($button43)


$button44 = New-Object System.Windows.Forms.Button
$button44.Location = New-Object System.Drawing.Point(540,350)
$button44.Size = New-Object System.Drawing.Size(100,25)
$button44.Text = "Adimin"
$button44.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button44.Add_Click({powershell start-process powershell -verb runas})
$tab1.Controls.Add($button44)

# tab 2 - tweaks#
$Tab2 = New-object System.Windows.Forms.Tabpage
$Tab2.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab2.UseVisualStyleBackColor = $True 
$Tab2.Name = "Tab2" 
$Tab2.Text = "Tweaks” 
$FormTabControl.Controls.Add($Tab2)

# label
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10,10)
$label.Font = New-Object System.Drawing.Font('arial',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$label.AutoSize = $true
$label.ForeColor = "#000000"
#$label.backColor = "#b3b3b3"
$label.Text = ("Requires Administrator Permissions")
$Tab2.Controls.Add($label)

# tweak buttons
$featurebutton1 = New-Object System.Windows.Forms.Button
$featurebutton1.Location = New-Object System.Drawing.Point(10,50)
$featurebutton1.Size = New-Object System.Drawing.Size (320,25)
$featurebutton1.Text = "All .NET Framework (2,3,4)"
$featurebutton1.Add_Click({
    Enable-WindowsOptionalFeature -Online -FeatureName "NetFx4-AdvSrvs" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "NetFx3" -All
})
$Tab2.Controls.Add($featurebutton1)

$featurebutton2 = New-Object System.Windows.Forms.Button
$featurebutton2.Location = New-Object System.Drawing.Point(10,75)
$featurebutton2.Size = New-Object System.Drawing.Size (320,25)
$featurebutton2.Text = "Hyper-V"
$featurebutton2.Add_Click({
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
})
$Tab2.Controls.Add($featurebutton2)

$featurebutton3 = New-Object System.Windows.Forms.Button
$featurebutton3.Location = New-Object System.Drawing.Point(10,100)
$featurebutton3.Size = New-Object System.Drawing.Size (320,25)
$featurebutton3.Text = "legacy Media"
$featurebutton3.Add_Click({
    Enable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "MediaPlayback" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "DirectPlay" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "LegacyComponents" -All
})
$Tab2.Controls.Add($featurebutton3)

$featurebutton4 = New-Object System.Windows.Forms.Button
$featurebutton4.Location = New-Object System.Drawing.Point(10,125)
$featurebutton4.Size = New-Object System.Drawing.Size (320,25)
$featurebutton4.Text = "WSL"
$featurebutton4.Add_Click({
    Enable-WindowsOptionalFeature -Online -FeatureName "VirtualMachinePlatform" -All
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -All
	Write-Host "WSL is now installed and configured. Please Reboot before using."
})
$Tab2.Controls.Add($featurebutton4)

$featurebutton5 = New-Object System.Windows.Forms.Button
$featurebutton5.Location = New-Object System.Drawing.Point(340,50)
$featurebutton5.Size = New-Object System.Drawing.Size (320,25)
$featurebutton5.Text = "Remove MS Store Apps"
$featurebutton5.Add_Click({Get-AppPackage | Remove-AppPackage})
$Tab2.Controls.Add($featurebutton5)

$featurebutton6 = New-Object System.Windows.Forms.Button
$featurebutton6.Location = New-Object System.Drawing.Point(340,75)
$featurebutton6.Size = New-Object System.Drawing.Size (320,25)
$featurebutton6.Text = "Reinstall MS Store"
$featurebutton6.Add_Click({Get-AppxPackage -allusers Microsoft.WindowsStore | ForEach-Object {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”}})
$Tab2.Controls.Add($featurebutton6)

$featurebutton7 = New-Object System.Windows.Forms.Button
$featurebutton7.Location = New-Object System.Drawing.Point(340,100)
$featurebutton7.Size = New-Object System.Drawing.Size (320,25)
$featurebutton7.Text = "Install Winget"
$featurebutton7.Add_Click({
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
mkdir $env:temp\c2r; Set-Location $env:temp\c2r
curl -o $env:temp\c2r\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle `
https://github.com/microsoft/winget-cli/releases/download/v1.2.10271/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
Add-AppPackage -Path $env:temp\c2r\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
pause
})
$Tab2.Controls.Add($featurebutton7)

$featurebutton8 = New-Object System.Windows.Forms.Button
$featurebutton8.Location = New-Object System.Drawing.Point(340,125)
$featurebutton8.Size = New-Object System.Drawing.Size (320,25)
$featurebutton8.Text = "Install Chocolatey"
$featurebutton8.Add_Click({Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 2572; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))})
$Tab2.Controls.Add($featurebutton8)

# tab 3
$Tab3 = New-object System.Windows.Forms.Tabpage
$Tab3.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab3.UseVisualStyleBackColor = $True 
$Tab3.Name = "Tab3" 
$Tab3.Text = "Activate Windows” 
$FormTabControl.Controls.Add($Tab3)

# window label
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10,10)
$label.AutoSize = $true
$label.Font = New-Object System.Drawing.Font('arial',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$label.ForeColor = "#000000"
#$label.backColor = "#b3b3b3"
$label.Text = ("Choose the Windows Edition you have installed")
$Tab3.Controls.Add($label)

# Activate Win 10 Home
$ActivateButton1 = New-Object System.Windows.Forms.Button
$ActivateButton1.Location = New-Object System.Drawing.Point(10,50)
$ActivateButton1.Size = New-Object System.Drawing.Size(320,25)
$ActivateButton1.Text = "Home"
$ActivateButton1.add_click({slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 ; slmgr /skms kms8.msguides.com ; slmgr /ato})
$Tab3.Controls.add($ActivateButton1)

# Activate Win 10 Home N
$ActivateButton2 = New-Object System.Windows.Forms.Button
$ActivateButton2.Location = New-Object System.Drawing.Point(10,75)
$ActivateButton2.Size = New-Object System.Drawing.Size(320,25)
$ActivateButton2.Text = "Home N"
$ActivateButton2.add_click({slmgr /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM ; slmgr /skms kms8.msguides.com ; slmgr /ato})
$Tab3.Controls.add($ActivateButton2)

# Activate Win 10 PRO
$ActivateButton3 = New-Object System.Windows.Forms.Button
$ActivateButton3.Location = New-Object System.Drawing.Point(340,50)
$ActivateButton3.Size = New-Object System.Drawing.Size(320,25)
$ActivateButton3.Text = "Pro"
$ActivateButton3.add_click({slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX ; slmgr /skms kms8.msguides.com ; slmgr /ato})
$Tab3.Controls.add($ActivateButton3)

# Activate Win 10 PRO N
$ActivateButton4 = New-Object System.Windows.Forms.Button
$ActivateButton4.Location = New-Object System.Drawing.Point(340,75)
$ActivateButton4.Size = New-Object System.Drawing.Size(320,25)
$ActivateButton4.Text = "Pro N"
$ActivateButton4.add_click({slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 ; slmgr /skms kms8.msguides.com ; slmgr /ato})
$Tab3.Controls.add($ActivateButton4)

# Activate Win 10 EDU
$ActivateButton5 = New-Object System.Windows.Forms.Button
$ActivateButton5.Location = New-Object System.Drawing.Point(340,100)
$ActivateButton5.Size = New-Object System.Drawing.Size(320,25)
$ActivateButton5.Text = "Education"
$ActivateButton5.add_click({slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 ; slmgr /skms kms8.msguides.com ; slmgr /ato})
$Tab3.Controls.add($ActivateButton5)

# Activate Win 10 EDU N
$ActivateButton6 = New-Object System.Windows.Forms.Button
$ActivateButton6.Location = New-Object System.Drawing.Point(340,125)
$ActivateButton6.Size = New-Object System.Drawing.Size(320,25)
$ActivateButton6.Text = "Education N"
$ActivateButton6.add_click({slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ ; slmgr /skms kms8.msguides.com ; slmgr /ato})
$Tab3.Controls.add($ActivateButton6)

# Activate Win 10 ENT
$ActivateButton7 = New-Object System.Windows.Forms.Button
$ActivateButton7.Location = New-Object System.Drawing.Point(340,150)
$ActivateButton7.Size = New-Object System.Drawing.Size(320,25)
$ActivateButton7.Text = "Enterprise"
$ActivateButton7.add_click({shutdslmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 ; slmgr /skms kms8.msguides.com ; slmgr /ato})
$Tab3.Controls.add($ActivateButton7)

# Activate Win 10 ENT N
$ActivateButton8 = New-Object System.Windows.Forms.Button
$ActivateButton8.Location = New-Object System.Drawing.Point(340,175)
$ActivateButton8.Size = New-Object System.Drawing.Size(320,25)
$ActivateButton8.Text = "Enterprise N"
$ActivateButton8.add_click({slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 ; slmgr /skms kms8.msguides.com ; slmgr /ato})
$Tab3.Controls.add($ActivateButton8)

# Activate Home Single Language
$ActivateButton9 = New-Object System.Windows.Forms.Button
$ActivateButton9.Location = New-Object System.Drawing.Point(10,100)
$ActivateButton9.Size = New-Object System.Drawing.Size(320,25)
$ActivateButton9.Text = "Home Single Language"
$ActivateButton9.add_click({slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH ; slmgr /skms kms8.msguides.com ; slmgr /ato})
$Tab3.Controls.add($ActivateButton9)

# Activate Home Country Specific
$ActivateButton10 = New-Object System.Windows.Forms.Button
$ActivateButton10.Location = New-Object System.Drawing.Point(10,125)
$ActivateButton10.Size = New-Object System.Drawing.Size(320,25)
$ActivateButton10.Text = "Home Country Specific"
$ActivateButton10.add_click({slmgr /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR ; slmgr /skms kms8.msguides.com ; slmgr /ato})
$Tab3.Controls.add($ActivateButton10)

# Clear Product Key
$ActivateButton11 = New-Object System.Windows.Forms.Button
$ActivateButton11.Location = New-Object System.Drawing.Point(10,150)
$ActivateButton11.Size = New-Object System.Drawing.Size(320,50)
$ActivateButton11.Text = "Clear Product Key"
$ActivateButton11.add_click({slmgr /upk ; slmgr /cpky ; slmgr /rearm})
$Tab3.Controls.add($ActivateButton11)

# tab 4
$Tab4 = New-object System.Windows.Forms.Tabpage
$Tab4.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab4.UseVisualStyleBackColor = $True 
$Tab4.Name = "Tab4" 
$Tab4.Text = "Power Options” 
$FormTabControl.Controls.Add($Tab4)

# window label
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10,10)
$label.AutoSize = $true
$label.Font = New-Object System.Drawing.Font('arial',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$label.ForeColor = "#000000"
#$label.backColor = "#b3b3b3"
$label.Text = ("Choose how you want to shutdown")
$Tab4.Controls.Add($label)

$PowerButton1 = New-Object System.Windows.Forms.Button
$PowerButton1.Location = New-Object System.Drawing.Point(10,50)
$PowerButton1.Size = New-Object System.Drawing.Size(320,25)
$PowerButton1.Text = "Reboot"
$PowerButton1.add_click({shutdown /r})
$Tab4.Controls.add($PowerButton1)

$PowerButton2 = New-Object System.Windows.Forms.Button
$PowerButton2.Location = New-Object System.Drawing.Point(10,75)
$PowerButton2.Size = New-Object System.Drawing.Size(320,25)
$PowerButton2.Text = "Shutdown"
$PowerButton2.add_click({shutdown /s})
$Tab4.Controls.add($PowerButton2)

$PowerButton3 = New-Object System.Windows.Forms.Button
$PowerButton3.Location = New-Object System.Drawing.Point(10,100)
$PowerButton3.Size = New-Object System.Drawing.Size(320,25)
$PowerButton3.Text = "Abort"
$PowerButton3.add_click({shutdown /a})
$Tab4.Controls.add($PowerButton3)

$PowerButton4 = New-Object System.Windows.Forms.Button
$PowerButton4.Location = New-Object System.Drawing.Point(340,50)
$PowerButton4.Size = New-Object System.Drawing.Size(320,25)
$PowerButton4.Text = "Force Reboot"
$PowerButton4.add_click({shutdown /r /f})
$Tab4.Controls.add($PowerButton4)

$PowerButton5 = New-Object System.Windows.Forms.Button
$PowerButton5.Location = New-Object System.Drawing.Point(340,75)
$PowerButton5.Size = New-Object System.Drawing.Size(320,25)
$PowerButton5.Text = "Force Shutdown"
$PowerButton5.add_click({shutdown /s /f})
$Tab4.Controls.add($PowerButton5)

$PowerButton6 = New-Object System.Windows.Forms.Button
$PowerButton6.Location = New-Object System.Drawing.Point(340,100)
$PowerButton6.Size = New-Object System.Drawing.Size(320,25)
$PowerButton6.Text = "Log Out"
$PowerButton6.add_click({shutdown /l})
$Tab4.Controls.add($PowerButton6)

$PowerButton6 = New-Object System.Windows.Forms.Button
$PowerButton6.Location = New-Object System.Drawing.Point(10,125)
$PowerButton6.Size = New-Object System.Drawing.Size(320,25)
$PowerButton6.Text = "Remote Shutdown"
$PowerButton6.add_click({shutdown /i})
$Tab4.Controls.add($PowerButton6)

# window label
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10,185)
$label.AutoSize = $true
$label.Font = New-Object System.Drawing.Font('arial',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$label.ForeColor = "#000000"
#$label.backColor = "#b3b3b3"
$label.Text = ("Power Settings")
$Tab4.Controls.Add($label)

$PowerButton7 = New-Object System.Windows.Forms.Button
$PowerButton7.Location = New-Object System.Drawing.Point(10,225)
$PowerButton7.Size = New-Object System.Drawing.Size(320,25)
$PowerButton7.Text = "Power Options"
$PowerButton7.add_click({powercfg.cpl})
$Tab4.Controls.add($PowerButton7)

$PowerButton8 = New-Object System.Windows.Forms.Button
$PowerButton8.Location = New-Object System.Drawing.Point(10,250)
$PowerButton8.Size = New-Object System.Drawing.Size(320,25)
$PowerButton8.Text = "Mobility Center"
$PowerButton8.add_click({mblctr.exe})
$Tab4.Controls.add($PowerButton8)

$PowerButton9 = New-Object System.Windows.Forms.Button
$PowerButton9.Location = New-Object System.Drawing.Point(340,225)
$PowerButton9.Size = New-Object System.Drawing.Size(320,25)
$PowerButton9.Text = "Boot Options"
$PowerButton9.add_click({cmd /c msconfig.exe})
$Tab4.Controls.add($PowerButton9)

$PowerButton10 = New-Object System.Windows.Forms.Button
$PowerButton10.Location = New-Object System.Drawing.Point(340,250)
$PowerButton10.Size = New-Object System.Drawing.Size(320,25)
$PowerButton10.Text = "Battery Options"
$PowerButton10.add_click({ms-settings:batterysaver})
$Tab4.Controls.add($PowerButton10)

# Initlize the form
$ApplicationForm.Add_Shown({$ApplicationForm.Activate()})
[void] $ApplicationForm.ShowDialog()