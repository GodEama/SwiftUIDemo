//
//  DatePickerPage.swift
//  demo
//
//  Created by iOSer on 2019/10/29.
//  Copyright © 2019 iOSer. All rights reserved.
//


import SwiftUI
import Combine
struct DatePickerPage : View {
    
    @ObservedObject var server = DateServer()
    
    var speaceDate: Range<Date>?
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }
    
    
    init() {
        let soon = Calendar.current.date(byAdding: .year,
                                         value: -1,
                                         to: server.date) ?? Date()
        
        let later = Calendar.current.date(byAdding: .year,
                                          value: 1,
                                          to: server.date) ?? Date()
        speaceDate = soon..<later
    }
    
    var body: some View {
        VStack {
            VStack(spacing: 10) {
                Text(dateFormatter.string(from: server.date)).bold()
                DatePicker(selection: $server.date, in: server.spaceDate, displayedComponents: .date, label: {
                    Text("")
                })
            }
            .padding(.top)
            .navigationBarTitle(Text("DatePicker"))
            
        }

        
    }
}


class DateServer: ObservableObject {
    
    @Published var date: Date = Date()
    
    var spaceDate: ClosedRange<Date>  {
        let soon = Calendar.current.date(byAdding: .year,
                                         value: -1,
                                         to: date) ?? Date()
        
        let later = Calendar.current.date(byAdding: .year,
                                          value: 1,
                                          to: date) ?? Date()
        let speaceDate = soon...later
        return speaceDate
    }
}



#if DEBUG
struct DatePickerPage_Previews : PreviewProvider {
    static var previews: some View {
        DatePickerPage()
    }
}
#endif
