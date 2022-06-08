
clearScreen.

lock throttle to 0.75.

// countdown

print "counting down:".
from {local countdown is 10.} until countdown = 0 step {set countdown to countdown - 1.} do {
    print " - - - " + countdown.
    wait 1.
} 

// staging loop

when maxThrust = 0 then {
    print "staging".
    stage.
    preserve.
}

lock oldThrust to ship:availablethrust.
until apoapsis > 100000 {
    print round(ship:apoapsis,0) at (0,16).
    if ship:availableThrust < (oldThrust - 10) {
        stage. wait 1.
    }
}
