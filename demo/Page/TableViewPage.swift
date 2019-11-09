//
//  TableViewPage.swift
//  demo
//
//  Created by iOSer on 2019/10/28.
//  Copyright © 2019 iOSer. All rights reserved.
//


import SwiftUI
import Combine


struct TableViewPage : View {
    
      @ObservedObject private var source = dataSource()
      
      var body: some View {
          List {
              
              ForEach(source.items, id: \.self) { idx in
                  PageRow(title: "\(idx)")
                  }
                  .onDelete(perform: deletePlace)
                  .onMove(perform: movePlace)
              }
              .navigationBarTitle(Text("Edit Row"), displayMode: .large)
              .navigationBarItems(trailing: EditButton())
      }
      
      func deletePlace(at offset: IndexSet) {
          if let last = offset.last {
              source.items.remove(at: last)
              print(source.items.count)
          }
      }
      
      func movePlace(from source: IndexSet, to destination: Int) {
          self.source.items.move(fromOffsets: source, toOffset: destination)
          print(source.first ?? 0,source.last ?? 0,destination)
      }
}

class dataSource: ObservableObject {
    
    @Published var didChange = PassthroughSubject<Void, Never>()

    @Published var items: [Int] {
        didSet {
            didChange.send(())
        }
    }
    
    init() {
        self.items = (0..<10).map { $0 }
    }
}


#if DEBUG
struct TableViewPage_Previews : PreviewProvider {
    static var previews: some View {
        TableViewPage()
    }
}
#endif

