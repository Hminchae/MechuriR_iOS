//
//  DiaryMembersListCell.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import SwiftUI

struct DiaryMembersListCell: View {
    var teamMember: TeamMember
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                
                Image(teamMember.profile) // 이미지 이름
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 25)
                
                Text(teamMember.memberName) // 멤버 이름
                    .font(.cafe2415)
                    .foregroundStyle(Color.fontColor)
                
                Spacer()
                
                Button {
                    //TODO: 편지쓰기 뷰 연결
                } label: {
                    Image(systemName: "paperplane")
                        .foregroundStyle(Color.fontColor)
                }
                
            }
        }
    }
}
