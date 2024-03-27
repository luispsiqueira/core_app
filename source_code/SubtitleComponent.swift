//
//  SubtitleComponent.swift
//  core_app
//
//  Created by Luis Silva on 27/03/24.
//

import SwiftUI

struct SubtitleComponent: View {
    var body: some View {
        HStack(spacing: 32) {
            HStack(spacing: 8) {
                RoundedRectangle(cornerRadius: 24)
                    .frame(width: 16, height: 24)
                    .colorMultiply(CustomColors.calendarSubtitlePeriod.color)

                Text("Period")
                    .font(.custom("Poppins", size: 16))
                    .colorMultiply(.black).opacity(0.6)
            }

            HStack(spacing: 8) {
                RoundedRectangle(cornerRadius: 24)
                    .frame(width: 16, height: 24)
                    .colorMultiply(CustomColors.calendarSubtitleFertileDays.color)

                Text("Fertile days")
                    .font(.custom("Poppins", size: 16))
                    .colorMultiply(.black).opacity(0.6)
            }
        }
    }
}

#Preview {
    SubtitleComponent()
}
