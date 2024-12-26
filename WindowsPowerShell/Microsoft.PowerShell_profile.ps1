# Load own custom functions at startup
$OwnFunctionsDir = "C:\Users\paslinka\Documents\WindowsPowerShell\my_Functions\"
Write-Host "Loading own PowerShell functions from:" -ForegroundColor Green
Write-Host "$OwnFunctionsDir" -ForegroundColor Yellow
Get-ChildItem "$OwnFunctionsDir\*.ps1" | %{.$_}
Write-Host ''