//
//  Model.swift
//  sCool
//
//  Created by Cassiano Carradore Salgado on 28/04/22.
//

import Foundation

class Model {
    static let instance = Model()
    
    private init() {
        
    }
    
    var colaboradores: [Colaborador] = [
        Colaborador(nome: "Cassiano Salgado", cargo: .diretor, salário: 2000.00, matrícula: 12345),
        Colaborador(nome: "Mariana Abad", cargo: .professor, salário: 1500.00, matrícula: 23456)
    ]
    
}
