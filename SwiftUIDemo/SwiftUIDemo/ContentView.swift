//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Namrata BizBrolly on 21/04/23.
//

import SwiftUI

struct TabBarView: View {
    
    var body: some View {
        
        TabView {
            ContentView()
                .tabItem ( { VStack {
                    Image("ic_avtaar")
                    Text("Home")
                    }
                }).tag(0)
           SwiftUIView()
                .tabItem ( { VStack {
                    Image("ic_avtaar")
                    Text("Controls")
                    }
                }).tag(1)
        }.environment(\.colorScheme, .light)
    }
    
}

struct ContentView: View {
    @State private var slider: Float = 100.0
    var body: some View {
        NavigationView{
        VStack {
            ScrollView {
                VStack(spacing: 20) {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    //                .resizable()
                        .aspectRatio(contentMode: .fill)
                    //  .frame(width: 50, height: 100)
                        .clipped()
                    //  .cornerRadius(10)
                        .padding(.bottom, 0
                        )
                    // for fixed size text
                    Text("Hello World!")
                        .fixedSize(horizontal: false, vertical: true)
                    
                    // for dynamic text size
                    Text ("Dynamic Text")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    // for speacing between latters
                    Text ("Hello!!, How are you?")
                        .foregroundColor(Color.red)
                        .bold()
                        .kerning(10)
                    
                    // for text foreground & back ground color
                    Text ("Text for Color Example")
                        .foregroundColor(.white)
                        .bold()
                        .background(Color.blue)
                    HStack(spacing: 50) {
                        // for text style
                        Text("Text Style1")
                            .bold()
                            .italic()
                        Spacer()
                        Text("Text Style2")
                            .bold()
                            .italic()
                    }
                    
                    // for text line limit, line spacing & multiline text alignment
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                        .lineLimit(10)
//                        .lineLimit(nil)
                        .lineSpacing(10)
                        .multilineTextAlignment(.center)
                    
                    textFieldWithSeperator()
                    PickerView()
                    buttonWithBackground( areYouGoingToSecondView: false)
                }
            }
        }
    }
    .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
//        TabBarView()
    }
}

//MARK:- Seperator (Bottom line view)
struct seperator: View {
    
    var body: some View {
    
        VStack {
            Divider().background(Color.gray)
        }.padding()
            .frame(height: 1, alignment: .center)
    }
}

//MARK:- Textfields
struct textFieldWithSeperator: View {
    
    @State var email: String = ""
    
    var body: some View {
        
        VStack {
            HStack {
                Image("globe")
                    .padding(.leading, (UIScreen.main.bounds.width * 20) / 414)
                
                TextField("Email", text: $email)
                    .frame(height: (UIScreen.main.bounds.width * 40) / 414, alignment: .center)
                    .padding(.leading, (UIScreen.main.bounds.width * 10) / 414)
                    .padding(.trailing, (UIScreen.main.bounds.width * 10) / 414)
                    .font(.system(size: (UIScreen.main.bounds.width * 15) / 414, weight: .regular, design: .default))
                    .imageScale(.small)
                    .keyboardType(.emailAddress)
                    .autocapitalization(UITextAutocapitalizationType.none)
            }
            seperator()
            SegmentcontrolView()
        }
    }
}

//MARK:- Button with background & shaadow
struct buttonWithBackground: View {
    
    //    var btnText: String
    @State var selection: Int? = nil
    @State var bool : Bool = false
    @State var areYouGoingToSecondView: Bool // Step 2
    
    var body: some View {
        //            NavigationView{ // Step 1
        //
        //                VStack {
        // Step 3
        NavigationLink(destination: SwiftUIView(), isActive: $areYouGoingToSecondView) { EmptyView() }
        Button(action: {
            self.areYouGoingToSecondView = true // Step 4
            
        }) {
            Text("Done!")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 140, height: 50)
                .background(Color(red: 85.0/255.0, green: 84.0/255.0, blue: 166.0/255.0, opacity: 1.0))
                .clipped()
                .cornerRadius(5.0)
                .shadow(color: Color(red: 85.0/255.0, green: 84.0/255.0, blue: 166.0/255.0, opacity: 1.0), radius: 5, x: 0, y: 5)
        }
    }
}



struct SegmentcontrolView: View {
    
    @State private var selectorIndex = 0
    @State private var strOS = ["iOS", "macOS","tvOS","watchOS"]
    
    var body: some View {
        VStack {
            Picker("Numbers", selection: $selectorIndex) {
                ForEach(0 ..< strOS.count) { index in
                    Text(self.strOS[index]).tag(index)
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            Text("Selected value is: \(strOS[selectorIndex])").padding()
            
        }.padding()
    }
}

struct PickerView: View {
    
    var strengths = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
    
    @State private var selectedStrength = 0
    @State var minimumSelectedDate = Date()
    @State var maximumSelectedDate = Date()
    @State var testDate = Date()
    
    var body: some View {
        
        NavigationView {
            
            Form {
                Section {
                    Picker(selection:  $selectedStrength, label: Text("Strength")) {
                        ForEach(0 ..< strengths.count) {
                            Text(self.strengths[$0])
                            
                        }
                    }
                    
                }
                
                // for minimum date
                DatePicker("Minimum Date",
                           selection: $minimumSelectedDate,
                           in: Date()...,
                           displayedComponents: [.date])
                
                // for maximum date
                DatePicker("Maximum Date",
                           selection: $maximumSelectedDate,
                           in: ...Date(),
                           displayedComponents: [.date])
            } .scrollContentBackground(.hidden)
                .foregroundColor(Color.blue)
                .background(Color.yellow)
                .navigationBarTitle("Select Number")
        }
        
    }
    
}


