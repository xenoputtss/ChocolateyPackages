#create folder if not exists
function CreateFolder ([string]$Path) {
  New-Item -Path $Path -type directory -Force
}
 
$binRoot = Get-BinRoot
 
CreateFolder($binRoot)
 
$version = '2.4.0'
$name = "apache-ivy-$version"
$ivy_home = Join-Path $binRoot $name
$ivy_bin = Join-Path $ivy_home 'bin'
# $ivy_repo = Join-Path $env:USERPROFILE '.ivy'
 
 #http://www.us.apache.org/dist//ant/ivy/2.4.0/apache-ivy-2.4.0-bin.zip
$url = "http://www.us.apache.org/dist/ant/ivy/$version/$name-bin.zip"
 
 
# [Environment]::SetEnvironmentVariable('IVY_HOME', $ivy_home, "User")
# [Environment]::SetEnvironmentVariable('IVY', $ivy_bin, "User")
# [Environment]::SetEnvironmentVariable('IVY_REPO', $ivy_repo, "User")
 
Install-ChocolateyZipPackage 'Ivy' $url $binRoot #download the maven .zip and unzip in $binRoot folder
 
# CreateFolder($ivy_repo)
 
Install-ChocolateyPath $ivy_bin 'User' #add to path