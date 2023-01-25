(Get-WmiObject win32_product | Where-Object Name -Match "Dell SupportAssist OS Recovery Plugin*").Uninstall()
(Get-WmiObject win32_product | Where-Object Name -Match "Dell SupportAssist Remediation*").Uninstall()
(Get-WmiObject win32_product | Where-Object Name -Match "Dell SupportAssist*").Uninstall()
(Get-WmiObject win32_product | Where-Object Name -Match "Dell Digital Delivery Services*").Uninstall()
(Get-WmiObject win32_product | Where-Object Name -Match "Dell Digital Delivery*").Uninstall()
(Get-WmiObject win32_product | Where-Object Name -Match "Dell Document Hub*").Uninstall()


