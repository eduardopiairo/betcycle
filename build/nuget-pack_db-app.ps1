Param(
	[Parameter(Mandatory=$true)][string]$resourceName,
	[Parameter(Mandatory=$true)][string]$buildNumber)

nuget pack .\$resourceName\publish\$resourceName.nuspec -Version $buildNumber -BasePath .\src\DevOpsPorto\bin\Release\netcoreapp1.0\publish -OutputDirectory ..\output

exit $LastExitCode
