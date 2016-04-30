//
//  OrdenViewController.swift
//  CrearPizza
//
//  Created by Avril  Hernández on 26/04/16.
//  Copyright © 2016 AHB. All rights reserved.
//

import UIKit

class OrdenViewController: UIViewController {
    
    @IBAction func salir(sender: AnyObject) {
        if let composeViewController = self.navigationController?.viewControllers[0] {
            self.navigationController?.popToViewController(composeViewController, animated: true)
        }
    }
    
    var tamañoPizza: Int? = nil
    var tipoMasa: Int? = nil
    var tipoQueso: Int? = nil
    var ingredientes: [Bool] = [false]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
