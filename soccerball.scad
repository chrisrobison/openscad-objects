phi = (1+sqrt(5))/2; 

coords = [ 
        [0,+1,+3*phi], [0,+1,-3*phi], [0,-1,+3*phi], [0,-1,-3*phi], 
        [+1,+3*phi,0], [+1,-3*phi,0], [-1,+3*phi,0], [-1,-3*phi,0], 
        [+3*phi,0,+1], [+3*phi,0,-1], [-3*phi,0,+1], [-3*phi,0,-1], 

        [+2,+(1+2*phi),+phi], [+2,+(1+2*phi),-phi], [+2,-(1+2*phi),+phi], [+2,-(1+2*phi),-phi], 
        [-2,+(1+2*phi),+phi], [-2,+(1+2*phi),-phi], [-2,-(1+2*phi),+phi], [-2,-(1+2*phi),-phi], 

        [+(1+2*phi),+phi,+2], [+(1+2*phi),+phi,-2], [+(1+2*phi),-phi,+2], [+(1+2*phi),-phi,-2], 
        [-(1+2*phi),+phi,+2], [-(1+2*phi),+phi,-2], [-(1+2*phi),-phi,+2], [-(1+2*phi),-phi,-2], 

        [+phi,+2,+(1+2*phi)], [+phi,+2,-(1+2*phi)], [+phi,-2,+(1+2*phi)], [+phi,-2,-(1+2*phi)], 
        [-phi,+2,+(1+2*phi)], [-phi,+2,-(1+2*phi)], [-phi,-2,+(1+2*phi)], [-phi,-2,-(1+2*phi)], 

        [+1,+(2+phi),+2*phi], [+1,+(2+phi),-2*phi], [+1,-(2+phi),+2*phi], [+1,-(2+phi),-2*phi], 
        [-1,+(2+phi),+2*phi], [-1,+(2+phi),-2*phi], [-1,-(2+phi),+2*phi], [-1,-(2+phi),-2*phi], 

        [+(2+phi),+2*phi,+1], [+(2+phi),+2*phi,-1], [+(2+phi),-2*phi,+1], [+(2+phi),-2*phi,-1], 
        [-(2+phi),+2*phi,+1], [-(2+phi),+2*phi,-1], [-(2+phi),-2*phi,+1], [-(2+phi),-2*phi,-1], 

        [+2*phi,+1,+(2+phi)], [+2*phi,+1,-(2+phi)], [+2*phi,-1,+(2+phi)], [+2*phi,-1,-(2+phi)], 
        [-2*phi,+1,+(2+phi)], [-2*phi,+1,-(2+phi)], [-2*phi,-1,+(2+phi)], [-2*phi,-1,-(2+phi)], 
]; 

hull() { 
        for (a = [0 : len(coords) - 1]) { 
                echo(coords[a]); 
                translate(100 * coords[a]) cube([1, 1, 1], center = true); 
        } 
} 
