//
//  StepperPage.swift
//  demo
//
//  Created by iOSer on 2019/10/29.
//  Copyright © 2019 iOSer. All rights reserved.
//

import SwiftUI
import Combine

struct StepperPage : View {
    
    @State var value = 0
    
    var body: some View {
        HStack {
            Stepper(value: $value, step: 2, onEditingChanged: { c in
                print(c)
            }) {
                Text("Stepper Value: \(self.value)")
            }.padding(50).foregroundColor(.orange)
        }.navigationBarTitle(Text("Stepper"))
    }
}

#if DEBUG
struct StepperPage_Previews : PreviewProvider {
    static var previews: some View {
        StepperPage()
    }
}
#endif

