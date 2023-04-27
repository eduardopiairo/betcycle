Param(
	[Parameter(Mandatory=$true)][string]$resourceName,
	[Parameter(Mandatory=$true)][string]$buildNumber)
	
$packExtension = ".nupkg"	
$packPath = ".\output\" + $resourceName

$packFullPath = $packPath + "." +$buildNumber + $packExtension 

Write-Output $packFullPath

#push from VSTS to Octopus Deploy
nuget push $packFullPath -Source http://localhost:8080/nuget/packages -ApiKey API-OCDNB3OLYYRC4FSMQKPVYCVO1KXXPUN


exit $LastExitCode