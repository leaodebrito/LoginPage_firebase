//
//  SplashView.swift
//  LoginPage
//
//  Created by Bruno Brito on 16/05/21.
//

import SwiftUI

struct SplashView: View {
    
    @State var aplicativoAtivo: Bool = false
    
    var body: some View {
        VStack{
            if self.aplicativoAtivo{
                ContentView()
            }else{
                VStack{
                    Image(systemName: "figure.wave")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("Olá!")
                        .font(.title)
                        .bold()
                        .padding()
                }
            }
        }
        .onAppear {
            // 6.
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                // 7.
                withAnimation {
                    self.aplicativoAtivo = true
                }
            }
        }
        
    }
}


struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
