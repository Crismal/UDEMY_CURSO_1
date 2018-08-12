//
//  ViewController.swift
//  UdemyIAmRich
//
//  Created by Cristian Misael Almendro Lazarte on 8/12/18.
//  Copyright © 2018 Cristian Misael Almendro Lazarte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LblTitulo: UILabel!
    @IBOutlet weak var ImgLogo: UIImageView!
    @IBOutlet weak var BtnPulsame: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func BtnPressed(_ sender: UIButton) {
        
        //        self.LblTitulo.text = "Otra cosa!!";
        //
        //        self.LblTitulo.textColor = UIColor.black;
        //
        //        self.LblTitulo.font = UIFont.boldSystemFont(ofSize: 22);
        //
        //        self.ImgLogo.backgroundColor = UIColor.black;
        //
        //        self.BtnPulsame.setTitle("HOla mundo", for: UIControl.State.normal);
        //
        
        let Controller = UIAlertController(title: "I am rich", message: """
                                                    I am rich,
                                                    i deserv it,
                                                    i am good,
                                                    healty and successful
                                                    """, preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            print("He pulsado el boton de aceptar");
        };
        
        Controller.addAction(action);
        
        let action2 = UIAlertAction(title: "Descructiva", style: .destructive) { (action) in
            print("He pulsado el boton de Descructiva");
        };
        Controller.addAction(action2);
        
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel) { (action) in
            print("He pulsado el boton de Cancelar");
        };
        
        Controller.addAction(action3);
        
        
        self.show(Controller, sender: self);
        
        print("He pulsado el boton!!");
    }
    
}

