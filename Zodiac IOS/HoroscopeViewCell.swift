//
//  HoroscopeViewCell.swift
//  Zodiac IOS
//
//  Created by Mañanas on 12/5/25.
//

import UIKit

class HoroscopeViewCell: UITableViewCell {

    
    @IBOutlet weak var favoriteImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var signImageView: UIImageView!
    
    
    func render(horoscope: Horoscope) {
            nameLabel.text = horoscope.name
            dateLabel.text = horoscope.dates
            signImageView.image = horoscope.image
            favoriteImageView.isHidden = !SessionManager().isFavorite(id: horoscope.id)
        }

        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
        }

}
