Param(
	[Parameter(Mandatory=$true)][string]$resourceName,
	[Parameter(Mandatory=$true)][string]$buildNumber)
	
$packExtension = ".nupkg"	
$packPath = ".\output\" + $resourceName

$packFullPath = $packPath + "." +$buildNumber + $packExtension 

Write-Output $packFullPath

#push from VSTS to Octopus Deploy
#nuget push $packFullPath -Source http://localhost:8090/nuget/packages -ApiKey $apiKey


nuget.exe push -Source https://pkgs.dev.azure.com/eduardopiairo/betcycle/_packaging/betcycle-artifacts/nuget/v3 -ApiKey az $packFullPath


exit $LastExitCode