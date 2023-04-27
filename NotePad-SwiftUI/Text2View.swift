//
//  Text2View.swift
//  NotePad-SwiftUI
//
//  Created by ShafiulAlam-00058 on 3/24/23.
//

import SwiftUI

struct Text2View: View {
    
    @Binding var value: Int
    
    var body: some View {
        Text("\(value)")
            .navigationTitle("Page 2")
    }
}

struct Text2View_Previews: PreviewProvider {
    static var previews: some View {
        Text2View(value: .constant(-1))
    }
}
