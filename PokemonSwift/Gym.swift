//
//  Ginasio.swift
//  PokemonSwift
//
//  Created by Solid Jaum on 04/04/17.
//  Copyright © 2017 Solid Jaum. All rights reserved.
//

import Cocoa

struct Gym {

    var name: String
    var leader: Jogador

    init(gymOfName name: String, ledBy leader: Jogador) {
        self.name = name
        self.leader = leader
    }

    mutating func challengedBy(player challenger: Jogador) {
        challenger.melhoresPokemons()
        self.leader.melhoresPokemons()

        var pokemonOfChallenger: Pokemon
        var pokemonOfGymLeader: Pokemon

        var leaderGymDefeats = 0
        var challengerDefeats = 0

        for _ in 0...2 {
            pokemonOfChallenger = challenger.pokemons[challengerDefeats]
            pokemonOfGymLeader = self.leader.pokemons[leaderGymDefeats]

            let challengerWonBattle = battleBetween(pokemonOfChallenger: pokemonOfChallenger, andPokemonOfGymLeader: pokemonOfGymLeader)

            if challengerWonBattle {
                challenger.pokemons[challengerDefeats].gainExperience(35)
                self.leader.pokemons[leaderGymDefeats].gainExperience(10)
                leaderGymDefeats += 1
            } else {
                self.leader.pokemons[challengerDefeats].gainExperience(35)
                challenger.pokemons[challengerDefeats].gainExperience(10)
                challengerDefeats += 1
            }
        }

        if challengerDefeats < 2 {
            print("Parabéns! Você é o novo líder do ginásio \(self.name)")
            self.leader = challenger
        } else { //Desafiante perdeu o desafio
            print("Infelizmente você perdeu o desafio.");
        }
    }

    func battleBetween(pokemonOfChallenger: Pokemon, andPokemonOfGymLeader pokemonOfGymLeader: Pokemon) -> Bool{
        let pokemonOfChallengerWon = true
        let pokemonOfChallengerLost = false

        let differenceBetweenLevelOfPokemons = (pokemonOfChallenger.level - pokemonOfGymLeader.level)

        if (differenceBetweenLevelOfPokemons >= 3) {
            return pokemonOfChallengerWon
        } else if (differenceBetweenLevelOfPokemons <= -3) {
            return pokemonOfChallengerLost
        }

        if pokemonOfChallenger.type != pokemonOfGymLeader.type {
            let typesOfPokemons = ["AGUA", "FOGO", "GRAMA", "AGUA"]

            let typeOfPokemonOfChallenger = typesOfPokemons.index(of: pokemonOfChallenger.type)
            let typeOfPokemonOfGymLeader = typesOfPokemons.index(of: pokemonOfGymLeader.type)

            return (typeOfPokemonOfChallenger == typeOfPokemonOfGymLeader! + 1) ? pokemonOfChallengerWon : pokemonOfChallengerLost
        } else {
            if pokemonOfChallenger.experience > pokemonOfGymLeader.experience {
                return pokemonOfChallengerWon
            }
            if pokemonOfChallenger.experience < pokemonOfGymLeader.experience {
                return pokemonOfChallengerLost
            }

            let randomResult = arc4random_uniform(2)
            return (randomResult == 0) ? pokemonOfChallengerLost : pokemonOfChallengerWon
        }
    }
}
