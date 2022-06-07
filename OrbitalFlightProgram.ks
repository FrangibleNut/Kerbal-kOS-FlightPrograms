
clearScreen.

lock throttle to 0.75.

// countdown

print "counting down:".
from {local countdown is 10.} until countdown = 0 step {set countdown to countdown - 1.} do {
    print " - - - " + countdown.
    wait 1.
} 

