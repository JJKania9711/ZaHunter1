//
//  ContentView.swift
//  AssingmentNotebook2
//
//  Created by James on 3/2/23.
//

import SwiftUI
struct ContentView: View {
    @ObservedObject var assignmentList = AssignmentList()
    @State private var showingAddItemView = false
    var body: some View {
        NavigationView {
            List {
                ForEach(assignmentList.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.course)
                                .font(.headline)
                            Text(item.description)
                        }
                        Spacer()
                        Text(item.dueDate, style: .date)
                    }
                }
                .onMove(perform: { indices, newOffset in
                    assignmentList.items.move(fromOffsets: indices, tozOffset:
                                                newOffset)
                    
                })
                .onDelete(perform: {  indexSet in
                    assignmentList.items.remove (atOffsets: indexSet)
                })
            }
            .sheet(isPresented: $showingAddItemView, content: {
                AddAssignmentView(assignmentList: assignmentList)
                
            })
            .navigationBarTitle("Assignment Notebook", displayMode: .inline)
            .navigationBarItems(leading: EditButton(),
                                trailing: Button(action: {
                showingAddItemView =
                true}) {
                    Image(systemName: "plus")
                })
            
            
            
            
            
            
            
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
