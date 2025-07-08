difference(){
    union() {
        // Base
        cube([40.7,130.3,3]);
        // Borde
        difference() {
            cube([40.7,130.3,5]);
            translate([2,2,-1]) 
                cube([36.7,126.3,7]);
        }
        // Borde salida cableado
        translate ([0,38,0])
            cube([34.7,49.3,4]);
        // Base tornillo
        translate ([16,126.3,0])
            cube([7.9,4,8.5]);
    }

    // Taladro tornillo
    translate ([20.35,130.8,5.5])
        rotate([90,0,0])
            cylinder(h=20, r=1.2, center=true, $fn=10);
    // Taladro sup. izq.
    translate ([13.5,23,0])
        cylinder(h=20, r=1.9, center=true, $fn=30);
    // Taladro inf. izq.
    translate ([13.5,107.8,0])
        cylinder(h=20, r=1.9, center=true, $fn=30);
    // Taladro sup. der.
    translate ([27.2,23,0])
        cylinder(h=20, r=1.9, center=true, $fn=30);
    // Taladro inf. der.
    translate ([27.2,107.8,0])
        cylinder(h=20, r=1.9, center=true, $fn=30);
    // Salida cableado
    translate ([8,40,-1])
        cube([24.7,45.3,20]);
    // Salida cableado (lateral)
    translate ([-1,40,-1])
        cube([24.7,45.3,20]);
    // Texto
    translate ([12,35,3])
        text("POD SUITE", size = 2);
    translate ([13,30,3])
        text(" HOSTEL", size = 2);
    // Cierre
    translate([14.4,-1,-1])
        cube([11.8,2.9,3.5]);
}







