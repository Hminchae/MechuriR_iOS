//
//  MakeNewDiaryTopCell.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

//MARK: 일기쓰기 탑 셀

import SwiftUI

struct MakeNewDiaryTopCell: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        HStack{
            
            Button {
                dismiss()
            }label: {
                Image(systemName: "xmark")
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.fontColor)
            }
            .padding()
            
            Spacer()
            
            Text("일기 쓰기")
                .font(.cafe2418)
                .foregroundStyle(Color.fontColor)
                .bold()
                .padding()
            
            Spacer()
            
            Button {
                //TODO: 체크마크 구현 미완
            }label: {
                Image(systemName: "checkmark")
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
    MakeNewDiaryTopCell()
}
