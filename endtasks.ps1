# Replace "processes" with the name of the service you'd like to terminate
$kill_processes = @((Get-Process proc), (Get-Process proc), (Get-Process proc), (Get-Process proc), (Get-Process proc))
foreach ($i in $kill_processes) {
    # TODO: Implement silent continue
    if ([bool]($i)) {
        Write-Host "Killing process : $i ..."
        $i.Kill()
    } else {
        Write-Host "$i does not exist!"
    }
}