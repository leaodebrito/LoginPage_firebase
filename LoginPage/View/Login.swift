//
//  Login.swift
//  LoginPage
//
//  Created by Bruno Brito on 16/05/21.
//

import SwiftUI

struct Login: View {
    
    @State var email: String = ""
    @State var senha: String = ""
    
    
    @State var showSheetView = false
    
    var body: some View {
        NavigationView{
            ScrollView{
                GeometryReader{ view in
                    
                    VStack(alignment: .leading){
                        
                        Image("P.A.")
                            .resizable()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(.bottom,50)
                        
                        Text("Olá,")
                            .font(.largeTitle)
                            .bold()
                            .padding(.top,32)
                        
                        Spacer()

                        Text("Faça seu login agora.")
                            .font(.largeTitle)
                            .bold()
                            .padding(.bottom,20)
                        HStack{
                            Text("Se você é novo(a), crie sua conta")
                            NavigationLink(
                                destination: Cadastro(),
                                label: {
                                    Text("aqui")
                                })
                        }.padding(.bottom,20)
                        
                        //Campos de texto para validação do usuário
                        //E-mail e Senha
                        TextField("E-mail", text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(height: 40)
                        TextField("Senha", text: $senha)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(height: 40)
                        
                        Button(action: {
                            print("apertaram o botão")
                            
                        }, label: {
                            LoginButtonContent(textoBotao: "Login")
                                .modifier(DismissingKeyboard())
                        })
                        
                        
                        
                        
                        
                    }
                }
                .padding(.horizontal)
                
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
