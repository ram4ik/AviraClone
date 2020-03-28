//
//  MainView.swift
//  AviraClone
//
//  Created by Ramill Ibragimov on 28.03.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            HStack {
                SideMenu()
                MainWindowView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
