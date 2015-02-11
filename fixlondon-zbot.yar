rule fixlondon_zbot
{
meta:
	author = "Ismael Valenzuela"
	date = "2015-02-08"
	description = "Zbot Samples - London"
	hash0 = "8d7dfad9ec0d42369d523af735c6e2ef"
	hash1 = "076a6e93f37e0fc136e282d46bbe2801"
	sample_filetype = "exe"
	yaragenerator = "https://github.com/Xen0ph0n/YaraGenerator"
strings:
	$string0 = "jAtYiaUanBBiNbrk"
	$string1 = "z'[B]{)"
	$string2 = "KR<29o"
	$string3 = "/> <trustInfo xmlns"
	$string4 = "OA/cUOt"
	$string5 = "jyL;z3ar"
	$string6 = "Xkur@y"
	$string7 = "aummQr"
	$string8 = "Jx6J%/"
	$string9 = "wkg@{AI"
	$string10 = "ggggggU"
	$string11 = "Y;WSKIJ]"
	$string12 = "EEEEgE"
	$string13 = "hlSxAtOFTndoNcPCwL"
	$string14 = "UKPrQBeCikTGEs"
	$string15 = "NBeDYOWXXNwEsPbEGTlFf"
	$string16 = "Svr8)N"
	$string17 = "faPihuntNCKfCxcWV"
	$string18 = "\\JXxy0"
condition:
	18 of them
}
