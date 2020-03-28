//
//  MainWindowView.swift
//  AviraClone
//
//  Created by Ramill Ibragimov on 28.03.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct MainWindowView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                ScanneView()
                Spacer()
            }
            Spacer()
        }
    }
}

struct MainWindowView_Previews: PreviewProvider {
    static var previews: some View {
        MainWindowView()
    }
}
