$kill_processes = @((Get-Process Skype), (Get-Process firefox), (Get-Process DTShellHlp))
foreach ($i in $kill_processes) {
    if ([bool]($i)) {
        Write-Host "Killing process : $i ..."
        #$i.Kill()
    } else {
        Write-Host "$i does not exist!"
    }
}