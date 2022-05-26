//
//  Colaborador.swift
//  sCool
//
//  Created by Cassiano Carradore Salgado on 28/04/22.
//

import Foundation

enum Cargo{
    case assistente, professor, diretor, coordenador, monitor
    
}

struct Colaborador{
    let nome: String
    let cargo: Cargo
    let salário: Float
    let matrícula: Int
    
    
}
