
// optimized for Craft 4

clearScreen.

set throttle to 1.

wait 5.

// countdown

from {local countdown is 15.} until countdown = 0 step {set countdown to countdown - 1.} do {
    print "counting down:" at (0,4).
    print "  T -  " + countdown + " " at (0,6).
    wait 1.
}

clearScreen.

stage.

print "lift off" at (0,4).

// apoapsis

when ship:apoapsis > 0 then {
    print "apoapsis:  " + round(ship:apoapsis,0) at (0,6).
    print "periapsis: " + round(ship:periapsis,0) + " " at (0,8).
    preserve.
}

// gravity turn

set steering to heading(90,90). until ship:altitude > 1000.

if ship:altitude >= 1000 and ship:altitude < 2000. { 
    set steering to heading(90,85).
    print "pitching to 85" at (0,4). 
    wait until ship:altitude >= 2000.
}

if ship:altitude >= 2000 and ship:altitude < 3000. { 
    set steering to heading(90,80).
    print "pitching to 80" at (0,4).
    wait until ship:altitude >= 3000.
}

if ship:altitude >= 3000 and ship:altitude < 4000. {
    set steering to heading(90,75).
    print "pitching to 75" at (0,4).
    wait until ship:altitude >= 4000.
}

if ship:altitude >= 4000 and ship:altitude < 5000. {   
    set steering to heading(90,70).
    print "pitching to 70" at (0,4).
    wait until ship:altitude >= 5000.
}
     
if ship:altitude >= 5000 and ship:altitude < 6000. {
    set steering to heading(90,65).
    print "pitching to 65" at (0,4).
    wait until ship:altitude >= 6000.
} 

if ship:altitude >= 6000 and ship:altitude < 7000. {
    set steering to heading(90,60).
    print "pitching to 60" at (0,4).
    wait until ship:altitude >= 7000.
}

if ship:altitude >= 7000 and ship:altitude < 8000. {
    set steering to heading(90,55).
    print "pitching to 55" at (0,4).
    wait until ship:altitude >= 8000.
}     

if ship:altitude >= 8000 and ship:altitude < 9000. {
    set steering to heading(90,50).
    print "pitching to 50" at (0,4).
    wait until ship:altitude >= 9000.
}

if ship:altitude >= 9000 and ship:altitude < 20000. {
    set steering to heading(90,45).
    print "pitching to 45" at (0,4).
    wait until ship:altitude >= 20000.
}

if ship:altitude >= 20000 and ship:altitude < 21000. {
    set steering to heading(90,40).
    print "pitching to 40" at (0,4).
    wait until ship:altitude >= 21000.
}

if ship:altitude >= 21000 and ship:altitude < 22000. {
    set steering to heading(90,35).
    print "pitching to 35" at (0,4).
    wait until ship:altitude >= 22000.
}

if ship:altitude >= 22000 and ship:altitude < 23000. {
    set steering to heading(90,30).
    print "pitching to 30" at (0,4).
    wait until ship:altitude >= 23000.
} 

if ship:altitude >= 23000 and ship:altitude < 24000. {
    set steering to heading(90,25).
    print "pitching to 25" at (0,4).
    wait until ship:altitude >= 24000.
}

if ship:altitude >= 24000 and ship:altitude < 25000. { 
    set steering to heading(90,20).
    print "pitching to 20" at (0,4).
    wait until ship:altitude >= 25000.
}
     
if ship:altitude >= 25000. {
    set steering to heading(90,15).
    print "pitching to 15" at (0,4).
    wait until ship:altitude >= 26000.
}

if ship:apoapsis < 150000 set throttle to 1. until ship:apoapsis >= 150000.

if ship:apoapsis >= 150000 set throttle to 0. print "main engine cut off" at (0,4). until ship:altitude > 50000.

// orbital insertion

if ship:altitude > 50000 {
    stage.
    print "stage seperation   " at (0,4).
    wait until ship:altitude >= ship:apoapsis - 100.
}

if ship:altitude >= ship:apoapsis - 100 {
    print "intiaiting orbital insertion" at (0,4).
    set steering to heading(90,1).
    wait 2.
    lock throttle to 1.
    wait until ship:periapsis >= ship:apoapsis - 5000.
}

if ship:periapsis >= ship:apoapsis - 5000 {
    print "orbital insertion complete   " at (0,4).
    lock throttle to 0.
    wait until ship:altitude >= round(ship:apoapsis,0).
}

// circularize orbit

if ship:altitude >= round(ship:apoapsis,0) {
    print "circularizing orbit         " at (0,4).
    set steering to heading(90,1).
    wait 0.5.
    lock throttle to 1.
    wait until ship:periapsis >= ship:apoapsis - 1000.
}

if ship:periapsis >= ship:apoapsis - 1000 {
    lock throttle to 0.0.
    wait until ship:altitude >= round(ship:apoapsis,0).
}

if ship:altitude >= round(ship:apoapsis,0) { 
    set steering to heading(90,1).
    wait 0.5.
    lock throttle to 1.
    wait until ship:periapsis >= ship:apoapsis - 100.
}

if ship:periapsis >= ship:apoapsis - 1000 {
    print "circularization complete" at (0,4).
    lock throttle to 0.0.
    wait until round(ship:altitude,0) = round(ship:periapsis,0)
}

// deorbit maneuver

if round(ship:altitude,0) = round(ship:periapsis,0) {
    print "initiating deorbit maneuver" at (0,4).
    set heading to retrograde.
    lock throttle to 1.
    wait until ship:periapsis <= 0.
}

if ship:periapsis <= 0 {
    lock throttle to 0.
    print "deorbit maneuver complete   " at (0,4).
    wait 5.
    print "prepare for reentry         " at (0,4).
    stage.
}
