//
//  Forca.swift
//  Forca
//
//  Created by IFPB on 05/06/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import Foundation

class Forca {
    var palavra: Array<Character>
    var adivinhacao: Array<Character>
    var tentativas: Int
    var isCorreto: Bool
    
    init(palavra: String) {
        self.palavra = Array(palavra)
        self.adivinhacao = Array(repeating: "_", count: self.palavra.count)
        self.tentativas = 10
        self.isCorreto = false
    }
    
    func jogar(letra: Character) {
        self.isCorreto = false
        
        if (self.palavra.contains(letra) && self.tentativas > 0) {
            for i in 0..<self.palavra.count {
                if (self.palavra[i] == letra) {
                    self.adivinhacao[i] = letra
                }
            }
            
            self.isCorreto = true
            
            if (self.palavra == self.adivinhacao) {
                print("Você venceu")
            }
        }
        if (self.tentativas == 0) {
            perdeu()
        }
        else {
            errou()
        }
    }
    
    func perdeu() {
        self.adivinhacao = self.palavra
        print("Você perdeu")
        
    }
    
    func errou() {
        self.tentativas -= 1
    }
}
