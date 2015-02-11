rule PE_file
{
    strings:
        $mz = "MZ"
        $pe = "PE"
        
    condition:
        $mz and $pe
}