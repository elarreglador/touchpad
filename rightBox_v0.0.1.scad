// LATERAL DERECHO
// Requiere instalacion de fuentes

translate([0,0,0]){
    rotate([0,0,0]){
        
        
        union(){
            difference(){
                // Cuerpo principal
                translate([0,0,0])
                    cube([60,130.8,25]);
                // vaciado cuerpo principal
                translate([2,2,-1])
                    cube([56,126.8,24]);
                // Acceso del cableado
                translate([-10,30,-1])
                    cube([20,71,21]);
                // Texto habitacion
                translate ([30,100,25])
                    rotate([0,0,-30])
                        cylinder(h=20, r=15, center=true, $fn=3);
                //translate ([30,31,25])
                //    rotate([0,0,-90])
                //        cylinder(h=20, r=15, center=true, $fn=3);
                translate ([4,50,20])
                    linear_extrude(height=10)
                        text("02", size = 35, font = "Stardos Stencil");
            }

            // Texto


            translate ([2,8,24])
                linear_extrude(height=2)
                    text("Livin properties", size = 4);
            translate ([2,2,24])
                linear_extrude(height=2)
                    text("I+D+I", size = 4);



            //aleta sujeccion inf.
            difference(){
                translate([-22,0,0])
                    cube([22,30,5]);
                translate ([-14,23,-1])
                    cylinder(h=20, r=1.9, center=true, $fn=30);
                translate ([-21,10,4])
                    linear_extrude(height=2)
                        text("rightBox", size = 4);
                translate ([-21,4,4])
                    linear_extrude(height=2)
                        text("v0.0.1", size = 4);
            }

            //aleta sujeccion sup.
            difference(){
                translate([-22,100.8,0])
                    cube([22,30,5]);
                translate ([-14,107.8,-1])
                    cylinder(h=20, r=1.9, center=true, $fn=30);
            }
        }
        
        // Columnas soporte
        for(i = [0 : 5 : 20]){
            translate([-i+1,30,2.5])
                rotate([-90,0,0])
                cylinder(h=75, r=1/2, center=false, $fn=30);
        }
        for(i = [0 : 5 : 15]){
            translate([1,30,i+2.5])
                rotate([-90,0,0])
                cylinder(h=75, r=1/2, center=false, $fn=30);
        }
        for(i = [0 : 5 : 55]){
            translate([i-1,116,0])
                rotate([0,0,0])
                    cube([2,13,24]);
        }

        
    }
}

