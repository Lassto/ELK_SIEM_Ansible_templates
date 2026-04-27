# Activa WinRM
winrm quickconfig

# Enable HTTP for WinRM
Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP" -Enabled True

# Autorize WinRM by the Firewall (port 5985)
netsh advfirewall firewall add rule name="WinRM 5985" dir=in action=allow protocol=TCP localport=5985

# Autorize ping (ICMP)
netsh advfirewall firewall add rule name="ICMPv4" protocol=icmpv4:8,any dir=in action=allow

# Allow unencrypted
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'

# Restart winRM
Restart-Service WinRM



