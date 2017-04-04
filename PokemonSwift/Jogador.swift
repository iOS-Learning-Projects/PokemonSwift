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
    var pokemons: Array<Pokemon> = []
    
    init(_ currentID: Int, _ currentNome: String,_ currentSex: String, _ firstPokemon: Pokemon) {
        
        super.init()
        
        self.idJogador = currentID
        self.nome = currentNome
        self.sexo = currentSex
        self.pokemons.append(firstPokemon)
    }
    
    init(_ currentID: Int, _ currentNome: String,_ currentSex: String, _ currentPokemons: Array<Pokemon>) {
        
        super.init()
        
        self.idJogador = currentID
        self.nome = currentNome
        self.sexo = currentSex
        self.pokemons = currentPokemons
    }
    
    
    
    func procurarPokemons(_ listaPokemons: Array<Pokemon>) -> Pokemon?{
        
        if self.pokemons.count >= 5{
            return nil
        }
    
        var op: Int
        
        var pokemon: Pokemon
        
        pokemon = listaPokemons[Int(arc4random_uniform(UInt32(listaPokemons.count)))]
        pokemon.experience  = arc4random_uniform(99)
        
        repeat{
            pokemon.level = arc4random_uniform(15)
        }while pokemon.level == 0
        
        print("Voce encontrou um %s.",pokemon.name);
        print("\n%-20.20s%-20.20s%-20.20s%-20.20s\n","Nome", "Tipo", "Lvl", "Exp");
        print("----------------------------------------------------------------\n");
        
        for pokemon in self.pokemons{
            
            
            
            print("%-20.20s%-20.20s %-20d %-20d\n", pokemon.name, pokemon.type, pokemon.level, pokemon.experience);
        }
        print("Deseja tentar capturá-lo?\n1 - Sim\n2 - Nao");
        repeat {
            op = Utils.lerEntradaDoUsuarioComInt()
        } while op != 1 && op != 2 ;
        
        
        if op == 1 {
            if tentaCapturarPokemon(){
                return pokemon;
            }
        }
        return nil;
        
    }
    
    func tentaCapturarPokemon() -> Bool{
        
        let chance: Int = Int(arc4random_uniform(100))
        let limite: Int = 50
        
        return chance >= limite ? true : false
        
    }
    
    func melhoresPokemons(){
        self.pokemons.sort { (poke1: Pokemon, poke2: Pokemon) -> Bool in
            poke1.level < poke2.level
        }
    }
    
    func informacoesJogador(){
        
        print("\n%-20.20s%-20.20s%-20.20s\n","ID", "Nome", "Sexo");
        print("----------------------------------------------------------------\n");
        print("%-20d%-20.20s%-20.20s\n", self.idJogador, self.nome, self.sexo);
        print("\nLista de Pokemons:\n");
        print("\n%-20.20s%-20.20s%-20.20s%-20.20s\n","Nome", "Tipo", "Lvl", "Exp");
        print("----------------------------------------------------------------\n");
        for pokemon in self.pokemons{
            print("%-20.20s%-20.20s %-20d %-20d\n", pokemon.name, pokemon.type, pokemon.level, pokemon.experience);
        }
        
    }
    
    func addPokemon(_ newPoke: Pokemon){
        self.pokemons.append(newPoke)
    }

}
