//
//  MainDetailTopCell.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

//MARK: 일기장 디테일 탑 셀

import SwiftUI

struct DiaryDetailTopCell: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var isShowMenu: Bool //점 세개 버튼
    
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
            
            Text("[일기장 이름]")
                .font(.cafe2418)
                .foregroundStyle(Color.fontColor)
                .bold()
                .padding()
            
            Spacer()
            
            Button {
                isShowMenu.toggle()
            }label: {
                Image(systemName: "ellipsis")
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.fontColor)
            }
            .padding()
            
        }
        .background(Rectangle()
            .fill(Color.btnColor)
            .frame(height: 45)
                    
        )
//        HStack {
//            Spacer()
//            DiaryDetailMenuView()
//        }
//        .padding(.top, -10)
//        .opacity(isShowMenu ? 1 : 0)
    }
}


