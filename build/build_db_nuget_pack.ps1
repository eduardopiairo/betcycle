Param(
	[Parameter(Mandatory=$true)][string]$resourceName,
	[Parameter(Mandatory=$true)][string]$buildNumber)

nuget pack .\$resourceName\$resourceName.nuspec -Version $buildNumber -BasePath .\$resourceName -OutputDirectory .\output

exit $LastExitCode
