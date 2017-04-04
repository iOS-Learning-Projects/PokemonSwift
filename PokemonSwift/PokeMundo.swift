//
//  PokeMundo.swift
//  PokemonSwift
//
//  Created by Solid Jaum on 04/04/17.
//  Copyright © 2017 Solid Jaum. All rights reserved.
//

import Cocoa

class PokeMundo: NSObject {
    var jogadores: NSMutableArray?
    var ginasios: NSMutableArray?
    var pokemons: NSMutableArray?
    
    func iniciarMundo(){
        var iniciais: NSMutableArray
        var bulbasaur = Pokemon("Charmander", ofType: "GRAMA")
        var charmander = Pokemon("Charmander", ofType: "FOGO")
        var squirtle = Pokemon("Squirtle", ofType: "AGUA")
        var poliwag = Pokemon("Poliwag", ofType: "AGUA")
        var horsea = Pokemon("Horsea", ofType: "AGUA")
        var staryu = Pokemon("Staryu", ofType: "AGUA")
        var growlithe = Pokemon("Growlithe", ofType: "FOGO")
        var ponyta = Pokemon("Ponyta", ofType: "FOGO")
        var magmar = Pokemon("Magmar", ofType: "FOGO")
        var chikorita = Pokemon("Chikorita", ofType: "GRAMA")
        var paras = Pokemon("Paras", ofType: "GRAMA")
        var exeggcute = Pokemon("Exeggcute", ofType: "GRAMA")
        
        iniciais.add(bulbasaur)
        iniciais.add(charmander)
        iniciais.add(squirtle)
        iniciais.add(poliwag)
        iniciais.add(horsea)
        iniciais.add(staryu)
        iniciais.add(growlithe)
        iniciais.add(ponyta)
        iniciais.add(magmar)
        iniciais.add(chikorita)
        iniciais.add(paras)
        iniciais.add(exeggcute)
        
        var pokemonsBrock: NSMutableArray
        pokemonsBrock.addObjects(from: [bulbasaur, paras, exeggcute])
        var brock = Jogador(101, "Brock", "garoto", pokemonsBrock)
        
        var pokemonsMisty: NSMutableArray
        pokemonsMisty.addObjects(from: [growlithe, magmar, chikorita])
        var misty = Jogador(102, "Misty", "garota", pokemonsMisty)
        
        var pokemonsLtSurge: NSMutableArray
        pokemonsLtSurge.addObjects(from: [bulbasaur, paras, exeggcute])
        var ltSurge = Jogador(103, "LtSurge", "garoto", pokemonsLtSurge)
        
        var pokemonsErika: NSMutableArray
        pokemonsErika.addObjects(from: [ponyta, horsea, charmander])
        var erika = Jogador(104, "Erika", "garota", pokemonsErika)
        
        var ginasios: NSMutableArray
        var pewter = Ginasio(
        var cerulean = Ginasio(
        var vermilion = Ginasio(
        var celadon = Ginasio(
        
        ginasios.addObjects(from: [pewter, cerulean, vermilion, celadon])
            
        self.pokemons = iniciais
        self.ginasios = ginasios
        
        
    }
    
    func showGinasios(){
        print("Nome do Ginasio\t    Lider do Ginásio\n")
        print("---------------------------------------\n")
        for ginasio in self.ginasios!{
            print("%-17s\t%-20s\n", ginasio.nome, ginasio.lider.nome)
        }
    }
}


//
//-(void)iniciarMundo{
//
//    NSMutableArray *ginasios = [[NSMutableArray alloc]init];
//    Ginasio *pewter = [[Ginasio alloc]initWithNome:@"Pewter" andLider:brock];
//    Ginasio *cerulean = [[Ginasio alloc]initWithNome:@"Cerulean" andLider:misty];
//    Ginasio *vermilion = [[Ginasio alloc]initWithNome:@"Vermilion" andLider:ltSurge];
//    Ginasio *celadon = [[Ginasio alloc]initWithNome:@"Celadon" andLider:erika];
//    [ginasios addObject: pewter];
//    [ginasios addObject: cerulean];
//    [ginasios addObject: vermilion];
//    [ginasios addObject: celadon];
//    
//    self.pokemons = iniciais;
//    self.ginasios = ginasios;
//    
//}
//
//-(void)showGinasions {
//    printf("Nome do Ginasio\t    Lider do Ginásio\n");
//    printf("---------------------------------------\n");
//    
//    for (Ginasio *ginasio in self.ginasios) {
//        printf("%-17s\t%-20s\n", [[ginasio nome] UTF8String], [[[ginasio lider] nome] UTF8String]);
//    }
//}
//
//@end
