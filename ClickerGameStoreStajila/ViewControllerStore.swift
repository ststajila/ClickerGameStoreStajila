//
//  ViewControllerStore.swift
//  ClickerGameStoreStajila
//
//  Created by STANISLAV STAJILA on 10/3/23.
//

import UIKit

class ViewControllerStore: UIViewController {

    var storePoints: Double!
    @IBOutlet weak var amountOutlet: UILabel!
   
    @IBOutlet weak var statusOutlet: UILabel!
    var delegate: ViewController!
    let alert = UIAlertController(title: "Error", message: "You have not enough points for this option", preferredStyle: .alert)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        amountOutlet.text = "You have \(storePoints!) points"
        self.title = "Store"
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstAction(_ sender: Any) {
    
        if storePoints >= 20 {
        if Int.random(in: 0...1) == 0{
            storePoints *= 2
            delegate.points = storePoints
            amountOutlet.text = "You have \(storePoints!) points"
            statusOutlet.text = "You have doubled your points"
            statusOutlet.backgroundColor = UIColor.green
            
        } else{
            storePoints -= (storePoints/2)
            delegate.points = storePoints
            amountOutlet.text = "You have \(storePoints!) points"
            statusOutlet.text = "You lost half of your points"
            statusOutlet.backgroundColor = UIColor.red
        }
        } else{
            statusOutlet.text = "You have not enough points for this option"
            statusOutlet.backgroundColor = UIColor.red
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func secondAction(_ sender: Any) {
        if storePoints >= 30 {
        if Int.random(in: 0...1) == 0{
            storePoints *= 3
            delegate.points = storePoints
            amountOutlet.text = "You have \(storePoints!) points"
            statusOutlet.text = "You have tripled your points"
            statusOutlet.backgroundColor = UIColor.green
            
        } else{
            storePoints = 0
            delegate.points = storePoints
            amountOutlet.text = "You have \(storePoints!) points"
            statusOutlet.text = "You lost all of your points"
            statusOutlet.backgroundColor = UIColor.red
        }
        } else{
            statusOutlet.text = "You have not enough points for this option"
            statusOutlet.backgroundColor = UIColor.red
            
            present(alert, animated: true, completion: nil)
        }
        
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
