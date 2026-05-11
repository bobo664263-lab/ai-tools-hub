Set WshShell = WScript.CreateObject("WScript.Shell")
DesktopPath = WshShell.SpecialFolders("Desktop")
Set Shortcut = WshShell.CreateShortcut(DesktopPath & "\AI利器.lnk")
Shortcut.TargetPath = "C:\Users\Lenovo\.openclaw-autoclaw\workspace\projects\ai-tools-hub\index.html"
Shortcut.WorkingDirectory = "C:\Users\Lenovo\.openclaw-autoclaw\workspace\projects\ai-tools-hub"
Shortcut.IconLocation = "%SystemRoot%\System32\imageres.dll,200"
Shortcut.Save()
WScript.Echo "✅ 快捷方式已创建到桌面！"
