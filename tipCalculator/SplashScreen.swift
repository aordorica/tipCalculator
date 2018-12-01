//
//  SplashScreen.swift
//  tipCalculator
//
//  Created by Alan Ordorica on 11/29/18.
//  Copyright © 2018 Alan Ordorica. All rights reserved.
//

import UIKit

class SplashScreen: UIViewController {

    @IBOutlet weak var blurEffect: UIVisualEffectView!
    @IBOutlet var startButton: UIView!
    var effect: UIBlurEffect!
    override func viewDidLoad() {
        super.viewDidLoad()

        startButton.layer.cornerRadius = 5
        animateIn()
        // Do any additional setup after loading the view.
    }
    
    func animateIn() {
        self.view.addSubview(startButton)
        startButton.center = self.view.center
        startButton.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        startButton.alpha = 0
        UIView.animate(withDuration: 0.4){
            self.blurEffect.effect = self.effect
            self.startButton.alpha = 1
            self.startButton.transform = CGAffineTransform.identity
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
