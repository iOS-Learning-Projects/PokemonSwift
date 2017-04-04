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
    
    init(currentGinasios: NSMutableArray, currentPokemons: NSMutableArray) {
        super.init()
        self.ginasios = currentGinasios
        self.pokemons = currentPokemons
    }
    
    func iniciarMundo(){
        var iniciais: NSMutableArray
        var bulbasaur: Pokemon
        
        
    }
}


//
//-(void)iniciarMundo{
//    NSMutableArray *iniciais = [[NSMutableArray alloc]init];
//    Pokemon *bulbasaur = [[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA"];
//    Pokemon *charmander = [[Pokemon alloc]initWithNome:@"Charmander" andTipo:@"FOGO"];
//    Pokemon *squirtle = [[Pokemon alloc]initWithNome:@"Squirtle" andTipo:@"AGUA"];
//    Pokemon *poliwag = [[Pokemon alloc]initWithNome:@"Poliwag" andTipo:@"AGUA"];
//    Pokemon *horsea = [[Pokemon alloc]initWithNome:@"Horsea" andTipo:@"AGUA"];
//    Pokemon *staryu = [[Pokemon alloc]initWithNome:@"Staryu" andTipo:@"AGUA"];
//    Pokemon *growlithe = [[Pokemon alloc]initWithNome:@"Growlithe" andTipo:@"FOGO"];
//    Pokemon *ponyta = [[Pokemon alloc]initWithNome:@"Ponyta" andTipo:@"FOGO"];
//    Pokemon *magmar = [[Pokemon alloc]initWithNome:@"Magmar" andTipo:@"FOGO"];
//    Pokemon *chikorita = [[Pokemon alloc]initWithNome:@"Chikorita" andTipo:@"GRAMA"];
//    Pokemon *paras = [[Pokemon alloc]initWithNome:@"Paras" andTipo:@"GRAMA"];
//    Pokemon *exeggcute = [[Pokemon alloc]initWithNome:@"Exeggcute" andTipo:@"GRAMA"];
//    
//    [iniciais addObject: bulbasaur];
//    [iniciais addObject: charmander];
//    [iniciais addObject: squirtle];
//    [iniciais addObject: poliwag];
//    [iniciais addObject: horsea];
//    [iniciais addObject: staryu];
//    [iniciais addObject: growlithe];
//    [iniciais addObject: ponyta];
//    [iniciais addObject: magmar];
//    [iniciais addObject: chikorita];
//    [iniciais addObject: paras];
//    [iniciais addObject: exeggcute];
//    
//    NSMutableArray *pokemonsBrock = [[NSMutableArray alloc]init];
//    [pokemonsBrock addObject:[[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA"]];
//    [pokemonsBrock addObject:[[Pokemon alloc]initWithNome:@"Paras" andTipo:@"GRAMA"]];
//    [pokemonsBrock addObject:[[Pokemon alloc]initWithNome:@"Exeggcute" andTipo:@"GRAMA"]];
//    Jogador *brock = [[Jogador alloc]initWithID:101 andNome:@"Brock" andSexo:@"garoto" andPokemons:pokemonsBrock];
//    
//    NSMutableArray *pokemonsMisty = [[NSMutableArray alloc]init];
//    [pokemonsMisty addObject:[[Pokemon alloc]initWithNome:@"Squirtle" andTipo:@"AGUA"]];
//    [pokemonsMisty addObject:[[Pokemon alloc]initWithNome:@"Poliwag" andTipo:@"AGUA"]];
//    [pokemonsMisty addObject:[[Pokemon alloc]initWithNome:@"Staryu" andTipo:@"AGUA"]];
//    Jogador *misty = [[Jogador alloc]initWithID:101 andNome:@"Misty" andSexo:@"garota" andPokemons:pokemonsMisty];
//    
//    NSMutableArray *pokemonsLtSurge = [[NSMutableArray alloc]init];
//    [pokemonsLtSurge addObject:[[Pokemon alloc]initWithNome:@"Growlithe" andTipo:@"FOGO"]];
//    [pokemonsLtSurge addObject:[[Pokemon alloc]initWithNome:@"Magmar" andTipo:@"FOGO"]];
//    [pokemonsLtSurge addObject:[[Pokemon alloc]initWithNome:@"Chikorita" andTipo:@"GRAMA"]];
//    Jogador *ltSurge = [[Jogador alloc]initWithID:101 andNome:@"LtSurge" andSexo:@"garoto" andPokemons:pokemonsLtSurge];
//    
//    NSMutableArray *pokemonsErika = [[NSMutableArray alloc]init];
//    [pokemonsErika addObject:[[Pokemon alloc]initWithNome:@"Ponyta" andTipo:@"FOGO"]];
//    [pokemonsErika addObject:[[Pokemon alloc]initWithNome:@"Horsea" andTipo:@"AGUA"]];
//    [pokemonsErika addObject:[[Pokemon alloc]initWithNome:@"Charmander" andTipo:@"FOGO"]];
//    Jogador *erika = [[Jogador alloc]initWithID:101 andNome:@"Erika" andSexo:@"garota" andPokemons:pokemonsErika];
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
