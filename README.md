# ADSL-auto-connection  
校园网宿舍宽带自动连接及定时检测并重新拨号  
  
**使用指南（以win11家庭版为例）**  
1.设置宽带连接  
在设置中搜索“宽带”，找到“设置宽带连接”栏目  
用户名和密码可选择不填，但是**请将宽带名称设置为英文！（默认名称为“宽带连接”，使用默认名称将会导致无法正常运行，建议修改为ADSL）**  
点击“创建”按钮  
  
2.下载并修改脚本  
点击Code-Download ZIP下载并解压文件后，右键ADSL.bat，选择“在记事本中编辑”  
将“宽带名称”修改为第1步中设置的英文宽带名称，“宽带账号”“宽带密码”也进行相应修改（宿舍宽带一般与校园无线网账号密码相同？）  
如有必要，等待时间可进行修改，默认设置10秒检测一次  
*三个脚本的作用如下：*  
*ADSL.bat 定时检测网络是否连接，若未接通则进行连接*  
*backrun.vbs 启动ADSL.bat并使其不显示窗口，直接在后台运行*  
*exit.bat 用于关闭后台的bat脚本（其实是cmd.exe?）*  
  
3.运行脚本与可用性检测  
**请先确保ADSL.bat与backrun.vbs在同一目录下（例如桌面）**  
首先提前断开宽带连接并关闭WLAN  
打开“设置”=“网络与Internet”-"拨号“，找到第1步设置的宽带   
双击打开ADSL.bat，宽带自动连接，cmd窗口显示”已经连接到（宽带名称） 命令已完成“ ，则证明脚本生效   
检验可用性后可关闭ADSL.bat，双击运行backrun.vbs，使ADSL.bat在后台运行  
若要关闭后台的ADSL.bat，请双击运行exit.bat  
  
4.（可选）开机自启动连接脚本  
打开文件夹ProgramData（貌似是隐藏文件夹）-Microsooft-Windows-StartMenu/开始菜单-Program/程序-StartUp/启动  
创建一个backrun.vbs的快捷方式并放入该文件夹（需要管理员权限）  
除此之外也可以用计划任务的方式设置自启动项  
  
**可能的故障及产生原因**  
运行ADSL.bat后显示”错误代码623“：  
添加宽带时宽带名称没有进行修改或没有设置为英文  
  
运行backrun.vbs后提示”找不到文件“：  
ADSL.bat与backrun.vbs不在同一个目录中 或 修改了bat文件名称且使用了中文  
  
运行ADSL.bat后长时间显示”正在连接到...“或显示”错误代码651“：  
请检查网线是否正常连接，宿舍网口是否可以正常使用  
