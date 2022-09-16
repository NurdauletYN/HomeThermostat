//
//  ContentView.swift
//  SmartHomeThermostat
//
//  Created by user on 28.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color("Background")
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 0) {
                        // MARK: Thermometer
                        ThermometerView()
                            .padding(.top, 30)
                            .padding(.bottom, 60)
                        
                        // MARK: Smart systems
                        HStack(spacing: 20){
                            // MARK: Humidity Card
                            ClimateCard(iconName: "humidity.fill", index: "Inside humidity", measure: "49%")
                            
                            // MARK: Temperature Card
                            ClimateCard(iconName: "thermometer", index: "Outside temp.", measure: "-10º")
                        }
                    }
                }
            }
            .navigationTitle("Thermostat")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
