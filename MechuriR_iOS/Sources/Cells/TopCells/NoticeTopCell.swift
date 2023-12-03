//
//  NoticeTopCell.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

//MARK: 알림 탑 셀

import SwiftUI

struct NoticeTopCell: View {
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
            
            Text("알림")
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
    NoticeTopCell()
}
