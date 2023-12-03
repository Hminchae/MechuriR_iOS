//
//  DiaryMembersTopCell.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

//MARK: 멤버목록 탑 셀

import SwiftUI

struct DiaryMembersListTopCell: View {
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
            
            Text("멤버 목록")
                .font(.cafe2418)
                .foregroundStyle(Color.fontColor)
                .bold()
                .padding()
            
            Spacer()
            
            Button {
                //TODO: 멤버목록 -> 멤버 추가뷰로 전환 버튼 미완
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
    DiaryMembersListTopCell()
}
