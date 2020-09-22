function Get-FirstRepeatedChar {
    param (
        # Input String to search for the repeated character
        [Parameter(Mandatory=$true)]
        [string]
        $InputString
    )
    
    $SearchArray = @()

    foreach ($_ in $InputString.ToCharArray()) {
        if ($SearchArray.Contains($_)) {
            return $_ 
        }
        else {
            $SearchArray += $_
        }
    }
}

Get-FirstRepeatedChar -InputString "abcdedcba" 