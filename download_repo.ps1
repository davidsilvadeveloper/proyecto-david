$dir = 'C:\Users\david\Desktop\MI VIDA AVANZA CON AMOR Y DSCIPLINA'
$zipFile = "$dir\mis.zip"
$url = 'https://github.com/HernandoSilvaLeal/mis/archive/refs/heads/main.zip'

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$client = New-Object Net.WebClient
$client.DownloadFile($url, $zipFile)

Expand-Archive -Path $zipFile -DestinationPath $dir -Force
Remove-Item $zipFile

Get-ChildItem $dir -Name | Where-Object {$_ -ne 'download_repo.ps1' -and $_ -ne 'test.txt'}
