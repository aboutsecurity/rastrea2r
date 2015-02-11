        rule dridex_tempfiles
{
meta:
	author = "Ismael Valenzuela"
	date = "2015-02-10"
	description = "detects dridex TMP files"
	hash0 = "8e7a253cf9bcb1d34f8abb94c2c1a21c"
	hash1 = "e15194f39fb10b47d3e926b6bedf81ba"
	sample_filetype = "exe"
	yaragenerator = "https://github.com/Xen0ph0n/YaraGenerator"
strings:
	$string0 = "fffff."
	$string1 = "AVVWSH"
	$string2 = "AWAVAUATVWSH"
	$string3 = "ffffff."
	$string4 = ".reloc"
condition:
	4 of them
}
