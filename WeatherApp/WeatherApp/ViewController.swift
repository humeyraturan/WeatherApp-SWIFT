//
//  ViewController.swift
//  WeatherApp
//
//  Created by Hümeyra Turan on 2.08.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.cornerRadius = 6
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        textField.text = ""
    }

    @IBAction func button(_ sender: UIButton) {
        
        
        
        func thread () {}
    
   
        let city = textField.text ?? ""
        
        if city.isEmpty{
            
            let alert = UIAlertController(title: "UYARI!", message: "Lütfen şehir adı giriniz.", preferredStyle: .alert)
            
            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alert.addAction(cancelButton)
            
            self.present(alert, animated: true, completion: nil)
        }else {
            let vc = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
            
            vc.city = city
            
            self.show(vc, sender: nil)
        }
    }
    
}

