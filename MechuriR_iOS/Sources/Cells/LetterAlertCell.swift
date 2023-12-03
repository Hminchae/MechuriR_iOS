//
//  LetterAlertCell.swift
//  MechuriR_iOS
//
//  Created by 김민재 on 12/3/23.
//

import SwiftUI

struct LetterAlertCell: View {
    @Binding var isPresentPopup: Bool
    
    var body: some View {
        VStack {
            Text("6개월 후에 편지를 보내드릴게요:>")
                .font(.cafe2418)
                .foregroundStyle(Color.fontColor)
                .padding(30)
            
            Divider()
                .frame(height: 3)
                .background(Color.deviderColor)
            
            Button {
                isPresentPopup.toggle()
            } label: {
                Text("확인")
                    .font(.cafe2418)
                    .foregroundStyle(Color.confirmBtnColor)
                    .frame(maxWidth: .infinity)
            }
            .padding(.bottom, 10)
            
        }
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 5))
    }
}

#Preview {
    LetterAlertCell(isPresentPopup: .constant(true))
}
