//
//  ContentView.swift
//  demo
//
//  Created by iOSer on 2019/10/16.
//  Copyright © 2019 iOSer. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("基础控件")){
                    NavigationLink(destination: TextPage()){
                        PageRow(title: "Text", subtitle: "展示一行或多行只读文本")
                    }
                    NavigationLink(destination: TextFieldPage()){
                        PageRow(title: "TextField", subtitle: "显示可编辑文本界面的输入控件")
                    }
                    NavigationLink(destination: ImagePage()){
                        PageRow(title: "Image", subtitle: "展示本地图片")
                    }
                    NavigationLink(destination: WebImagePage()) {
                        PageRow(title: "WebImage",subtitle: "下载网络图片并展示")
                                       
                    }
                    NavigationLink(destination: ButtonPage()){
                        PageRow(title: "Button", subtitle: "按钮")
                    }
                    NavigationLink(destination: TableViewPage()){
                        PageRow(title: "List", subtitle: "编辑列表 编辑按钮的简单使用")
                    }
                    NavigationLink(destination: TogglePage()){
                        PageRow(title: "Toggle", subtitle: "开关状态切换")
                    }
                    NavigationLink(destination: SliderPage()){
                        PageRow(title: "Slider", subtitle: "滑块 用以设置指定范围内的值")
                    }
                    NavigationLink(destination: StepperPage()){
                        PageRow(title: "StepperPage", subtitle: "用以增加或减少数值")
                    }
                }
                Section(header: Text("选择器")){
                    NavigationLink(destination: PickerPage()){
                        PageRow(title: "PickerPage", subtitle: "可自定义数据源的 Picker 选择器")
                    }
                    NavigationLink(destination: DatePickerPage()) {
                        PageRow(title: "DatePicker",subtitle: "日期展示与选择")
                    }
                }
                Section(header: Text("Alert 弹框视图")) {
                    NavigationLink(destination: AlertPage()) {
                        PageRow(title: "Alert",subtitle: "展示一个弹框提醒")
                    }
                    NavigationLink(destination: ActionSheetPage()) {
                        PageRow(title: "ActionSheet",subtitle: "弹出一个选择框")
                    }
                  
                    NavigationLink(destination: PopoverPage()) {
                        PageRow(title: "Popover",subtitle: "Pop 弹出一个视图")
                    }
                }
                Section(header: Text("与UIKit混用")){
                    NavigationLink(destination: WebPage()){
                        PageRow(title: "WebView", subtitle: "SwiftUI展示WebView")
                    }
                    NavigationLink(destination: ViewControllerPage<ControllerPage>()) {
                        PageRow(title: "UIViewControllerView",subtitle: "SwiftUI展示ViewController")
                    }
                }
                Section(header: Text("Demo")){
                    NavigationLink(destination: Calculator().environmentObject(CalculatorModel())){
                        PageRow(title: "Calculator", subtitle: "计算器demo")
                    }
                }
                
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Example"),
                                displayMode: .large)
                                .navigationBarItems(trailing: Button(action: {
                           print("Tap")
                       },
                                                                     label: {
                           Text("Right").foregroundColor(.orange)
                       }))
        }
    }
    
    
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().foregroundColor(Color.black)
    }
}
