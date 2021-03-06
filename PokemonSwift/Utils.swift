//
//  Utils.swift
//  PokemonSwift
//
//  Created by Solid Jaum on 04/04/17.
//  Copyright © 2017 Solid Jaum. All rights reserved.
//

import Cocoa

class Utils: NSObject {
    
    static func lerEntradaDoUsuario() -> String{
        return lerEntradaDoUsuarioComMensagem(mensagem: nil)
    }

    static func lerEntradaDoUsuarioComMensagem(mensagem: String?) -> String {

        if let message = mensagem {
            print(message)
        }

        let response = readLine()
        return response!
    }
    
    static func lerEntradaDoUsuarioComInt() -> Int{
        let input = lerEntradaDoUsuario()

        return Int(input)!
    }
    
    static func chooseFirstPokemon(pokemonsIniciais: [Pokemon]) -> Pokemon {
        var aux: Int
        var index: Int = 0

        print("\nIr nessa jornada sozinho é muito perigoso. \nPor favor, leve um pokemon com voce")

        for pokemon in pokemonsIniciais {
            index += 1
            print("\(index) - \(pokemon.name)")
        }

        print("\nEscolha o seu pokemon: ")
        //validaçao de escolha do pokemon.
        repeat {
            aux = self.lerEntradaDoUsuarioComInt()
        } while(aux != 1 && aux != 2 && aux != 3)

        return pokemonsIniciais[aux - 1]
    }
    
    static func cadastrarJogador(pokemonsIniciais: [Pokemon]) -> Jogador{
        var n: Int
        var sex: String

        print("Olá jovem treinador! Meu nome é Prof. Jabosa. Neste mundo existem criaturas chamadas pokemons e seu dever é capturá-las. Mas primeiro, me diga. Voce é um garoto ou uma garota?\n1 - Garoto\n2 - Garota\n")

        repeat {
            n = lerEntradaDoUsuarioComInt()
        } while(n != 1 && n != 2)

        if n == 1 {
            sex = "Garoto"
        }
        else {
            sex = "Garota"
        }

        let nomePlayer = lerEntradaDoUsuarioComMensagem(mensagem: "\nAgora me diga, qual o seu nome?\n")
        
        let pokemon = chooseFirstPokemon(pokemonsIniciais: pokemonsIniciais)
        
        player = Jogador(Int(arc4random_uniform(100)), nomePlayer, sex, pokemon)

        return player
    }
    
    static func showMenu(){
            print("\nEscolha uma Opçao: \n1 - Mostrar minhas informações \n2 - Mostrar ginásios \n3 - Desafiar lider de ginásio \n4 - Procurar Pokemon \n0 - Sair do Jogo\n")
    }
}

