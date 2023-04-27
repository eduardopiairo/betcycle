Param(
	[Parameter(Mandatory=$true)][string]$resourceName,
	[Parameter(Mandatory=$true)][string]$buildNumber)
	
$packExtension = ".nupkg"	
$packPath = ".\output\" + $resourceName

$packFullPath = $packPath + "." +$buildNumber + $packExtension 

Write-Output $packFullPath

#push from VSTS to Octopus Deploy
nuget push $packFullPath  -ApiKey API-RB94RZ8YWLXISQDGJPT5K31QLNJPBC -Source https://eduardopiairo.octopus.app/Spaces-1/nuget/packages


exit $LastExitCode