//
//  Utils.swift
//  PokemonSwift
//
//  Created by Solid Jaum on 04/04/17.
//  Copyright © 2017 Solid Jaum. All rights reserved.
//

import Cocoa

class Utils: NSObject {
    
    func lerEntradaDoUsuario() -> String{
        return lerEntradaDoUsuarioComMensagem(mensagem: nil)
    }
    
    func lerEntradaDoUsuarioComMensagem(mensagem: String?) -> String{
        
        if !(mensagem?.isEmpty){
            print(mensagem)
        }
        let response = readLine()
        return response!
    }
    
    func lerEntradaDoUsuarioComInt() -> Int{
        var output: CInt = 0
        return getInput(&output)
    }
    
    func chooseFirstPokemon(pokemonsIniciais: NSArray) -> Pokemon{
        var aux: Int
        var index: Int = 0
        print("\nIr nessa jornada sozinho é muito perigoso. \nPor favor, leve um pokemon com voce\n")
        for pokemon in pokemonsIniciais{
            index += 1
            print("%d - %s\n", index, pokemon.nome)
        }
        
        print("\nEscolha o seu pokemon: ")
        //validaçao de escolha do pokemon.
        repeat{
            aux = lerEntradaDoUsuarioComInt()
        }while(aux != 1 && aux != 2 && aux != 3)
    
        return pokemonsIniciais.object(at: aux-1) as! Pokemon
    }
    
    func cadastrarJogador(pokemonsIniciais: NSArray) -> Jogador{
        var n: Int
        var sex: String
        print("Olá jovem treinador! Meu nome é Prof. Jabosa. Neste mundo existem criaturas chamadas pokemons e seu dever é capturá-las. Mas primeiro, me diga. Voce é um garoto ou uma garota?\n1 - Garoto\n2 - Garota\n")
        repeat{
            n = lerEntradaDoUsuarioComInt()
        }while(n != 1 && n != 2)
        
        if n == 1{
            sex = "Garoto"
        }
        else{
            sex = "Garota"
        }
        var nomePlayer: String = lerEntradaDoUsuarioComMensagem(mensagem: "\nAgora me diga, qual o seu nome?\n")
        
        var pokemon: Pokemon = chooseFirstPokemon(pokemonsIniciais: pokemonsIniciais)
        
        player = Jogador(arc4random_uniform(100), nomePlayer, sex, pokemon)
        
        return player
    }
    
    func showMenu(){
            print("\nEscolha uma Opçao: \n1 - Mostrar minhas informações \n2 - Mostrar ginásios \n3 - Desafiar lider de ginásio \n4 - Procurar Pokemon \n0 - Sair do Jogo\n")
    }
}

