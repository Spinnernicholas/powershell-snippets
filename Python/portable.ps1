Param (
    [string]$python_script  #Optional Python Script
)

#Configuration
$python = "PATH\To\python.exe"

#Prepare Environment
Set-Location (Split-Path $MyInvocation.MyCommand.Path -parent)  #Sets Current Path
Set-Alias -name Python -Value $python                           #Create Python Alias

#Run Python
if($python_script) {
	Python $python_script   #Run Python Script
} else {
	Python                  #Open Python Interpreter
}