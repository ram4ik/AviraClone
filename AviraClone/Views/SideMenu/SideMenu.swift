//
//  SideMenu.swift
//  AviraClone
//
//  Created by Ramill Ibragimov on 28.03.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct SideMenu: View {
    @State private var selected = 0
    
    @State private var scannerOpacity = true
    @State private var schedulerOpacity = true
    @State private var modulesOpacity = true
    @State private var quarantineOpacity = true
    @State private var activityOpacity = true
    @State private var accountOpacity = true
    @State private var getProOpacity = true
    @State private var settingsOpacity = true
    @State private var feedbackOpacity = true
    
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                VStack {
                    HStack{
                        if self.scannerOpacity {
                            if self.selected != 0 {
                                Image("baseline_scanner_white_18dp")
                                    .opacity(0.8)
                                    .padding()
                            } else {
                                Image("baseline_scanner_white_18dp")
                                    .opacity(self.selected == 0 ? 1 : 0.4)
                                    .padding()
                            }
                        } else {
                            Image("baseline_scanner_white_18dp")
                                .opacity(self.selected == 0 ? 1 : 0.4)
                                .padding()
                        }
                        Text("Scanner")
                            .foregroundColor(Color("White"))
                            .font(.system(size: 15))
                        Spacer()
                    }
                }
                .frame(width:230, height: 70)
                .background(self.selected == 0 ? Color("DarkBlack") : Color("Black"))
                .onTapGesture {
                    self.selected = 0
                }
                .onHover { hover in
                    self.scannerOpacity = hover
                }
                
                VStack {
                    HStack{
                        if self.schedulerOpacity {
                            if self.selected != 1 {
                                Image("baseline_date_range_white_18dp")
                                    .opacity(0.8)
                                    .padding()
                            } else {
                                Image("baseline_date_range_white_18dp")
                                    .opacity(self.selected == 1 ? 1 : 0.4)
                                    .padding()
                            }
                        } else {
                            Image("baseline_date_range_white_18dp")
                                .opacity(self.selected == 1 ? 1 : 0.4)
                                .padding()
                        }
                        Text("Scheduler")
                            .foregroundColor(Color("White"))
                            .font(.system(size: 15))
                        Spacer()
                    }
                }
                .frame(width:230, height: 70)
                .background(self.selected == 1 ? Color("DarkBlack") : Color("Black"))
                .onTapGesture {
                    self.selected = 1
                }
                .onHover { hover in
                    self.schedulerOpacity = hover
                }
                
                VStack {
                    HStack{
                        if self.modulesOpacity {
                            if self.selected != 2 {
                                Image("baseline_view_module_white_18dp")
                                    .opacity(0.8)
                                    .padding()
                            } else {
                                Image("baseline_view_module_white_18dp")
                                    .opacity(self.selected == 2 ? 1 : 0.4)
                                    .padding()
                            }
                        } else {
                            Image("baseline_view_module_white_18dp")
                                .opacity(self.selected == 2 ? 1 : 0.4)
                                .padding()
                        }
                        Text("Modules")
                            .foregroundColor(Color("White"))
                            .font(.system(size: 15))
                        Spacer()
                    }
                }
                .frame(width:230, height: 70)
                .background(self.selected == 2 ? Color("DarkBlack") : Color("Black"))
                .onTapGesture {
                    self.selected = 2
                }
                .onHover { hover in
                    self.modulesOpacity = hover
                }
                
                VStack {
                    HStack{
                        if self.quarantineOpacity {
                            if self.selected != 3 {
                                Image("baseline_widgets_white_18dp")
                                    .opacity(0.8)
                                    .padding()
                            } else {
                                Image("baseline_widgets_white_18dp")
                                    .opacity(self.selected == 3 ? 1 : 0.4)
                                    .padding()
                            }
                        } else {
                            Image("baseline_widgets_white_18dp")
                                .opacity(self.selected == 3 ? 1 : 0.4)
                                .padding()
                        }
                        Text("Quarantine")
                            .foregroundColor(Color("White"))
                            .font(.system(size: 15))
                        Spacer()
                    }
                }
                .frame(width:230, height: 70)
                .background(self.selected == 3 ? Color("DarkBlack") : Color("Black"))
                .onTapGesture {
                    self.selected = 3
                }
                .onHover { hover in
                    self.quarantineOpacity = hover
                }
                
                VStack {
                    HStack{
                        if self.activityOpacity {
                            if self.selected != 4 {
                                Image("baseline_trending_up_white_18dp")
                                    .opacity(0.8)
                                    .padding()
                            } else {
                                Image("baseline_trending_up_white_18dp")
                                    .opacity(self.selected == 4 ? 1 : 0.4)
                                    .padding()
                            }
                        } else {
                            Image("baseline_trending_up_white_18dp")
                                .opacity(self.selected == 4 ? 1 : 0.4)
                                .padding()
                        }
                        Text("Activity")
                            .foregroundColor(Color("White"))
                            .font(.system(size: 15))
                        Spacer()
                    }
                }
                .frame(width:230, height: 70)
                .background(self.selected == 4 ? Color("DarkBlack") : Color("Black"))
                .onTapGesture {
                    self.selected = 4
                }
                .onHover { hover in
                    self.activityOpacity = hover
                }
                
                VStack {
                    HStack{
                        if self.accountOpacity {
                            if self.selected != 5 {
                                Image("baseline_person_white_18dp")
                                    .opacity(0.8)
                                    .padding()
                            } else {
                                Image("baseline_person_white_18dp")
                                    .opacity(self.selected == 5 ? 1 : 0.4)
                                    .padding()
                            }
                        } else {
                            Image("baseline_person_white_18dp")
                                .opacity(self.selected == 5 ? 1 : 0.4)
                                .padding()
                        }
                        Text("Account")
                            .foregroundColor(Color("White"))
                            .font(.system(size: 15))
                        Spacer()
                    }
                }
                .frame(width:230, height: 70)
                .background(self.selected == 5 ? Color("DarkBlack") : Color("Black"))
                .onTapGesture {
                    self.selected = 5
                }
                .onHover { hover in
                    self.accountOpacity = hover
                }
                
                VStack {
                    HStack {
                        if self.getProOpacity {
                            if self.selected != 6 {
                                Image("baseline_arrow_upward_white_18dp")
                                    .opacity(0.8)
                                    .padding()
                            } else {
                                Image("baseline_arrow_upward_white_18dp")
                                    .opacity(self.selected == 6 ? 1 : 0.4)
                                    .padding()
                            }
                        } else {
                            Image("baseline_arrow_upward_white_18dp")
                                .opacity(self.selected == 6 ? 1 : 0.4)
                                .padding()
                        }
                        Text("Get Pro")
                            .foregroundColor(Color("White"))
                            .font(.system(size: 15))
                        Spacer()
                    }
                }
                .frame(width:230, height: 70)
                .background(self.selected == 6 ? Color("DarkBlack") : Color("Orange"))
                .onTapGesture {
                    self.selected = 6
                }
                .onHover { hover in
                    self.getProOpacity = hover
                }
            }
            
            Spacer()
            
            VStack(spacing: 0) {
                VStack {
                    HStack{
                        if self.settingsOpacity {
                            if self.selected != 7 {
                                Image("baseline_settings_white_18dp")
                                    .opacity(0.8)
                                    .padding()
                            } else {
                                Image("baseline_settings_white_18dp")
                                    .opacity(self.selected == 7 ? 1 : 0.4)
                                    .padding()
                            }
                        } else {
                            Image("baseline_settings_white_18dp")
                                .opacity(self.selected == 7 ? 1 : 0.4)
                                .padding()
                        }
                        Text("Settings")
                            .foregroundColor(Color("White"))
                            .font(.system(size: 15))
                        Spacer()
                    }
                }
                .frame(width:230, height: 70)
                .background(self.selected == 7 ? Color("DarkBlack") : Color("Black"))
                .onTapGesture {
                    self.selected = 7
                }
                .onHover { hover in
                    self.settingsOpacity = hover
                }
                
                VStack {
                    HStack{
                        if self.feedbackOpacity {
                            if self.selected != 8 {
                                Image("baseline_insert_comment_white_18dp")
                                    .opacity(0.8)
                                    .padding()
                            } else {
                                Image("baseline_insert_comment_white_18dp")
                                    .opacity(self.selected == 8 ? 1 : 0.4)
                                    .padding()
                            }
                        } else {
                            Image("baseline_insert_comment_white_18dp")
                                .opacity(self.selected == 8 ? 1 : 0.4)
                                .padding()
                        }
                        Text("Feedback")
                            .foregroundColor(Color("White"))
                            .font(.system(size: 15))
                        Spacer()
                    }
                }
                .frame(width:230, height: 70)
                .background(self.selected == 8 ? Color("DarkBlack") : Color("Black"))
                .onTapGesture {
                    self.selected = 8
                }
                .onHover { hover in
                    self.feedbackOpacity = hover
                }
            }
        }.background(Color("Black"))
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu()
    }
}
