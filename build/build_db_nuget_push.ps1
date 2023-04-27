Param(
	[Parameter(Mandatory=$true)][string]$resourceName,
	[Parameter(Mandatory=$true)][string]$buildNumber,
	[Parameter(Mandatory=$true)][string]$apiKey)
	
$packExtension = ".nupkg"	
$packPath = ".\output\" + $resourceName

$packFullPath = $packPath + "." +$buildNumber + $packExtension 

Write-Output $packFullPath

#push from VSTS to Octopus Deploy
nuget push $packFullPath  -ApiKey $apiKey -Source https://eduardopiairo.octopus.app/Spaces-1/nuget/packages
$apiKey


exit $LastExitCode