Param(
	[Parameter(Mandatory=$true)][string]$resourceName,
	[Parameter(Mandatory=$true)][string]$buildNumber)

nuget pack .\$resourceName\publish\$resourceName.nuspec -Version $buildNumber -BasePath .\$resourceName -OutputDirectory .\output

exit $LastExitCode
