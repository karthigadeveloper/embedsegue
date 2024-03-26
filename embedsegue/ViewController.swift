//
//  ViewController.swift
//  embedsegue
//
//  Created by Karthiga on 9/27/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }



    @IBAction func buttonaction(_ sender: UIButton) {
        self.performSegue(withIdentifier: "one", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "one" {
    if let embedded = segue.destination as? secondViewController  {
               
        embedded.a  = "Hello from MainViewController!"
}
    }
}
}
