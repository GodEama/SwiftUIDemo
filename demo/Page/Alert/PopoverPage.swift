//
//  PopoverPage.swift
//  demo
//
//  Created by iOSer on 2019/10/29.
//  Copyright © 2019 iOSer. All rights reserved.
//

import SwiftUI

struct PopoverPage : View {
    
    @State var showPop = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showPop = true
                print(self.showPop)
            }) {
                Text("Popover").bold().font(.system(.largeTitle, design: .monospaced))
            }
            .popover(isPresented: $showPop, content: {
                ImagePage()
            })
        }
    }
}

#if DEBUG
struct PopoverPage_Previews : PreviewProvider {
    static var previews: some View {
        PopoverPage()
    }
}
#endif
