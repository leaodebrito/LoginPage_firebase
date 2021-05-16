//
//  CamposDeEntrada.swift
//  LoginPage
//
//  Created by Bruno Brito on 16/05/21.
//

import Foundation
import SwiftUI

struct Campos_de_Entrada: View {
    
    @State var texto: String = ""
    
    var body: some View {
        VStack{
            EntradaTextField(text: $texto, texto: "Texto" )
            EntradaTextFieldText(text: $texto, texto: "Texto")
            EntradaTextField2(text: $texto, texto: "texto")
        }
        
    }
}

struct Campos_de_Entrada_Previews: PreviewProvider {
    static var previews: some View {
        Campos_de_Entrada()
    }
}

//Campo de texto para entrada de dados numéricos
struct EntradaTextField: View {
    
    @Binding var text: String
    @State var texto: String
    
    //Identificar estado do tema - DarkMode ou LightMode
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack{
        TextField(texto, text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(height: 40)
            .keyboardType(.decimalPad)
            .cornerRadius(10)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 32)
//            .overlay(RoundedRectangle(cornerRadius: 10)
//                        .stroke(Color.white, lineWidth: 2).padding(.horizontal,32))
        }
            
            
    }
}

//Campo de texto para entrada de dados numéricos
struct EntradaTextField2: View {
    
    @Binding var text: String
    @State var texto: String
    
    let alturaTextField: CGFloat = 35
    
    var body: some View {
            
            TextField(texto, text: $text)
                .frame(height: 35)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .cornerRadius(10)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.black)
//                .overlay(RoundedRectangle(cornerRadius: 10)
//                            .stroke(Color.white, lineWidth: 2))
        
    }
}

//Campo de texto para entrada de dados textuais
struct EntradaTextFieldText: View {
    
    @Binding var text: String
    @State var texto: String
    
    //Identificar estado do tema - DarkMode ou LightMode
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        TextField(texto, text: $text)
            .frame(height: 35)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .cornerRadius(10)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 32)
//            .overlay(RoundedRectangle(cornerRadius: 10)
//                                                .stroke(Color.white, lineWidth: 2).padding(.horizontal,32))
                                    
    }
}

//Campo de texto para entrada de dados textuais 2
struct UserNameTextField: View {
    
    @Binding var userName: String
    @State var placeHolder: String
    
    var body: some View {
        TextField(placeHolder, text: $userName)
            .frame(height: 55)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .cornerRadius(10)
            .padding(.horizontal, 32)
//            .overlay(RoundedRectangle(cornerRadius: 10)
//                        .stroke(Color.green, lineWidth: 2))
    }
}

//Campo de texto para senhas
struct UserPasswordField: View {
    
    @Binding var userPassword: String
    
    var body: some View {
        SecureField("Senha", text: $userPassword)
            .frame(height: 55)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .cornerRadius(10)
            .padding(.horizontal, 32)
//            .overlay(RoundedRectangle(cornerRadius: 10)
//                        .stroke(Color.green, lineWidth: 2))
            
    }
}





//Estrutura do botão de criação do usuário
struct LoginButtonContent: View{
    
    @State var textoBotao: String
    
    var body: some View{
        Text(textoBotao)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity, minHeight: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}
