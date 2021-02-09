//
//  PokemonDetailViewController.swift
//  PokemonCards
//
//  Created by arta.zidele on 09/02/2021.
//

import UIKit

class PokemonDetailViewController: UIViewController {

    var pokemon: Pokemon?
    
    @IBOutlet weak var pokemonImageView: UIImageView!
    
    @IBOutlet weak var pokemonLabelFirst: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let pokemon = pokemon {
            ImageController.getImage(for: pokemon.imageUrl ?? "") { (image) in
                    self.pokemonImageView.image = image
                }
            self.pokemonLabelFirst?.text = pokemon.artist
                
        } else {
            print("Pokemon image is nil")
        }
    }

    

}
