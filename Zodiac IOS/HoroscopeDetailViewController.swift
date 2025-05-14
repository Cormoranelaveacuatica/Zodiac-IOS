//
//  HoroscopeDetailViewController.swift
//  Zodiac IOS
//
//  Created by Mañanas on 13/5/25.
//

import UIKit

class HoroscopeDetailViewController: UIViewController {
    
    var horoscope: Horoscope!
    var isFavorite = false

    @IBOutlet weak var favoriteMenu: UIBarButtonItem!
    @IBOutlet weak var datesLabel: UILabel!
    @IBOutlet weak var signImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = horoscope.name
        signImageView.image = horoscope.image
        datesLabel.text = horoscope.dates
        
        isFavorite = SessionManager().isFavorite(id: horoscope.id)
        setFavoriteIcon()
    }
    
    func setFavoriteIcon(){
        if isFavorite {
            favoriteMenu.image = UIImage(systemName: "heart.fill")
        } else {
            favoriteMenu.image = UIImage(systemName: "heart")
        }
    }
    @IBAction func setFavorite (_ sender: Any) {
        isFavorite = !isFavorite
        SessionManager().setFavorite(id: isFavorite ? horoscope.id : "")
        setFavoriteIcon()
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
