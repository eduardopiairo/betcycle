Param(
	[Parameter(Mandatory=$true)][string]$resourceName,
	[Parameter(Mandatory=$true)][string]$buildNumber)

Write-Output $buildNumber	

nuget pack .\$resourceName\$resourceName.nuspec -Version 1.1 -BasePath .\$resourceName -OutputDirectory .\output

exit $LastExitCode
