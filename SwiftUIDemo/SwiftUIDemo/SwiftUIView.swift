//
//  SwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Namrata BizBrolly on 04/05/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        ListView()
        
    }
}



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

//struct ListData {
//    var title: String = ""
//}

//MARK:- List Data
//struct ListView: View {
//
//    var data = [
//        ListData(title: "Segment Control"),
//        ListData(title: "Combine Framework Demo"),
////         ListData(title: "Picker"),
//    ]
//
//    var body: some View {
//
//        VStack {
//
//            List {
//
//                ForEach(data, id:\.title) { list in
//                    NavigationLink(destination: RedirectionFromList(data: list)) {
//                        RowData(list: list)
//                    }
//                }
//            }
//            .padding(.top)
//        .listStyle(GroupedListStyle())
//
//        }
//    }
//
//}

//MARK:- List Row Data
//struct RowData: View {
//
//    var list: ListData
//
//    var body: some View {
//
//        VStack(alignment: .leading) {
//
//            HStack(alignment: .top) {
//
//                VStack(alignment: .leading) {
//
//                    Text(list.title)
//                        .font(.system(Font.TextStyle.body, design: Font.Design.monospaced))
//                        .foregroundColor(Color.blue)
//
//                    VStack {
//                        DetailsView(listdata: list)
//                    }
//                }
//            }
//        }
//    }
//}

//AMRK:- Detail View
//struct DetailsView: View {
//    var listdata: ListData
//    var uiControls: [Any] = [LoginView(), ForgotPasswordView()]
//
//    var body: some View {
//        VStack {
//            ForEach(0..<uiControls.count) { list in
//                buildView(types: self.uiControls, index: list)
//            }
//        }
//    }
//
//        func buildView(types: [Any], index: Int) -> AnyView {
//            switch types[index].self {
//            case is LoginView.Type: return AnyView(LoginView())
//            case is ForgotPasswordView.Type: return AnyView( ForgotPasswordView() )
//            default: return AnyView(EmptyView())
//            }
//        }
//    }


//struct RedirectionFromList: View {
//
//    var data: ListData
//
//    var body: some View {
//        switch data.title {
//        case "Segment Control":
//            return AnyView(SegmentcontrolView())
//        case "Combine Framework Demo":
//            return AnyView(LoginView(name: <#String#>))
//        case "Picker":
//            return AnyView(PickerView())
//        default:
//            return AnyView(SegmentcontrolView())
//        }
//    }
//}
