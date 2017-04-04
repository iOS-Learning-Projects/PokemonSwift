//
//  Jogador.swift
//  PokemonSwift
//
//  Created by Solid Jaum on 04/04/17.
//  Copyright © 2017 Solid Jaum. All rights reserved.
//

import Cocoa

class Jogador: NSObject {
    
    //Variaveis
    
    var idJogador: Int = 0
    var nome: String = ""
    var sexo: String = ""
    var pokemons: Array<Any> = []
    
    init(_ currentID: Int, _ currentNome: String,_ currentSex: String, _ firstPokemon: Pokemon) {
        self.idJogador = currentID
        self.nome = currentNome
        self.sexo = currentSex
        self.pokemons.append(firstPokemon)
    }
    
    // talvez
    
    
    
    func procurarPokemons(_ listaPokemons: Array<Any>) -> Pokemon{
        
        if self.pokemons.count >= 5{
            return nil
        }
        
        var op: Int
        
        var pokemon: Pokemon
        
        pokemon = listaPokemons[arc4random_uniform(UInt32(listaPokemons.count))] // pode ta errado
        pokemon.exp  = [arc4random_uniform(99)]    //falta variavel no pokemon
        
        repeat{
            pokemon.level = [arc4random_uniform(15)]
        }while pokemon.level == 0
        
        print("Voce encontrou um %s.",pokemon.nome);
        print("\n%-20.20s%-20.20s%-20.20s%-20.20s\n","Nome", "Tipo", "Lvl", "Exp");
        print("----------------------------------------------------------------\n");
        
        
        for pokemon in self.pokemons{
            print("%-20.20s%-20.20s %-20d %-20d\n", pokemon.nome, pokemon.tipo, pokemon.level, pokemon.exp);
        }
        print("Deseja tentar capturá-lo?\n1 - Sim\n2 - Nao");
        repeat {
            op = Utils.lerEntradaDoUsuarioComInt;
        } while op != 1 && op != 2 ;
        
        
        if op == 1 {
            if self.tentarCapturarPokemon{
                return pokemon;
            }
        }
        return nil;
        
    }
    
    func tentaCapturarPokemon() -> Bool{
        
        var chance: Int = [arc4random_uniform(100)]
        var limite: Int = [50]
        
        return chance >= limite ? true : false
        
    }
    
    func melhoresPokemons(){
        self.pokemons.sort(by: compare)
    }
    
    
    func informacoesJogador(){
        
        print("\n%-20.20s%-20.20s%-20.20s\n","ID", "Nome", "Sexo");
        print("----------------------------------------------------------------\n");
        print("%-20d%-20.20s%-20.20s\n", self.idJogador, self.nome, self.sexo);
        print("\nLista de Pokemons:\n");
        print("\n%-20.20s%-20.20s%-20.20s%-20.20s\n","Nome", "Tipo", "Lvl", "Exp");
        print("----------------------------------------------------------------\n");
        for pokemon in self.pokemons{
            print("%-20.20s%-20.20s %-20d %-20d\n", pokemon.nome, pokemon.tipo, pokemon.level, pokemon.exp);
        }
        
    }
    
    func addPokemon(_ newPoke: Pokemon){
        self.pokemons.append(newPoke)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
