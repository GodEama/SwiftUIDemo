//
//  GeometryReaderPage.swift
//  demo
//
//  Created by iOSer on 2020/6/5.
//  Copyright © 2020 iOSer. All rights reserved.
//

import SwiftUI

struct GeometryReaderPage: View {
    var body: some View {
        VStack{
            Spacer()
            ScrollView(.horizontal, showsIndicators: false) {
                Thumbnail()
            }
            Spacer()
        }
    }
}

struct GeometryReaderPage_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderPage()
    }
}

struct Thumbnail : View {
    @State var showPop = false
    @State var str = "1"
    var body : some View {
        VStack {
            HStack(spacing: 50) {
                ForEach(1..<8) { item in
                    GeometryReader { geometry in
                        Image("\(item)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                            .shadow(color: Color.gray, radius: 10, x: 0, y: 0)
                            .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX - 20) / 40), axis: (x: 20, y: 20, z: 20))
                            .onTapGesture {
                                self.showPop = true
                                self.str = "\(item)"
                        }
                        .sheet(isPresented: self.$showPop, content:{ ImgDetailPage(imgStr: self.str)
                        })
                    }
                    .frame(width: 352, height: 178)
                    .padding(20)
                }
            }
        }
    }
}

struct ImgDetailPage : View {
    var imgStr : String
    
    var body : some View {
        VStack{
            Image(imgStr)
            .resizable()
            .aspectRatio(contentMode: .fit)
        }
    }
    
}

