//
//  main.swift
//  PokemonSwift
//
//  Created by Solid Jaum on 04/04/17.
//  Copyright © 2017 Solid Jaum. All rights reserved.
//

import Foundation


let pokeMundo: PokeMundo

pokeMundo.iniciarMundo()  // Falta o Método


var pokemonsIniciais: Array<Pokemon>


for i in 0...3{
    
    pokemonsIniciais.append((pokeMundo.pokemons?[i])!)
}

var player: Jogador = Utils.cadastrarJogador(pokemonsIniciais: pokemonsIniciais) // Falta Utils

var option: Int

while(true){
    
    Utils.showMenu()  //Falta Metodo
    option = Utils.lerEntradaDoUsuarioComInt()
    
    switch(option){
        
    case 1:
        player.informacoesJogador() //Falta Metodo
        break
        
    case 2:
        pokeMundo.showGinasios() //Falta Metodo
        break
        
    case 3:
        pokeMundo.desafiarGinasioWithDesafiante(player) //Falta Metodo
        break
        
    case 4:
        if let newPokemon = player.procurarPokemons(pokeMundo.pokemons!) {                                     //Falta Metodo
            print("Parabens, você capturou um \(newPokemon.name)")  //Falta Metodo
            player.addPokemon(newPokemon)                  //Falta Metodo
        }else{
            print("Falha na captura")
        }
        break
        
    default:
        break
        
        
    }
    
    
    
    
}
