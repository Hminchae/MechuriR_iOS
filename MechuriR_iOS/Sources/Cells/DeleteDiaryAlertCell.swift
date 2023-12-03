//
//  DeleteDiaryAlertCell.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import SwiftUI

struct DeleteDiaryAlertCell: View {
    var body: some View {
        
        VStack(spacing: 1) {
            
            Text("일기장을 정말 삭제하시겠어요?")
                .font(.cafe2418)
                .foregroundStyle(Color.fontColor)
            
            Text("삭제 후에는 일기장이 영구적으로 삭제됩니다.")
                .font(.cafe24Air15)
                .foregroundStyle(Color.emptyFontColor)
                .padding(15)
            
            Divider()
                .frame(height: 3)
                .background(Color.deviderColor)
            
            HStack {
                
                Button {
                    //TODO: 취소버튼 구현
                } label: {
                    Text("취소")
                        .font(.cafe2418)
                        .foregroundStyle(Color.confirmBtnColor)
                        .frame(maxWidth: .infinity)
                }
                
                Divider()
                    .frame(width: 3, height: 30)
                    .background(Color.deviderColor)
                
                Button {
                    //TODO: 일기장 삭제버튼 구현
                } label: {
                    Text("네")
                        .font(.cafe2418)
                        .foregroundStyle(Color.cancelBtnColor)
                        .frame(maxWidth: .infinity)
                }
                
                
            }
            .padding(.vertical, 5)
        }
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 5))
    }
}

#Preview {
    DeleteDiaryAlertCell()
}
