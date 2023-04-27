//
//  TestView.swift
//  NotePad-SwiftUI
//
//  Created by ShafiulAlam-00058 on 3/24/23.
//

import SwiftUI

struct TestView: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Button {
                    counter += 1
                } label: {
                    Text("Add by 1")
                }
                Text("\(counter)")
                    .font(.largeTitle)
                NavigationLink {
                    Text2View(value: $counter)
                } label: {
                    Text("goto next page")
                }

            }
            .navigationTitle("Page 1")
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
