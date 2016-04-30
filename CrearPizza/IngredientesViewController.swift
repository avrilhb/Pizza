//
//  IngredientesViewController.swift
//  CrearPizza
//
//  Created by Avril  Hernández on 25/04/16.
//  Copyright © 2016 AHB. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {
    
    @IBOutlet weak var finalizar: UIButton!
    var tamañoPizza: Int? = nil
    var tipoMasa: Int? = nil
    var tipoQueso: Int? = nil
    var ingredientes: [Bool] = [false]
    
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var pepperoni: UISwitch!
    @IBOutlet weak var piña: UISwitch!
    @IBOutlet weak var jamon: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func finalizar(sender: AnyObject) {
        if jamon.on || piña.on || pepperoni.on || salchicha.on || cebolla.on{
            finalizar.hidden = false
        }else{
            finalizar.hidden = true
        }
        
    }
    
    override func viewWillAppear(animated: Bool) {
        if jamon.on || piña.on || pepperoni.on || salchicha.on || cebolla.on{
            finalizar.hidden = false
        }else{
            finalizar.hidden = true
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        ingredientes.removeAll()
        ingredientes.append(jamon.on)
        ingredientes.append(piña.on)
        ingredientes.append(pepperoni.on)
        ingredientes.append(salchicha.on)
        ingredientes.append(cebolla.on)
        
        let sigVista = segue.destinationViewController as! ConfirmacionViewController
        sigVista.tamañoPizza = tamañoPizza
        sigVista.tipoMasa = tipoMasa
        sigVista.tipoQueso = tipoQueso
        sigVista.ingredientes = ingredientes
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
