//
//  PickerPage.swift
//  demo
//
//  Created by iOSer on 2019/10/28.
//  Copyright © 2019 iOSer. All rights reserved.
//


import SwiftUI

struct PickerPage : View {
    @State var leftIndex = 0
     @State var rightIndex = 0
     
     let leftSource = (0..<10).map { $0%2 == 0 ? "🐱\($0)":"🐯\($0)" }
     let rightSource = (11...36).map { String($0 - 1, radix: $0).uppercased() }
    var body: some View {
        HStack {
                VStack {
                    Text("Left Value:")
                    Text("\(self.leftSource[self.leftIndex])")
                        .foregroundColor(.orange)
                        .bold()
                        .font(.largeTitle)
                    Picker(selection: $leftIndex, label: Text("Left Picker")) {
                        ForEach(0..<leftSource.count) {
                            Text(self.leftSource[$0]).tag($0)
                        }
                    }.frame(width: UIScreen.main.bounds.width/2)
                }
                VStack {
                    Text("Right Value:")
                    Text("\(self.rightSource[self.rightIndex])")
                        .bold()
                        .font(.largeTitle)
                    Picker(selection: $rightIndex, label: Text("Right Picker")) {
                        ForEach(0..<rightSource.count) {
                            Text(self.rightSource[$0]).tag($0)
                        }
                    }.frame(width: UIScreen.main.bounds.width/2)
                }
            }
            .navigationBarTitle(Text("Picker"))
        }
}

#if DEBUG
struct PickerPage_Previews : PreviewProvider {
    static var previews: some View {
        PickerPage()
    }
}
#endif

