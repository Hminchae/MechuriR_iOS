//
//  MakeNewDiaryGroupView.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

//MARK: 모임생성 탑 셀

import SwiftUI

struct MakeNewDiaryGroupTopCell: View {
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
            
            Text("일기장")
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
    MakeNewDiaryGroupTopCell()
}
