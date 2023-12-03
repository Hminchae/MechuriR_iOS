//
//  friendsListTopCell.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

//MARK: 친구목록뷰 탑 셀

import SwiftUI

struct FriendsListTopCell: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        HStack{
            
            Button {
                dismiss()
            }label: {
                Image(systemName: "arrow.backward")
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.fontColor)
            }
            .padding()
            
            Spacer()
            
            Text("친구 목록")
                .font(.cafe2418)
                .foregroundStyle(Color.fontColor)
                .bold()
                .padding()
            
            Spacer()
            
            Button {
                //TODO: 친구 목록 -> 친구 추가뷰로 전환 버튼 미완
            }label: {
                Image(systemName: "person.badge.plus")
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.fontColor)
            }
            .padding()
            
        }
        .background(Rectangle()
            .fill(Color.btnColor)
            .frame(height: 45)
        )
        
    }
}

#Preview {
    FriendsListTopCell()
}
