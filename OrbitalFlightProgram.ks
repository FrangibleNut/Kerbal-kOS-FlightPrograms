
// optimized for Craft 4

clearScreen.

lock throttle to 1.

// countdown

print "counting down:".
from {local countdown is 5.} until countdown = 0 step {set countdown to countdown - 1.} do {
    print " - - - " + countdown.
    wait 1.
} 

// staging loop

when maxThrust = 0 and ship:apoapsis < 150000 then {
    print "staging".
    stage.
    preserve.
}

// gravity turn

set myHeading to heading(90,90).
lock steering to myHeading.
until ship:apoapsis > 150000 {
    if ship:altitude < 1000 {
        set myHeading to heading(90,90).
    } else if ship:altitude >= 1000 and ship:altitude < 2000 {
        set myHeading to heading(90,85).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:altitude >= 2000 and ship:altitude < 3000 {
        set myHeading to heading(90,80).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:altitude >= 3000 and ship:altitude < 4000 {
        set myHeading to heading(90,75).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:altitude >= 4000 and ship:altitude < 5000 {
        set myHeading to heading(90,70).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:altitude >= 5000 and ship:altitude < 6000 {
        set myHeading to heading(90,65).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:altitude >= 6000 and ship:altitude < 7000 {
        set myHeading to heading(90,60).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:altitude >= 7000 and ship:altitude < 8000 {
        set myHeading to heading(90,55).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:altitude >= 8000 and ship:altitude < 9000 {
        set myHeading to heading(90,50).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:altitude >= 9000 and ship:altitude < 20000 {
        set myHeading to heading(90,45).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:altitude >= 20000 and ship:altitude < 21000 {
        set myHeading to heading(90,40).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:altitude >= 21000 and ship:altitude < 22000 {
        set myHeading to heading(90,35).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:altitude >= 22000 and ship:altitude < 23000 {
        set myHeading to heading(90,30).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:altitude >= 23000 and ship:altitude < 24000 {
        set myHeading to heading(90,25).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:altitude >= 24000 and ship:altitude < 25000 {
        set myHeading to heading(90,20).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:altitude >= 25000 {
        set myHeading to heading(90,15).
        print "pitch adjusted" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    }
}

// orbital insertion

 when ship:altitude >= 148000 then {
    stage.
    set myHeading to heading(90,2).
    wait 2.
    lock throttle to 1.
 }
