rule malicious_url
{
    strings:
        $url = "putpid"
        
    condition:
        $url
}
