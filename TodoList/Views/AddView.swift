//
//  AddView.swift
//  TodoList
//
//  Created by Arjun Alukkal on 2025-02-24.
//

import SwiftUI

struct AddView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    @Environment(\.presentationMode) var presentationMode
    
    @State var textFieldText: String = ""
    @State var someColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    @State var alertString = ""
    @State var showAlert = false
    
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(someColor))
                .cornerRadius(10)
                Button(
                    action: saveButtonPressed, label: {
                        Text("Save".uppercased())
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                    }
                )
            }
            .padding()
        }
        .navigationTitle("Add an item 🖊️")
        .alert(isPresented: $showAlert, content: getAlert)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Text("Back")
        })
        
    }
    
    func saveButtonPressed() {
        if checkTextValid() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func checkTextValid() -> Bool{
        if textFieldText.count < 3 {
            alertString = "Your new todo list item must be 3 character!!! 😨😨😨"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertString))
    }
}

#Preview {
    NavigationView {
        AddView()
    }
    .environmentObject(ListViewModel())
    
}
