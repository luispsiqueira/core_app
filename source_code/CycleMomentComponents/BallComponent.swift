//
//  BallComponent.swift
//  core_app
//
//  Created by Luis Silva on 04/04/24.
//

import Assets
import BackendLib
import SwiftUI

struct BallComponent: View {
    @State var cycleService: CycleService
    var phase: Phase

    var body: some View {
        let dayOfTheCicle = calculateDayOfTheCycle(cycleService)

        ZStack {
            Circle()
                .frame(width: 272, height: 272)
                .colorMultiply(Colors.red_100)

            Circle()
                .frame(width: 260, height: 260)
                .colorMultiply(Colors.red_50)

            Circle()
                .frame(width: 167, height: 167)
                .colorMultiply(Colors.red_200)

            VStack {
                if dayOfTheCicle < 10 {
                    Text("Day 0\(dayOfTheCicle)")
                        .font(.system(size: 22))
                        .bold()
                        .colorMultiply(.white)
                } else {
                    Text("Day \(dayOfTheCicle)")
                        .font(.system(size: 22))
                        .bold()
                        .colorMultiply(.white)
                }

                Text("of your \(CycleCalculation().calculateDurationOfTheCycle(cycleService.cycles.sorted(by: { $0.startDate < $1.startDate })))-day cycle")
            }
        }
    }

    func calculateDayOfTheCycle(_: CycleService) -> Int {
        // continuar aqui

        return 0
    }
}

// #Preview {
//    BallComponent(cycleService: cycle, dayOfTheCicle: 1, phase: .period)
// }
