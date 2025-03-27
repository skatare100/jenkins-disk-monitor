$workspace = "C:\ProgramData\Jenkins\.jenkins\workspace\DevOps-Pipeline-1"
$reportPath = "$workspace\disk_space_report.html"

# Get Disk Info
$diskInfo = Get-PSDrive -PSProvider FileSystem | Select-Object Name, @{Name="FreeSpaceGB"; Expression={[math]::Round($_.Free/1GB, 2)}}, @{Name="TotalSizeGB"; Expression={[math]::Round($_.Used/1GB + $_.Free/1GB, 2)}}

# Convert to HTML
$diskInfo | ConvertTo-Html -Property Name, FreeSpaceGB, TotalSizeGB -Title "Disk Space Report" | Out-File $reportPath

Write-Host "✅ Report saved to $reportPath"
