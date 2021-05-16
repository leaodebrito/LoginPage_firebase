//
//  ModeloDados.swift
//  LoginPage
//
//  Created by Bruno Brito on 16/05/21.
//

import Foundation

struct Usuario{
    var nome: String = ""
    var email: String = ""
    var profissao: String = ""
    var id: String = UUID().uuidString
}
