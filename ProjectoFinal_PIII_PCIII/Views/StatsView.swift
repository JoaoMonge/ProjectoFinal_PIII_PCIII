//  PARA EDITAR
//  StatsView.swift
//  ProjectoFinal_PIII_PCIII
//
//  Created by João Monge on 05/01/2021.
//

import SwiftUI

struct StatsView: View {
    @ObservedObject var l = stats
    var body: some View {
        VStack{
            Text(String(format: "%.02f  Km/h", l.speed))
            Text("Speed")
            
            Text(String(format: "%.02f  Km/h", l.avg_speed))
            Text("Avg. Speed")
            
            Text(l.duration)
            Text("Elapsed time")
            
            Text(String(format: "%.02f  km", l.distance))
            Text("Distance")
            
            Text(String(format: "%d", l.calories))
            Text("cal")
        }
    }
}


struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
