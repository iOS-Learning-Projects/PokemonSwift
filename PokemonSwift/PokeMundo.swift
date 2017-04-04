//
//  PokeMundo.swift
//  PokemonSwift
//
//  Created by Solid Jaum on 04/04/17.
//  Copyright © 2017 Solid Jaum. All rights reserved.
//

import Cocoa

class PokeMundo: NSObject {
    var jogadores: NSArray?
    var ginasios: NSArray?
    var pokemons: NSArray?
    
    func iniciarMundo(){
        // Pokemons existentes
        let bulbasaur = Pokemon("Charmander", ofType: "GRAMA")
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
        
        
        let iniciais = NSArray(array: [bulbasaur, charmander, squirtle, poliwag, horsea, staryu, growlithe, ponyta, magmar, chikorita, paras, exeggcute])
        
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
        
        let ginasios = NSArray(array: [pewter, cerulean, vermilion, celadon])
            
        self.pokemons = iniciais
        self.ginasios = ginasios
        
        
    }
    
    func showGinasios(){
        print("Nome do Ginasio\t    Lider do Ginásio\n")
        print("---------------------------------------\n")
        for ginasio in self.ginasios!{
            print("%-17s\t%-20s\n", (ginasio as! Gym).name, (ginasio as! Gym).leader.nome)
        }
    }
}
