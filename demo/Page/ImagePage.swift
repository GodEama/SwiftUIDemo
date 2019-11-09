//
//  ImagePage.swift
//  demo
//
//  Created by iOSer on 2019/10/25.
//  Copyright © 2019 iOSer. All rights reserved.
//


import SwiftUI

struct ImagePage : View {
    
    let range = 1..<6
    
    var body: some View {
        VStack {
            ForEach(range) { index in
                Image("apple").resizable().frame(width: CGFloat(30 * index), height: CGFloat(30 * index), alignment: .center).onTapGesture {
                    print("Tap \(index)")
                }
                
            }
        }.navigationBarTitle("Image")
        
       
    }
   
}

#if DEBUG
struct ImagePage_Previews : PreviewProvider {
    static var previews: some View {
        ImagePage()
    }
}
#endif

