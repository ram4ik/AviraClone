//
//  MainWindowView.swift
//  AviraClone
//
//  Created by Ramill Ibragimov on 28.03.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct MainWindowView: View {
    @Binding var selected: Int
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                if self.selected == 0 {
                    ScanneView()
                } else if self.selected == 1 {
                    SchedulerView()
                } else if self.selected == 2 {
                    ModulesView()
                } else if self.selected == 3 {
                    QuarantineView()
                } else if self.selected == 4 {
                    ActivityView()
                } else if self.selected == 5 {
                    AccountView()
                } else if self.selected == 6 {
                    GetProView()
                } else if self.selected == 7 {
                    SettingsView()
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct MainWindowView_Previews: PreviewProvider {
    static var previews: some View {
        MainWindowView(selected: .constant(0))
    }
}
