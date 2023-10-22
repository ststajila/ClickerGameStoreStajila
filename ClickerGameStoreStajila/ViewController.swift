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
    var points = 0.0
    let alert = UIAlertController(title: "Success", message: "You have enought points, would you like to go to the store?", preferredStyle: .actionSheet)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        self.title = "Main"
        
        let yesAction = UIAlertAction(title: "Yes", style: .default) { alert in
            self.goToTheStore()
        }
        
        let noAction = UIAlertAction(title: "No", style: .destructive, handler: nil)
        
        alert.addAction(noAction)
        alert.addAction(yesAction)
    }

    override func viewWillAppear(_ animated: Bool) {
        pointsOutlet.text = "\(points)"
    }
    @IBAction func clickAction(_ sender: Any) {
        points += 1;
        pointsOutlet.text = "\(points)"
        
        if points == 20{
            present(alert, animated: true)
        }
    }
    
    
    @IBAction func goToStoreAction(_ sender: Any) {
        performSegue(withIdentifier: "toStore", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewControllerStore
        
        nvc.storePoints = points
        nvc.delegate = self
    }
    
    func goToTheStore() -> Bool{
        performSegue(withIdentifier: "toStore", sender: self)
        return true
    }
    
}

