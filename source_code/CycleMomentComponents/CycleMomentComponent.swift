//
//  CycleMomentComponent.swift
//  core_app
//
//  Created by Luis Silva on 04/04/24.
//

import Assets
import BackendLib
import SwiftUI

enum Phase: String {
    case period = "Period"
    case ovulatory = "Ovulatory phase"
    case luteal = "Luteal phase"
    case follicular = "Follicular phase"
}

struct CycleMomentComponent: View {
    @State var cycleService: CycleService
    var phase: Phase

    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .frame(width: 600, height: 552.33)
                .cornerRadius(10)

            VStack(spacing: 38) {
                HStack {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Cycle Moment")
                            .font(.system(size: 15))
                            .colorMultiply(Colors.purple_700)

                        Text(phase.rawValue)
                            .font(.system(size: 22))
                            .colorMultiply(Colors.purple_700)
                    }.padding(.top, 16)

                    Spacer()
                }.padding(.leading)

                BallComponent(cycleService: cycleService, phase: phase)
            }
        }
    }
}

// #Preview {
//    CycleMomentComponent(phase: .period)
// }
