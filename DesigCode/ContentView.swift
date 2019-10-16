//
//  ContentView.swift
//  DesigCode
//
//  Created by David Pope on 9/10/19.
//  Copyright © 2019 David Pope. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            CardView()
                .offset(x: 0, y: -40)
                .scaleEffect(0.85)
                .rotationEffect(Angle(degrees:15))
                .rotation3DEffect(Angle(degrees: 50), axis: /*@START_MENU_TOKEN@*/(x: 10.0, y: 10.0, z: 10.0)/*@END_MENU_TOKEN@*/)
            
            CardView()
                .offset(x: 0, y: -20)
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees:10))
                .rotation3DEffect(Angle(degrees: 40), axis: /*@START_MENU_TOKEN@*/(x: 10.0, y: 10.0, z: 10.0)/*@END_MENU_TOKEN@*/)
            
            CertificateView()
                .scaleEffect(0.95)
                .rotationEffect(Angle(degrees:5))
                .rotation3DEffect(Angle(degrees: 30), axis: /*@START_MENU_TOKEN@*/(x: 10.0, y: 10.0, z: 10.0)/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            Text("Card Back")
        }
        .frame(width: 340, height: 220.0)
        .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
        .cornerRadius(10)
        .shadow(radius: 20)
    }
}

struct CertificateView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("UI Design")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("accent"))
                        .padding(.top)
                    Text("Certificate")
                        .foregroundColor(Color.white)
                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 30.0, height: 30)
            }
            .padding(.horizontal)
            Image("Background")
        }
        .frame(width: 340.0)
        .background(Color.black)
        .cornerRadius(10)
        .shadow(radius:20)
    }
}
