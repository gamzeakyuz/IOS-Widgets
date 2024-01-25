//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by Gamze Akyüz on 10.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var textFieldText: UITextField!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var `switchDegistir`: UISwitch!
    @IBOutlet weak var segment: UISegmentedControl!

    @IBOutlet weak var sliderDeger: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        sliderDeger.text = String(Int(slider.value))
        activity.isHidden = true
        
    }
    @IBAction func islemYap(_ sender: Any) {
        if let alinanVeri = textFieldText.text {
            labelText.text = alinanVeri
        }
    }
    @IBAction func uzgunButton(_ sender: Any) {
        imageView1.image = UIImage(named: "bad")
    }
    @IBAction func mutluButton(_ sender: Any) {
        imageView1.image = UIImage(named: "smile")
    }
    @IBAction func switchChange(_ sender: UISwitch) {
        
        if sender.isOn {
            imageView1.image = UIImage(named: "smile")
            print("Seçilen Mood : Mutlu")
        }else {
            imageView1.image = UIImage(named: "bad")
            print("Seçilen Mood : Uzgun")
        }
        
    }
    
    @IBAction func segmentDegistir(_ sender: UISegmentedControl) {
        
        let secilenIndeks = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndeks)
        print("Seçim : \(secilenKategori!)")
        
    }
    
    @IBAction func sliderDegisim(_ sender: UISlider) {
        sliderDeger.text = String(Int(slider.value))
    }
    
    
    @IBAction func degerGosterButton(_ sender: Any) {
        
        print("Slider Değer : \(slider.value)")
        print("Stepper Değer : \(stepper.value)")
        
    }
    
    @IBAction func stepperDegistir(_ sender: UIStepper) {
        
        stepperLabel.text = String(Int(stepper.value))

        
    }
    
    @IBAction func baslaButton(_ sender: Any) {
        activity.isHidden = false
        activity.startAnimating()
    }
    @IBAction func durButton(_ sender: Any) {
        activity.isHidden = true
        activity.stopAnimating()
    }
    
}

