//
//  main.swift
//  PokemonSwift
//
//  Created by Solid Jaum on 04/04/17.
//  Copyright © 2017 Solid Jaum. All rights reserved.
//

import Foundation


var pokeMundo = PokeMundo()

let pokemonsIniciais = pokeMundo.pokemonsIniciais()

var player: Jogador = Utils.cadastrarJogador(pokemonsIniciais: pokemonsIniciais)

var option: Int

while(true){
    
    Utils.showMenu()  //Falta Metodo
    option = Utils.lerEntradaDoUsuarioComInt()
    
    switch(option){
        
    case 1:
        player.informacoesJogador()
    case 2:
        pokeMundo.showGinasios()
    case 3:
        pokeMundo.desafiarGinasioWithDesafiante(desafiante: player)
    case 4:
        if let newPokemon = player.procurarPokemons(pokeMundo.pokemons) {
            print("Parabens, você capturou um \(newPokemon.name)")
            player.addPokemon(newPokemon)
        }else{
            print("Falha na captura")
        }
    default:
        exit(0)
    }
    
    
    
    
}
