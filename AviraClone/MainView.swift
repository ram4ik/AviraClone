//
//  MainView.swift
//  AviraClone
//
//  Created by Ramill Ibragimov on 28.03.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State private var selected = 0
    
    var body: some View {
        VStack {
            HStack {
                SideMenu(selected: self.$selected)
                MainWindowView(selected: self.$selected)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
