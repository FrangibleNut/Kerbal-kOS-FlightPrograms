// basic gravity turn

clearScreen.

lock throttle to 1.

// countdown

print "counting down:".
from {local countdown is 5.} until countdown = 0 step {set countdown to countdown - 1.} do {
    print " - - - " + countdown.
    wait 1.
} 

// staging loop

when maxThrust = 0 then {
    print "staging".
    stage.
    preserve.
}

// gravity turn

set myHeading to heading(90,90).
lock steering to myHeading.
until ship:apoapsis > 100000 {
    if ship:velocity:surface:mag < 100 {
        set myHeading to heading(90,90).
    } else if ship:velocity:surface:mag >= 100 and ship:velocity:surface:mag < 200 {
        set myHeading to heading(90,80).
        print "pitching to 80 degrees" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:velocity:surface:mag >= 200 and ship:velocity:surface:mag < 300 {
        set myHeading to heading(90,70).
        print "pitching to 70 degrees" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:velocity:surface:mag >= 300 and ship:velocity:surface:mag < 400 {
        set myHeading to heading(90,60).
        print "pitching to 60 degrees" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:velocity:surface:mag >= 400 and ship:velocity:surface:mag < 500 {
        set myHeading to heading(90,50).
        print "pitching to 50 degrees" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:velocity:surface:mag >= 500 and ship:velocity:surface:mag < 600 {
        set myHeading to heading(90,40).
        print "pitching to 40 degrees" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:velocity:surface:mag >= 600 and ship:velocity:surface:mag < 700 {
        set myHeading to heading(90,30).
        print "pitching to 30 degrees" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:velocity:surface:mag >= 700 and ship:velocity:surface:mag < 800 {
        set myHeading to heading(90,20).
        print "pitching to 20 degrees" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    } else if ship:velocity:surface:mag >= 800 {
        set myHeading to heading(90,10).
        print "pitching to 10 degrees" at(0,15).
        print round(ship:apoapsis,0) at (0,16).
    }
}

print "100km apoapsis achieved".

lock throttle to 0.

