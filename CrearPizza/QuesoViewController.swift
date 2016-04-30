//
//  QuesoViewController.swift
//  CrearPizza
//
//  Created by Avril  Hernández on 25/04/16.
//  Copyright © 2016 AHB. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController {
    
    @IBOutlet weak var quesoPizza: UISegmentedControl!
    
    var tamañoPizza: Int? = nil
    var tipoMasa: Int? = nil
    var tipoQueso: Int? = nil


    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! IngredientesViewController
        sigVista.tamañoPizza = tamañoPizza
        sigVista.tipoMasa = tipoMasa
        sigVista.tipoQueso = quesoPizza.selectedSegmentIndex
        
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
