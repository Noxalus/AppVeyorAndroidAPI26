param (
    [string]$AndroidToolPath = "${env:ProgramFiles(x86)}\Android\android-sdk\tools\android",
    [string]$AndroidSDKManagerPath = "${env:ProgramFiles(x86)}\Android\android-sdk\tools\bin\sdkmanager"
 )

# Tools
Echo Y | & $AndroidToolPath update sdk -u -a -t tools --force
Echo Y | & $AndroidToolPath update sdk -u -a -t platform-tools --force

# Start-Process -FilePath "$AndroidToolPath" -ArgumentList "update sdk -u -a -t $sdkIndexArgument" -Verb Print

# Echo 'y' | & $AndroidSDKManagerPath --help

exit