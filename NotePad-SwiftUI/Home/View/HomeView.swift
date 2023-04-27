//
//  ContentView.swift
//  NotePad-SwiftUI
//
//  Created by ShafiulAlam-00058 on 3/23/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var taskList: [TaskData] = []
    @State var selector: Filter = .today
    @StateObject var dataManager = DataManager()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("ToDo List")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    NavigationLink(destination: AddPageView(taskList: $taskList)) {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .padding(.trailing, 30)
                    }
                }
                .frame(maxWidth: .infinity)
                .frame(height: 80)
                .background(.green)
                
                HStack {
                    Text("Filter with Date:")
                        .font(.title2)
                        .padding()
                    Spacer()
                    Picker("Filter with date", selection: $selector) {
                        ForEach(Filter.allCases, id: \.self) { option in
                            Text(option.rawValue)
                        }
                    }
                    .frame(width: 150, height: 50)
                    .font(.title2)
                    .background(Color(.systemGray5))
                    .pickerStyle(.menu)
                    .tint(.black)
                    .padding()
                    .onChange(of: selector) { newValue in
                        dataManager.FilterOutData(taskList: taskList, filter: newValue)
                        selector = newValue
                    }
                    .onAppear() {
                        dataManager.FilterOutData(taskList: taskList, filter: selector)
                    }
                }
                Divider()
                List {
                    ForEach(dataManager.filteredTaskList, id: \.self) { taskData in
                        
                        HStack {
                            Text(taskData.task)
                        }
                        .padding()
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

