//
//  ViewController.swift
//  Test
//
//  Created by Philipp Schach on 27.12.20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    
    @IBOutlet weak var airplane: UIImageView!
    @IBOutlet weak var cloud1: UIImageView!
    
    let screenWidth = UIScreen.main.bounds.size.width
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loop()
    }
    
    
    @IBAction func moveSlider(_ sender: UISlider) {
        let currentValue :Float = sender.value
        
        airplane.center.x = CGFloat(currentValue) * screenWidth
        print("airplane: \(airplane.center.x) ; current: \(currentValue) ; screenWidth: \(screenWidth)")

//        DispatchQueue.main.async {
//            self.airplane.center.x = CGFloat(currentValue) * self.screenWidth
//            print("airplane: \(self.airplane.center.x) ; current: \(currentValue) ; screenWidth: \(self.screenWidth)")
//        }
    }
    
    func loop() {
        
        print("gameloop() starts ...")
        
        let startDate = Date()
        
        Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { (aTimer) in
                       
//            RunLoop.current.add(aTimer, forMode: .common)
//            aTimer.tolerance = 0.1
//
            DispatchQueue.main.async {
                self.cloud1.frame.origin.y += 1.0
                self.Label2.text = String(format: "%.1f", aTimer.fireDate.timeIntervalSince(startDate))
            }
            
            print("airplane: \(self.airplane.center.x) ")
            
        }
    }
}
