



$directories = (
   Get-ChildItem -Path '$WEBSITE_PARENT_FOLDER_WIN' -Directory | 
   Sort-Object CreationTime -Descending
);

$latestDirectories = $directories | Select-Object -First 2;

$directories | 
Where-Object { $_ -notin $latestDirectories } | 
Remove-Item -Recurse -Force;
        