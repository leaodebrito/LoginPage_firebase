//
//  Cadastro.swift
//  LoginPage
//
//  Created by Bruno Brito on 16/05/21.
//

import SwiftUI

struct Cadastro: View {
    //MARK: - Dados de entrada
    @State var userName: String = ""
    @State var userEmail: String = ""
    @State var userProfissao: String = ""
    @State var userPassword: String = ""
    
    @State var showUserSheetView = false
    
    @State var authenticationFailed: Bool = false
    @State var authenticationSucceed: Bool = false
    
    @State var usuarioLogado: Bool = true
    
    //MARK: - Vista
    var body: some View {
        NavigationView{
        ScrollView{
            VStack{
                //Texto de introdução da tela
                Text("Seja Bem-vindo(a) ao")
                    .font(.largeTitle)
                    .bold()
                
                Image("P.A.")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                    .cornerRadius(200)
                Text("Vamos fazer o seu cadastro.")
                Text("Por favor, preencha os campos abaixo:")
                    .padding(.bottom)
                    
                    
                
                //Campos de texto para inserção das informações para cadastro do usuário
                UserNameTextField(userName: $userName, placeHolder: "Nome")
                UserNameTextField(userName: $userEmail, placeHolder: "E-mail")
                UserNameTextField(userName: $userProfissao, placeHolder: "Profissão")
                UserPasswordField(userPassword: $userPassword)
                    .padding(.bottom)
                
                Button(action:{
                    print("apertaram o botão")
                    
                    //Verificação se o campos estão com informação ou não para criação do usuário
                    guard self.userName != "" else {return}
                    guard self.userEmail != "" else {return}
                    guard self.userPassword != "" else {return}
                    guard self.userProfissao != "" else {return}
                    
                    
                }) {
                    LoginButtonContent(textoBotao: "Cadastrar")
                }
                .padding(.horizontal,32)
                
            }
        }
        .navigationBarHidden(true)
        }
        
    }
}

struct Cadastro_Previews: PreviewProvider {
    static var previews: some View {
        Cadastro()
    }
}
