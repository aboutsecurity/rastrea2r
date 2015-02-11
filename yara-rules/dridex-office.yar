rule Office_Macro_HTTP_Calls
{
    meta:
        description = "Office Document Contains Code For HTTP Communications"
        risk = "high"

    strings:
        $Macro1 = "VB_"
        $http1 = "HTTP.open" nocase
        $http2 = "HTTP.send" nocase
        $http3 = "HTTP.Status" nocase
        $http4 = "User-Agent" nocase
        $http5 = "Mozilla/"
        $http5 = "200 Then"

    condition:
        1 of ($Macro*) and 3 of ($http*)
}

rule Office_Macro_HTTP_Payload_Download
{
    meta:
        description = "Office Document Contains Macro Code Indicating Payload Download Capabilities"
        risk = "high"

    strings:
        $Macro1 = "VB_"
        $payload1_1 = /objADOStream\.Write/
        $payload1_2 = /objXMLHTTP\.ResponseBody/
        $payload1_3 = /\.SaveToFile/
        $payload2_1 = "URLDownloadToFile"

    condition:
        1 of ($Macro*) and all of ($payload1_*) or all of ($payload2_*)
}

rule Office_Macro_Executes_EXE
{
    meta:
        description = "Office Document Contains Code Which Executes An Executable File"
        risk = "high"

    strings:
        $Macro1 = "VB_"
        $execute1_1 = /c\:\\/
        $execute1_2 = /\.exe/
        $execute1_3 = "del "

    condition:
        1 of ($Macro*) and all of ($execute1_*)
}

rule Office_Macro_AutoOpen
{
    meta:
        description = "Office Document Contains AutoOpen Or AutoExec Macros"
        reference = "support.microsoft.com/kb/286310"
        risk = "medium"

    strings:
        $Macro1 = "VB_"
        $auto1 = "Auto_Open"
        $auto2 = "Auto_Exec"
        $auto3 = "AutoOpen"
        $auto4 = "AutoExec"

    condition:
        1 of ($Macro*) and 1 of ($auto*)
}

rule Office_Macro_Obfuscation
{
    meta:
        description = "Office Document Contains Obfuscated Macro"
        risk = "medium"

    strings:
        $Macro1 = "VB_"
        $obfuscation_1 = { 22 20 26 20 }
        $obfuscation_2 = { 20 26 20 22 }
        $obfuscation_3 = { 22 20 2b 20 }
        $obfuscation_4 = { 20 2b 20 22 }
        $obfuscation_5 = "Chr("
        $obfuscation_6 = "HexToString"

    condition:
        1 of ($Macro*) and 2 of ($obfuscation_*)
}
