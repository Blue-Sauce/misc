import("SolderPasteDispenser-Original.stl");

$fn = 100;
hole_diameter = 5.5;

difference() {

  // Fill the existing hole in the imported STL
  translate([2.4, 8, 6])
    rotate([0, 90, 0])
      cylinder(h=4.8, d=8, center=true);

  // Subtract out the new hole
  translate([0, 8, 6])
    rotate([0, 90, 0])
      cylinder(h=20, d=hole_diameter, center=true);

}