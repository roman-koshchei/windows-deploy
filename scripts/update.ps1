param (
   [string]$parentFolder,
   [string]$folder
)

Stop-WebSite -Name 'Site'; 
Set-ItemProperty 'IIS:\\Sites\\Site' -name physicalPath -value $folder; 
Start-WebSite -Name 'Site';

$directories = (
   Get-ChildItem -Path $parentFolder -Directory | 
   Sort-Object CreationTime -Descending
);
$latestDirectories = $directories | Select-Object -First 2;

$directories | Where-Object { $_ -notin $latestDirectories } | Remove-Item -Recurse -Force;