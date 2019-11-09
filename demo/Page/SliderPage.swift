//
//  SliderPage.swift
//  demo
//
//  Created by iOSer on 2019/10/29.
//  Copyright © 2019 iOSer. All rights reserved.
//

import SwiftUI
import Combine

struct SliderPage : View {
    
    @State var rating = 0.5

    var body: some View {
        VStack {
            Text("Slider Value: \(self.rating)")
            Slider(value: $rating)
                .padding(30)
            
        }.navigationBarTitle(Text("Slider"))
    }
}



#if DEBUG
struct SliderPage_Previews : PreviewProvider {
    static var previews: some View {
        SliderPage()
    }
}
#endif
