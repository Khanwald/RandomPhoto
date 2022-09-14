//
//  ViewController.swift
//  RandomPhoto
//
//  Created by 11k on 9/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var generateButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    func randomPhoto(){
        let urlString = "https://source.unsplash.com/random/600x600"
        let url = URL(string: urlString)!
        guard let data = try? Data(contentsOf: url) else {
            return
        }
        imageView.image = UIImage(data: data)
    }
    
    
    @IBAction func generateRandomPhoto(_ sender: Any) {
        randomPhoto()
    }
    
}
