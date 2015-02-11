rule crime_cridex_memory

{

  meta:

    author = "Greg Leah"

    date  = "2013.03.11"

    description = "detects unpacked/memdumped Cridex/Bugat samples"



  strings:

    $ = "httpshots"

    $ = "httpinjects"

    $ = "formgrabber"

    $ = "bconnect"

  condition:

    all of them

}




rule crime_cridex_dump2

{

    meta:

    author      = "Tal Darsan"

    description = "Cridex detection rules, can be used on dump/sandox output"



   strings: 

        $file = /C:\\.*KB[0-9]{8}\.exe/

        $mutex = /Local\\XMR1B930[0-9A-F]{3}/

   condition:

        $file or $mutex

}

rule Malware_Cridex_Generic {

        meta:

                description = "Rule matching Cridex-C Malware distributed in a German Campaign, January 2014 (Vodafone, Telekom, Volksbank bills)"

                author = "F. Roth"

                date = "2014-01-15"

                reference = "https://www.virustotal.com/en/file/519120e4ff6524353247dbac3f66e6ddad711d384e317923a5bb66c16601743e/analysis/"

                hash = "86d3e008b8f5983c374a4859739f7de4"

        strings:

                $c1 = "NEWDEV.dll" fullword

                $b2a = "COMUID.dll" fullword

				$b2b = "INSENG.dll" fullword

        condition:

                $c1 and 1 of ($b*)

}




rule Malware_Cridex_Generic2 {

	meta:

		description = "Cridex Generic"

		author = "Yara Bulk Rule Generator"

		hash = "ab0e2cbca1434ab87e8cb81f97180292"

	strings:

		$s1 = /[Cc]:\\([a-zA-Z]{4,10}\\|)([a-zA-Z]{4,10}\\|)([a-zA-Z]{4,10}\\|)[a-zA-Z]{4,10}\\[a-zA-Z]{4,10}/ fullword

		$s2 = /[Cc]:\\([a-zA-Z]{4,10}\\|)([a-zA-Z]{4,10}\\|)([a-zA-Z]{4,10}\\|)([a-zA-Z]{4,10}\\|)[a-zA-Z]{4,10}\\[a-zA-Z]{4,10}.[a-z]{3}/ fullword

		$s3 = /[Cc]:\\[a-zA-Z]{4,10}\\[a-zA-Z]{4,10}/ fullword

		$s4 = /[Cc]:\\[a-zA-Z]{4,10}\\[a-zA-Z]{4,10}\\[a-zA-Z]{4,10}.[a-z]{3}/ fullword

	condition:

		( ( #s1 > 4 and #s1 < 8 ) and ( #s2 > 1 and #s2 < 5 ) and ( #s3 > 4 and #s3 < 8 ) or ( #s2 > 0 and #s4 > 0 ) and filesize < 360KB )

}




rule Malware_Cridex_Component {

	meta:

			description = "Rule matching Cridex Malware Component"

			author = "F. Roth"

			date = "2014-01-23"

	strings:

			$s1 = "%System%CMD.EXE /c %AppData%/KB" fullword

			$s2 = "Settings\\User\\Application Data\\KB000" fullword

			$a1 = "if exist \"%S\" goto R" fullword

			$a2 = "del /F /Q /A \"%S\"" fullword

	condition:

			1 of ($s*) or all of ($a*)

}

