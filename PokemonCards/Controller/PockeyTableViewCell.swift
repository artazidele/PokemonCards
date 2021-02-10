//
//  PockeyTableViewCell.swift
//  PokemonCards
//
//  Created by arta.zidele on 10/02/2021.
//

import UIKit

class PockeyTableViewCell: UITableViewCell {

    @IBOutlet weak var pockeyImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cardValueLabel: UILabel!
    @IBOutlet weak var subtypeLabel: UILabel!
    @IBOutlet weak var supertypeLabel: UILabel!
    func setUI(with: Pokemon) {
        nameLabel.text = "Name: " + with.name
        cardValueLabel.text = "Card Value: " + with.number
        //subtypeLabel.text = "Card: " + with.subtype!
        if let subtype = with.subtype {
            subtypeLabel.text = "Card: " + subtype
        }
        if let supertype = with.supertype {
            supertypeLabel.text = supertype
            if with.supertype == "Trainer" {
                contentView.backgroundColor = .systemGreen
            } else {
                contentView.backgroundColor = .orange
            }
        }
        
        ImageController.getImage(for: with.imageUrl ?? "", completion: { image in
            self.pockeyImageView.image = image
        })
        
        
    }
}
