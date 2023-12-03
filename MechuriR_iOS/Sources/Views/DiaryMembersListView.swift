//
//  DiaryMembersListView.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import SwiftUI

struct DiaryMembersListView: View {
    
    @StateObject var teamMemberStore: TeamMemberStore = TeamMemberStore(teamMember: teamMemberData)
    @State var searchFor = ""
    
    var body: some View {
        VStack {
            
            DiaryMembersListTopCell()
            
            NavigationStack {
                List {
                    ForEach (0..<teamMemberStore.teamMember.count, id: \.self) { i in
                        
                        DiaryMembersListCell(teamMember:  teamMemberStore.teamMember[i])
                        
                    }
                }
                .listStyle(.automatic)
                .listRowSpacing(4)
                .scrollContentBackground(.hidden)
                .background(Color.bgColor) //김민재
                .searchable(text: $searchFor, placement: .navigationBarDrawer(displayMode: .automatic))
            }

        }
        .background(Color.bgColor)
    }
}

#Preview {
    DiaryMembersListView()
}
