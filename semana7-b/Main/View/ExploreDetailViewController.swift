//
//  ExploreDetailViewController.swift
//  semana7-b
//
//  Created by Linder Hassinger on 6/10/21.
//

import UIKit

class ExploreDetailViewController: UIViewController {

    var name: String? = nil
    var address: String? = nil
    var rating: String? = nil
    var userRatingsTotal: String? = nil
    var photo: String? = nil
    
    @IBOutlet weak var imageBG: UIImageView!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitle.text = name!
        lblAddress.text = address!
        
        let urlImage = URL(string: photo!)
        
        let data = try? Data(contentsOf: urlImage!)
        
        if let imageData = data {
            imageBG.image = UIImage(data: imageData)
        }
        
        let actionImage = UITapGestureRecognizer(target: self, action: #selector(self.imageClick))
        
        imageBG.addGestureRecognizer(actionImage)
        imageBG.isUserInteractionEnabled = true
        
        print("Variables")
        print(name)
        print(address)
        print(rating)
        print(userRatingsTotal)
    }
    
    @objc func imageClick(sender: UITapGestureRecognizer) {
        dismiss(animated: true)
    }
    
    
}
