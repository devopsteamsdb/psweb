New-PolarisGetRoute -Path "/" -Scriptblock {
    $Response.Send('Hello World!')
}

New-PolarisGetRoute -Path "/health" -Scriptblock {
    $Response.Send('ok')
}

$Polaris = Start-Polaris

while ($Polaris.Listener.IsListening){
		Wait-Event callbackeventbridge.callbackcomplete
}