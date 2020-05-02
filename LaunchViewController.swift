//
//  LaunchViewController.swift
//  brainteasers
//
//  Created by Zijing Liu on 5/2/20.
//  Copyright © 2020 Emma Ellis. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    

        // Do any additional setup after loading the view.
    }
    
    
    private func launchAnimation() {
        
        let vc = UIStoryboard(name: "LaunchScreen", bundle: nil)
             .instantiateViewController(withIdentifier: "launch")
        let launchview = vc.view!
        let delegate = UIApplication.shared.delegate
        delegate?.window!!.addSubview(launchview)
        
        
        
        UIView.animate(withDuration: 2, delay: 0.5, options: .beginFromCurrentState, animations: {
             let scaleTransform = CGAffineTransform(scaleX: 20, y: 20)
            launchview.transform = scaleTransform
        }){ (finished) in
            launchview.removeFromSuperview()
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
