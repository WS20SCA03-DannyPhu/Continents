//
//  ViewController.swift
//  Continents
//
//  Created by danny phu on 4/20/20.
//  Copyright © 2020 BMCC. All rights reserved.
//

import UIKit

struct Cont {
    let continent: String;
    let population: Int;
}

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var textField: UITextField!;
    @IBOutlet weak var label: UILabel!;
    
    
    //info from www.worldometers.info/geography/7-continents/
    
    let continents: [Cont] = [
        Cont(continent: "Asia",          population: 4_641_054_775),
        Cont(continent: "Africa",        population: 1_340_598_147),
        Cont(continent: "Europe",        population:   747_636_026),
        Cont(continent: "North America", population:   592_072_212),
        Cont(continent: "South America", population:   430_759_766),
        Cont(continent: "Australia",     population:    42_677_813),
        Cont(continent: "Antarctica",    population:             0)
    ];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let s: String = textField.text!;
        for cont: Cont in continents {
            if s == cont.continent {
                label.text = "The population of \(cont.continent) is \(cont.population)";
            } else {
                label.text = "\(s) is not valid. Please check spelling, try again.";
            }
        }
    }
    
}
