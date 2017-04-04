//
//  PokeMundo.swift
//  PokemonSwift
//
//  Created by Solid Jaum on 04/04/17.
//  Copyright © 2017 Solid Jaum. All rights reserved.
//

import Cocoa

class PokeMundo: NSObject {
    var jogadores: Array<Jogador>?
    var ginasios: Array<Gym>?
    var pokemons: Array<Pokemon>?
    
    func iniciarMundo(){
        // Pokemons existentes
        let bulbasaur = Pokemon("Bulbasaur", ofType: "GRAMA")
        let charmander = Pokemon("Charmander", ofType: "FOGO")
        let squirtle = Pokemon("Squirtle", ofType: "AGUA")
        let poliwag = Pokemon("Poliwag", ofType: "AGUA")
        let horsea = Pokemon("Horsea", ofType: "AGUA")
        let staryu = Pokemon("Staryu", ofType: "AGUA")
        let growlithe = Pokemon("Growlithe", ofType: "FOGO")
        let ponyta = Pokemon("Ponyta", ofType: "FOGO")
        let magmar = Pokemon("Magmar", ofType: "FOGO")
        let chikorita = Pokemon("Chikorita", ofType: "GRAMA")
        let paras = Pokemon("Paras", ofType: "GRAMA")
        let exeggcute = Pokemon("Exeggcute", ofType: "GRAMA")
        
        self.pokemons?.append(contentsOf: [bulbasaur, charmander, squirtle, poliwag, horsea, staryu, growlithe, ponyta, magmar, chikorita, paras, exeggcute])
        
        // Lideres
        let pokemonsBrock = NSArray(array: [bulbasaur, paras, exeggcute])
        let brock = Jogador(101, "Brock", "garoto", pokemonsBrock as! Array<Pokemon>)
        
        let pokemonsMisty = NSArray(array: [growlithe, magmar, chikorita])
        let misty = Jogador(102, "Misty", "garota", pokemonsMisty as! Array<Pokemon>)
        
        let pokemonsLtSurge = NSArray(array: [bulbasaur, paras, exeggcute])
        let ltSurge = Jogador(103, "LtSurge", "garoto", pokemonsLtSurge as! Array<Pokemon>)
        
        let pokemonsErika = NSArray(array: [ponyta, horsea, charmander])
        let erika = Jogador(104, "Erika", "garota", pokemonsErika as! Array<Pokemon>)
        
        // Ginasios
        let pewter = Gym(gymOfName: "Pewter", ledBy: brock)
        let cerulean = Gym(gymOfName: "Cerulean", ledBy: misty)
        let vermilion = Gym(gymOfName: "Vermilion", ledBy: ltSurge)
        let celadon = Gym(gymOfName: "Celadon", ledBy: erika)

        self.ginasios?.append(contentsOf: [pewter, cerulean, vermilion, celadon])
        
        
    }
    
    func showGinasios(){
        print("Nome do Ginasio\t    Lider do Ginásio\n")
        print("---------------------------------------\n")
        for ginasio in self.ginasios!{
            print("%-17s\t%-20s\n", ginasio.name, ginasio.leader.nome)
        }
    }
    
    func desafiarGinasioWithDesafiante(desafiante: Jogador){
        if desafiante.pokemons.count < 3{
            print("\nVocê precisa ter ao menos 3 pokemons para realizar um desafio.\n")
            return
        }
        print("\nEscolha o ginásio que deseja desafiar:\n")
        self.showGinasios()
        
        var option: Int
        repeat{
            option = Utils.lerEntradaDoUsuarioComInt() - 1
        } while (option < 0 && option > 3)
        
        self.ginasios?[option].challengedBy(player: desafiante)
    }
    
//    -(void)desafiarGinasioWithDesafiante:(Jogador *)desafiante {
//    if ([[desafiante pokemons]count] < 3) {
//    printf("\nVocê precisa ter ao menos 3 pokemons para realizar um desafio.\n");
//    return;
//    }
//    printf("\nEscolha o ginásio que deseja desafiar:\n");
//    [self showGinasions];
//    
//    int option;
//    do {
//    option = [Utils lerEntradaDoUsuarioComInt] - 1;
//    } while (option < 0 && option > 3);
//    
//    [_ginasios[option] desafiarLiderWithDesafiante:desafiante];
//    }

}
