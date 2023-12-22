//
//  ContentView.swift
//  Daily_Journal_App
//
//  Created by salome on 20.12.23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var title: String = ""
    @State private var news: String = ""
    @State private var date = Date()
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        NavigationView {
            VStack {
            Form {
                TextField("Enter Title", text: $title)
                TextField("Enter News", text: $news)
                DatePicker("Enter Date", selection: $date, displayedComponents: [.date])
                Button(action: saveButtonPressed)
                {
                    Text("Add News")
                }
            }
            .padding(10)
            .background(Color(.systemGray6))
            .cornerRadius(5)
            .disableAutocorrection(true)
            
            List {
                ForEach(listViewModel.items) { item in
                    VStack(alignment: .leading) {
                        Text("Title: \(item.title)")
                        Text("Title: \(item.news)")
                        Text("date: \(item.date)")
                    }
                }
                .onDelete(perform: listViewModel.deleteItem)
                .onMove(perform: listViewModel.moveItem)
            }
            .id(UUID())
            .listStyle(PlainListStyle())
        }
        }
    }
    
    func saveButtonPressed() {
        listViewModel.addItem(title: title, news: news, date: date)
        presentationMode.wrappedValue.dismiss()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
                .environmentObject(ListViewModel())
        }
    }
}
