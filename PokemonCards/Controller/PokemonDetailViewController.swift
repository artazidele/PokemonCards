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
    
    @IBOutlet weak var nameField: UILabel!
    @IBOutlet weak var idField: UILabel!
    @IBOutlet weak var numberField: UILabel!
    @IBOutlet weak var subtypeField: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let pokemon = pokemon {
            ImageController.getImage(for: pokemon.imageUrl ?? "") { (image) in
                    self.pokemonImageView.image = image
                }
            self.pokemonLabelFirst?.text = pokemon.artist
            self.nameField.text = "Name: " + pokemon.name
            self.idField.text = "ID: " + pokemon.id
            self.numberField.text = "Number: " + pokemon.number
            self.subtypeField?.text = pokemon.subtype
                
        } else {
            print("Pokemon image is nil")
        }
    }

    

}
