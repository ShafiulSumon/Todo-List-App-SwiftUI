//
//  AddPageView.swift
//  NotePad-SwiftUI
//
//  Created by ShafiulAlam-00058 on 3/24/23.
//

import SwiftUI

struct AddPageView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var inputData: String = ""
    @Binding var taskList: [TaskData]
    @State var date: Date = Date()
    
    var body: some View {
        VStack {
            TextField("Add your task here", text: $inputData)
                .frame(maxWidth: .infinity, maxHeight: 80)
                .border(.gray)
                .padding()
                .font(.title)
            
            DatePicker("Select date", selection: $date, displayedComponents: [.date])
                .padding()
            
            
            Button {
                taskList.append(TaskData(task: inputData, date: date))
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Save")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(7)
                    .padding()
            }
        }
        .navigationTitle("Add new Task")
    }
}

struct AddPageView_Previews: PreviewProvider {
    static var previews: some View {
        AddPageView(taskList: .constant([TaskData(task: "", date: Date())]))
    }
}
