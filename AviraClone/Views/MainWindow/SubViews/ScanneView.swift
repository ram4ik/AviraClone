//
//  ScanneView.swift
//  AviraClone
//
//  Created by Ramill Ibragimov on 28.03.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ScanneView: View {
    @State private var selected = false
    @State private var dragAndDropSelected = false
    
    var body: some View {
        ZStack {
            Color("GDarkWhite")
            
            VStack {
                Image("baseline_scanner_black_48dp")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .opacity(0.4)
                    .shadow(color: Color("DarkGray"), radius: 10, x: 0, y: 0)
                Text("Protected")
                    .font(.title)
                    .fontWeight(.thin)
                    .padding(.bottom)
                Group {
                    Text("The computer is safe,")
                        .padding(.bottom, 4)
                    Text("and your AntiVirus is up to date.")
                }
                .foregroundColor(.secondary)
                
                ZStack {
                    Rectangle()
                        .frame(width: 324, height: 53)
                        .foregroundColor(Color("White"))
                        .border(Color("DarkGray").opacity(self.selected ? 1 : 0.4) , width: 2)
                    Text("New Scan")
                        .font(.system(size: 18))
                        .opacity(self.selected ? 1 : 0.6)
                }
                .padding()
                .onTapGesture {
                    // TODO: Scan
                    print("Scan started")
                }
                .onHover { hover in
                    self.selected = hover
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 324, height: 72)
                        .foregroundColor(Color("GDarkWhite"))
                        .overlay(
                            Capsule(style: .continuous)
                                .stroke(Color(.secondaryLabelColor).opacity(self.dragAndDropSelected ? 0.8 : 0.4), style: StrokeStyle(lineWidth: 5, dash: [10]))
                        )
                    HStack {
                        Image("baseline_get_app_black_24dp")
                            .opacity(self.dragAndDropSelected ? 0.6 : 0.4)
                        Text("Drag & drop files here")
                            .font(.system(size: 26))
                            .fontWeight(.ultraLight)
                            .opacity(self.dragAndDropSelected ? 0.8 : 0.4)
                    }
                }
                .onTapGesture {
                    // TODO: Drag & Drop
                    print("Drag & Drop")
                }
                .onHover { hover in
                    self.dragAndDropSelected = hover
                }
            }
        }
    }
}

struct ScanneView_Previews: PreviewProvider {
    static var previews: some View {
        ScanneView()
    }
}
