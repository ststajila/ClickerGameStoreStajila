//
//  ViewController.swift
//  ClickerGameStoreStajila
//
//  Created by STANISLAV STAJILA on 10/3/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var clickButtonOutlet: UIButton!
    @IBOutlet weak var pointsOutlet: UILabel!
    var points = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view.
    }

    @IBAction func clickAction(_ sender: Any) {
        points += 1;
        pointsOutlet.text = "\(points)"
    }
    
    
    @IBAction func goToStoreAction(_ sender: Any) {
        performSegue(withIdentifier: "toStore", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var nvc = segue.destination as! ViewControllerStore
        
        nvc.storePoints = points
    }
    
}

