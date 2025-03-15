:local Lhostname $"lease-hostname"
:local Loptions $"lease-options"
:local LactIP $leaseActIP

:log info ("** ".[/system clock get time]." - Address $leaseActIP assigned to MAC $leaseActMAC of $Lhostname on server $leaseServerName")

:if ($leaseBound = "1") do={
    :log info ("** ".[/system clock get time]." - ".$"lease-hostname"." requested an IP")
} else={
    :log info ("** ".[/system clock get time]." - ".$"lease-hostname"." released the IP")
}
:log info ("** ".[/system clock get time]." - Lease event 1: IP=".$LactIP)
:log info ("** ".[/system clock get time]." - Lease event 2: Hostname=".$leaseActhostname)
:log info ("** ".[/system clock get time]." - Lease event 3: MAC=$leaseActMAC")
:log info ("** ".[/system clock get time]." - Lease event 4: Bound=".$leaseBound)
:log info ("** ".[/system clock get time]." - Lease event 5: Options = ".$Loptions)
:log info ("** ".[/system clock get time]." - Lease event 6: Options = ".$"lease-options")

:log info ("** ".[/system clock get time]." - after if")
