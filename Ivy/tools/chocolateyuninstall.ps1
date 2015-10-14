 
$version = '2.4.0'
$name = "apache-ivy-$version"
$binRoot = Get-BinRoot
$ivy_home = Join-Path $binRoot $name
$ivy_bin = Join-Path $ivy_home 'bin'
# $ivy_repo = Join-Path $env:USERPROFILE '.ivy'
 
# [Environment]::SetEnvironmentVariable('M2_HOME', $null, "User")
# [Environment]::SetEnvironmentVariable('MAVEN_OPTS', $null, "User")
# [Environment]::SetEnvironmentVariable('M2', $null, "User")
# [Environment]::SetEnvironmentVariable('M2_REPO', $null, "User")
 
"Please manually remove Maven ($m2_home) from the PATH environment variable."
# Remove Maven from the path environment variable
#if ($null -ne $env:path)
#{
#   $p = $env:path.Split(";") |? {$_.toLower() -ne $m2_bin}
#    $newPath = [String]::Join(";")
#    [Environment]::SetEnvironmentVariable('PATH', $newPath, "User")
#}
 
Remove-Item $ivy_home -Recurse -Force