//
//  TogglePage.swift
//  demo
//
//  Created by iOSer on 2019/10/29.
//  Copyright © 2019 iOSer. All rights reserved.
//

import SwiftUI
import Combine
struct TogglePage : View {
    
    @State var isOn = false
    
    var body: some View {
        HStack {
            Toggle(isOn: $isOn) {
                Text("State: \(self.isOn == true ? "开":"关")")
            }.padding(20)
            Spacer()
        }.navigationBarTitle(Text("Toggle"))
    }
}

#if DEBUG
struct TogglePage_Previews : PreviewProvider {
    static var previews: some View {
        TogglePage()
    }
}
#endif

    
