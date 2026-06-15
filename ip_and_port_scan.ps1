$network = "192.168.210"

$ports = @(21,22,23,25,53,80,88,110,135,139,143,389,443,445,464,593,636,1433,1521,3306,3389,5985,8080)

1..254 | ForEach-Object {

    $ip = "$network.$_"
    $openPorts = @()

    foreach ($port in $ports) {

        try {
            $client = New-Object System.Net.Sockets.TcpClient
            $async = $client.BeginConnect($ip, $port, $null, $null)

            if ($async.AsyncWaitHandle.WaitOne(300)) {
                $openPorts += $port
            }

            $client.Close()
        }
        catch {}
    }

    if ($openPorts.Count -gt 0) {
        "[+] $ip -> $($openPorts -join ', ')"
    }
}
