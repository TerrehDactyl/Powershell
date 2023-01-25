Switch($env:Customer)
{
    "Company 1"{$cxtok = "gttw4tt-t43w-t43w-t43wt-43w-23-f"
              $server = "your.api_1.server.sophos.com"}

    "Company 2"{$cxtok = "gg543w4g4-43g43-g43g4-g43g43-g34"
              $server = "your.api_1.server.sophos.com"}

    "Company 3"{$cxtok = "faedfdas0fds-dfsafdaf-ewf3-fdaw-3f2-aawf"
              $server = "your.api.server.sophos.com"}

    Default{throw  "You selected $env:Customer You must select a company name"}
}
$dir = 'C:\SophosInstaller\'
mkdir $dir
cp SophosSetup.exe $dir
cd $dir
.\SophosSetup.exe --customertoken=$cxtok --epinstallerserver=$server --products="deviceEncryption" --quiet