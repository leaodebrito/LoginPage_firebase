//
//  ContentView.swift
//  LoginPage
//
//  Created by Bruno Brito on 16/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var mostraVistaSheet: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Seja Bem-vindo(a)!")
            }
            .navigationTitle("Main")
            .navigationBarItems(trailing: Button(action: {
                mostraVistaSheet = true
            }, label: {
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }))
            .sheet(isPresented: $mostraVistaSheet, content: {
                Login()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
