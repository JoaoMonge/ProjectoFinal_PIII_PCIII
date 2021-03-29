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
        ZStack{
            
            Image("running-background").resizable().scaledToFill()
        VStack{
            
            
            HStack{
            ZStack{
                VStack{
                 Text(String(format: "%.02f  Km/h", l.speed))
                 Text("Speed")
                }
            }
            .frame(width: 150, height: 60, alignment: .center
            ).background(Color.gray.opacity(0.8)).cornerRadius(5).multilineTextAlignment(.center).foregroundColor(.white).lineSpacing(1).padding(EdgeInsets(top: 0, leading: 1, bottom: 2, trailing: 1))
            ZStack(){
                VStack{
                Text(String(format: "%.02f  Km/h", l.avg_speed))
                Text("Avg. Speed")
                }}
                .frame(width: 150, height: 60, alignment: .center
                ).background(Color.gray.opacity(0.8)).cornerRadius(5).multilineTextAlignment(.center).foregroundColor(.white).lineSpacing(1).padding(EdgeInsets(top: 0, leading: 1, bottom: 2, trailing: 1))
            }
            
                
            
            
            
            HStack(spacing: 10){
                VStack{
                    Text(l.duration)
                Text("Elapsed time")
                }}.frame(width: 310, height: 60, alignment: .center
            ).background(Color.gray.opacity(0.8)).cornerRadius(5).multilineTextAlignment(.center).foregroundColor(.white).lineSpacing(10).padding(EdgeInsets(top: 0, leading: 1, bottom: 2, trailing: 1))
            
            
            HStack{
            HStack(spacing: 10){
                VStack{
                Text(String(format: "%.02f  km", l.distance))
                Text("Distance")
                }}.frame(width: 150, height: 60, alignment: .center
                ).background(Color.gray.opacity(0.8)).cornerRadius(5).multilineTextAlignment(.center).foregroundColor(.white).lineSpacing(1).padding(EdgeInsets(top: 0, leading: 1, bottom: 2, trailing: 1))
            
            HStack(spacing: 10){
                VStack{
                Text(String(format: "%d", l.calories))
                Text("cal")
                
                }}.frame(width: 150, height: 60, alignment: .center
                ).background(Color.gray.opacity(0.8)).cornerRadius(5).multilineTextAlignment(.center).foregroundColor(.white).lineSpacing(1).padding(EdgeInsets(top: 0, leading: 1, bottom: 2, trailing: 1))
            }
            
           }.edgesIgnoringSafeArea(.all)
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
    }
    
    
    struct StatsView_Previews: PreviewProvider {
        static var previews: some View {
            StatsView()
        }
    }
}

