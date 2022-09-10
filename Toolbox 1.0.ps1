[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

$ApplicationForm = New-Object System.Windows.Forms.Form
$ApplicationForm.StartPosition = "CenterScreen"
$ApplicationForm.Topmost = $false 
$ApplicationForm.Size = "800,600"
$ApplicationForm.FormBorderStyle = 'Fixed3D'
$ApplicationForm.MinimizeBox = $false
$ApplicationForm.MaximizeBox = $false


$FormTabControl = New-object System.Windows.Forms.TabControl 
$FormTabControl.Size = "775,500" 
$FormTabControl.Location = "10,10" 
$ApplicationForm.Controls.Add($FormTabControl)

$Tab1 = New-object System.Windows.Forms.Tabpage
$Tab1.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab1.UseVisualStyleBackColor = $True 
$Tab1.Name = "Tab1" 
$Tab1.Text = "Legacy” 
$FormTabControl.Controls.Add($Tab1)

$button1 = New-Object System.Windows.Forms.Button
$button1.Location = New-Object System.Drawing.Point(10,50)
$button1.Size = New-Object System.Drawing.Size(200,30)
$button1.Text = "Device Manager"
$button1.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button1.Add_Click({hdwwiz.cpl})
$tab1.Controls.Add($button1)

$button2 = New-Object System.Windows.Forms.Button
$button2.Location = New-Object System.Drawing.Point(10,75)
$button2.Size = New-Object System.Drawing.Size(200,30)
$button2.Text = "Internet Properties"
$button2.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button2.Add_Click({inetcpl.cpl})
$tab1.Controls.Add($button2)

$button3 = New-Object System.Windows.Forms.Button
$button3.Location = New-Object System.Drawing.Point(10,100)
$button3.Size = New-Object System.Drawing.Size(200,30)
$button3.Text = "Mouse Properties"
$button3.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button3.Add_Click({main.cpl})
$tab1.Controls.Add($button3)

$button4 = New-Object System.Windows.Forms.Button
$button4.Location = New-Object System.Drawing.Point(10,125)
$button4.Size = New-Object System.Drawing.Size(200,30)
$button4.Text = "Sound and Audio"
$button4.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button4.Add_Click({mmsys.cpl})
$tab1.Controls.Add($button4)

$button5 = New-Object System.Windows.Forms.Button
$button5.Location = New-Object System.Drawing.Point(10,150)
$button5.Size = New-Object System.Drawing.Size(200,30)
$button5.Text = "Network Properties"
$button5.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button5.Add_Click({ncpa.cpl})
$tab1.Controls.Add($button5)

$button6 = New-Object System.Windows.Forms.Button
$button6.Location = New-Object System.Drawing.Point(10,175)
$button6.Size = New-Object System.Drawing.Size(200,30)
$button6.Text = "User Accounts"
$button6.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button6.Add_Click({nusrmgr.cpl})
$tab1.Controls.Add($button6)


$button7 = New-Object System.Windows.Forms.Button
$button7.Location = New-Object System.Drawing.Point(10,200)
$button7.Size = New-Object System.Drawing.Size(200,30)
$button7.Text = "Time/Date"
$button7.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button7.Add_Click({timedate.cpl})
$tab1.Controls.Add($button7)


$button8 = New-Object System.Windows.Forms.Button
$button8.Location = New-Object System.Drawing.Point(10,225)
$button8.Size = New-Object System.Drawing.Size(200,30)
$button8.Text = "Windows Security Center"
$button8.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button8.Add_Click({wscui.cpl})
$tab1.Controls.Add($button8)


$button9 = New-Object System.Windows.Forms.Button
$button9.Location = New-Object System.Drawing.Point(10,250)
$button9.Size = New-Object System.Drawing.Size(200,30)
$button9.Text = "Automatic Updates"
$button9.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button9.Add_Click({wuaucpl.cpl})
$tab1.Controls.Add($button9)


$button10 = New-Object System.Windows.Forms.Button
$button10.Location = New-Object System.Drawing.Point(10,275)
$button10.Size = New-Object System.Drawing.Size(200,30)
$button10.Text = "Add/Remove Applications"
$button10.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button10.Add_Click({appwiz.cpl})
$tab1.Controls.Add($button10)


$button11 = New-Object System.Windows.Forms.Button
$button11.Location = New-Object System.Drawing.Point(10,300)
$button11.Size = New-Object System.Drawing.Size(200,30)
$button11.Text = "Display Properties"
$button11.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button11.Add_Click({desk.cpl})
$tab1.Controls.Add($button11)


$button12 = New-Object System.Windows.Forms.Button
$button12.Location = New-Object System.Drawing.Point(10,325)
$button12.Size = New-Object System.Drawing.Size(200,30)
$button12.Text = "Windows Firewall Properties"
$button12.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button12.Add_Click({firewall.cpl})
$tab1.Controls.Add($button12)


$button13 = New-Object System.Windows.Forms.Button
$button13.Location = New-Object System.Drawing.Point(10,350)
$button13.Size = New-Object System.Drawing.Size(200,30)
$button13.Text = "System Properties"
$button13.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button13.Add_Click({sysdm.cpl})
$tab1.Controls.Add($button13)


$button14 = New-Object System.Windows.Forms.Button
$button14.Location = New-Object System.Drawing.Point(225,50)
$button14.Size = New-Object System.Drawing.Size(200,30)
$button14.Text = "Authorization Manager"
$button14.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button14.Add_Click({azman.msc})
$tab1.Controls.Add($button14)


$button15 = New-Object System.Windows.Forms.Button
$button15.Location = New-Object System.Drawing.Point(225,75)
$button15.Size = New-Object System.Drawing.Size(200,30)
$button15.Text = "Certificate Manager"
$button15.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button15.Add_Click({certmgr.msc})
$tab1.Controls.Add($button15)


$button16 = New-Object System.Windows.Forms.Button
$button16.Location = New-Object System.Drawing.Point(225,100)
$button16.Size = New-Object System.Drawing.Size(200,30)
$button16.Text = "Computer Management"
$button16.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button16.Add_Click({compmgmt.msc})
$tab1.Controls.Add($button16)


$button17 = New-Object System.Windows.Forms.Button
$button17.Location = New-Object System.Drawing.Point(225,125)
$button17.Size = New-Object System.Drawing.Size(200,30)
$button17.Text = "Device Management"
$button17.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button17.Add_Click({devmgmt.msc})
$tab1.Controls.Add($button17)


$button18 = New-Object System.Windows.Forms.Button
$button18.Location = New-Object System.Drawing.Point(225,150)
$button18.Size = New-Object System.Drawing.Size(200,30)
$button18.Text = "Disk Management"
$button18.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button18.Add_Click({diskmgmt.msc})
$tab1.Controls.Add($button18)


$button19 = New-Object System.Windows.Forms.Button
$button19.Location = New-Object System.Drawing.Point(225,175)
$button19.Size = New-Object System.Drawing.Size(200,30)
$button19.Text = "Event Viewer"
$button19.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button19.Add_Click({eventvwr.msc})
$tab1.Controls.Add($button19)


$button20 = New-Object System.Windows.Forms.Button
$button20.Location = New-Object System.Drawing.Point(225,200)
$button20.Size = New-Object System.Drawing.Size(200,30)
$button20.Text = "Shared Folders Management"
$button20.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button20.Add_Click({fsmgmt.mscs})
$tab1.Controls.Add($button20)


$button21 = New-Object System.Windows.Forms.Button
$button21.Location = New-Object System.Drawing.Point(225,225)
$button21.Size = New-Object System.Drawing.Size(200,30)
$button21.Text = "Group Policy Editor"
$button21.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button21.Add_Click({gpedit.msc})
$tab1.Controls.Add($button21)


$button22 = New-Object System.Windows.Forms.Button
$button22.Location = New-Object System.Drawing.Point(225,250)
$button22.Size = New-Object System.Drawing.Size(200,30)
$button22.Text = "Group Policy Man Console"
$button22.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button22.Add_Click({gpmc.msc})
$tab1.Controls.Add($button22)


$button23 = New-Object System.Windows.Forms.Button
$button23.Location = New-Object System.Drawing.Point(225,275)
$button23.Size = New-Object System.Drawing.Size(200,30)
$button23.Text = "Local Users and Groups"
$button23.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button23.Add_Click({lusrmgr.msc})
$tab1.Controls.Add($button23)


$button24 = New-Object System.Windows.Forms.Button
$button24.Location = New-Object System.Drawing.Point(225,300)
$button24.Size = New-Object System.Drawing.Size(200,30)
$button24.Text = "Performance Monitor"
$button24.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button24.Add_Click({perfmon.msc})
$tab1.Controls.Add($button24)


$button25 = New-Object System.Windows.Forms.Button
$button25.Location = New-Object System.Drawing.Point(225,325)
$button25.Size = New-Object System.Drawing.Size(200,30)
$button25.Text = "Services"
$button25.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button25.Add_Click({services.msc})
$tab1.Controls.Add($button25)


$button26 = New-Object System.Windows.Forms.Button
$button26.Location = New-Object System.Drawing.Point(225,350)
$button26.Size = New-Object System.Drawing.Size(200,30)
$button26.Text = "Remote Desktops"
$button26.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button26.Add_Click({tsmmc.msc})
$tab1.Controls.Add($button26)


$button27 = New-Object System.Windows.Forms.Button
$button27.Location = New-Object System.Drawing.Point(225,375)
$button27.Size = New-Object System.Drawing.Size(200,30)
$button27.Text = "WMI"
$button27.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button27.Add_Click({wmimgmt.msc})
$tab1.Controls.Add($button27)


$button28 = New-Object System.Windows.Forms.Button
$button28.Location = New-Object System.Drawing.Point(440,50)
$button28.Size = New-Object System.Drawing.Size(200,30)
$button28.Text = "Explorer"
$button28.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button28.Add_Click({explorer.exe})
$tab1.Controls.Add($button28)


$button29 = New-Object System.Windows.Forms.Button
$button29.Location = New-Object System.Drawing.Point(440,75)
$button29.Size = New-Object System.Drawing.Size(200,30)
$button29.Text = "Notepad"
$button29.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button29.Add_Click({notepad.exe})
$tab1.Controls.Add($button29)


$button30 = New-Object System.Windows.Forms.Button
$button30.Location = New-Object System.Drawing.Point(440,100)
$button30.Size = New-Object System.Drawing.Size(200,30)
$button30.Text = "Regedit"
$button30.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button30.Add_Click({regedit.exe})
$tab1.Controls.Add($button30)


$button31 = New-Object System.Windows.Forms.Button
$button31.Location = New-Object System.Drawing.Point(440,125)
$button31.Size = New-Object System.Drawing.Size(200,30)
$button31.Text = "Activation"
$button31.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button31.Add_Click({changepk.exe})
$tab1.Controls.Add($button31)


$button32 = New-Object System.Windows.Forms.Button
$button32.Location = New-Object System.Drawing.Point(440,150)
$button32.Size = New-Object System.Drawing.Size(200,30)
$button32.Text = "Character Map"
$button32.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button32.Add_Click({charmap.exe})
$tab1.Controls.Add($button32)


$button33 = New-Object System.Windows.Forms.Button
$button33.Location = New-Object System.Drawing.Point(440,175)
$button33.Size = New-Object System.Drawing.Size(200,30)
$button33.Text = "Disk Cleanup"
$button33.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button33.Add_Click({cleanmgr.exe})
$tab1.Controls.Add($button33)


$button34 = New-Object System.Windows.Forms.Button
$button34.Location = New-Object System.Drawing.Point(440,200)
$button34.Size = New-Object System.Drawing.Size(200,30)
$button34.Text = "Command Prompt"
$button34.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button34.Add_Click({cmd.exe})
$tab1.Controls.Add($button34)


$button35 = New-Object System.Windows.Forms.Button
$button35.Location = New-Object System.Drawing.Point(440,225)
$button35.Size = New-Object System.Drawing.Size(200,30)
$button35.Text = "Default Apps"
$button35.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button35.Add_Click({ComputerDefaults.exe})
$tab1.Controls.Add($button35)


$button36 = New-Object System.Windows.Forms.Button
$button36.Location = New-Object System.Drawing.Point(440,250)
$button36.Size = New-Object System.Drawing.Size(200,30)
$button36.Text = "Control Panel"
$button36.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button36.Add_Click({control.exe})
$tab1.Controls.Add($button36)


$button37 = New-Object System.Windows.Forms.Button
$button37.Location = New-Object System.Drawing.Point(440,275)
$button37.Size = New-Object System.Drawing.Size(200,30)
$button37.Text = "Magnify"
$button37.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button37.Add_Click({Magnify.exe})
$tab1.Controls.Add($button37)


$button38 = New-Object System.Windows.Forms.Button
$button38.Location = New-Object System.Drawing.Point(440,300)
$button38.Size = New-Object System.Drawing.Size(200,30)
$button38.Text = "Mobility Center"
$button38.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button38.Add_Click({mblctr.exe})
$tab1.Controls.Add($button38)


$button39 = New-Object System.Windows.Forms.Button
$button39.Location = New-Object System.Drawing.Point(440,325)
$button39.Size = New-Object System.Drawing.Size(200,30)
$button39.Text = "Resource Monitor"
$button39.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button39.Add_Click({resmon.exe})
$tab1.Controls.Add($button39)


$button40 = New-Object System.Windows.Forms.Button
$button40.Location = New-Object System.Drawing.Point(10,375)
$button40.Size = New-Object System.Drawing.Size(200,30)
$button40.Text = "Region"
$button40.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button40.Add_Click({intl.cpl})
$tab1.Controls.Add($button40)


$button41 = New-Object System.Windows.Forms.Button
$button41.Location = New-Object System.Drawing.Point(440,350)
$button41.Size = New-Object System.Drawing.Size(200,30)
$button41.Text = "DiskPart"
$button41.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button41.Add_Click({diskpart.exe})
$tab1.Controls.Add($button41)


$button42 = New-Object System.Windows.Forms.Button
$button42.Location = New-Object System.Drawing.Point(10,375)
$button42.Size = New-Object System.Drawing.Size(200,30)
$button42.Text = "Region"
$button42.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button42.Add_Click({intl.cpl})
$tab1.Controls.Add($button42)


$button43 = New-Object System.Windows.Forms.Button
$button43.Location = New-Object System.Drawing.Point(440,375)
$button43.Size = New-Object System.Drawing.Size(100,30)
$button43.Text = "Powershell"
$button43.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button43.Add_Click({start powershell})
$tab1.Controls.Add($button43)


$button44 = New-Object System.Windows.Forms.Button
$button44.Location = New-Object System.Drawing.Point(540,375)
$button44.Size = New-Object System.Drawing.Size(100,30)
$button44.Text = "Adimin"
$button44.DialogResult = [System.Windows.Forms.DialogResult]::OK
$button44.Add_Click({powershell start-process powershell -verb runas})
$tab1.Controls.Add($button44)


$Tab2 = New-object System.Windows.Forms.Tabpage
$Tab2.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab2.UseVisualStyleBackColor = $True 
$Tab2.Name = "Tab2" 
$Tab2.Text = "Tab2” 
$FormTabControl.Controls.Add($Tab2)

$button2 = New-Object System.Windows.Forms.Button
$button2.Location = New-Object System.Drawing.Point(10,120)
$button2.Size = New-Object System.Drawing.Size (200,30)
$button2.Text = "Usun Folder"
$button2.Add_Click($button_click)
$Tab2.Controls.Add($button2)


# Initlize the form
$ApplicationForm.Add_Shown({$ApplicationForm.Activate()})
[void] $ApplicationForm.ShowDialog()