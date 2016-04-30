//
//  ConfirmacionViewController.swift
//  CrearPizza
//
//  Created by Avril  Hernández on 25/04/16.
//  Copyright © 2016 AHB. All rights reserved.
//

import UIKit

class ConfirmacionViewController: UIViewController {

    var tamañoPizza: Int? = nil
    var tipoMasa: Int? = nil
    var tipoQueso: Int? = nil
    var ingredientes: [Bool] = [false]
    
    @IBOutlet weak var ingrediente: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var tamaño: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        switch tamañoPizza!{
        case 0:
            tamaño.text = "Chica"
        case 1:
            tamaño.text = "Mediana"
        case 2:
            tamaño.text = "Grande"
        default:
            tamaño.text = "Normal"
        }
        
        switch tipoMasa!{
        case 0:
            masa.text = "Delgada"
        case 1:
            masa.text = "Crujiente"
        case 2:
            masa.text = "Gruesa"
        default:
            masa.text = "Normal"
        }
        
        switch tipoQueso!{
        case 0:
            queso.text = "Mozarela"
        case 1:
            queso.text = "Cheddar"
        case 2:
            queso.text = "Parmesano"
        case 3:
            queso.text = "Sin queso"
        default:
            queso.text = "Sin queso"
        }
        
        var counter = 0
        var numeroIngredientes = 0
        ingrediente.text = " "
        for ingredient in ingredientes{
            switch counter {
            case 0:
                if ingredient == true{
                    ingrediente.text = ingrediente.text! + "Jamon,"
                    numeroIngredientes += 1
                }
            case 1:
                if ingredient == true{
                    ingrediente.text = ingrediente.text! + "Piña,"
                    numeroIngredientes += 1
                }
            case 2:
                if ingredient == true{
                    ingrediente.text = ingrediente.text! + "Pepperoni,"
                    numeroIngredientes += 1
                }
            case 3:
                if ingredient == true{
                    ingrediente.text = ingrediente.text! + "Salchicha,"
                    numeroIngredientes += 1
                }
            case 4:
                if ingredient == true{
                    ingrediente.text = ingrediente.text! + "Cebolla"
                    numeroIngredientes += 1
                }
            default:
                continue
            }
            counter += 1
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVista = segue.destinationViewController as! OrdenViewController
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
