:local Lhostname $"lease-hostname"
:local Loptions $"lease-options"
:local LactIP $leaseActIP
:local msgStr 
:local currTime [/system clock get time] ; # this is not getting updated!

:if ($leaseBound = "1") do={
    :log info ("** ".$currTime." - ".$"lease-hostname"." requested an IP")
    :set msgStr "B "
} else={
    :log info ("** ".$currTime." - ".$"lease-hostname"." released the IP")
    :set msgStr "U "
}

:log info ("** ".[/system clock get time]." $msgStr - Address $leaseActIP assigned to MAC $leaseActMAC of $Lhostname on server $leaseServerName")

:log info ("** ".[/system clock get time]." - Lease event 1 $msgStr: IP=".$LactIP)
:log info ("** ".[/system clock get time]." - Lease event 2 $msgStr: Hostname=".$leaseActhostname)
:log info ("** ".[/system clock get time]." - Lease event 3 $msgStr: MAC=$leaseActMAC")
:log info ("** ".[/system clock get time]." - Lease event 4 $msgStr: Bound=".$leaseBound)
:log info ("** ".[/system clock get time]." - Lease event 5 $msgStr: Options1 = ".$Loptions)
:log info ("** ".[/system clock get time]." - Lease event 6 $msgStr: Options2 = ".$"lease-options")

#:log info ("** ".[/system clock get time]." - after if")
