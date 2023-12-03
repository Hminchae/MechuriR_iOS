//
//  sentLetterTopCell.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

//MARK: 보낸편지 탑 셀

import SwiftUI

struct SentLetterTopCell: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        HStack{
            
            Button {
            //없는 버튼
            }label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color.btnColor)
            }
            .padding()
            
            Spacer()
            
            Text("보낸 편지")
                .font(.cafe2418)
                .foregroundStyle(Color.fontColor)
                .bold()
                .padding()
            
            Spacer()
            
            Button {
                dismiss()
            }label: {
                Image(systemName: "xmark")
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
    SentLetterTopCell()
}
