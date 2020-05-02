//
//  PuzzleViewController.swift
//  brainteasers
//
//  Created by Emma Ellis on 4/28/20.
//  Copyright © 2020 Emma Ellis. All rights reserved.
//

import UIKit

class PuzzleViewController: UIViewController {
    
    var teaser: Brainteaser!
    
    var startTime: Date!
    
    @IBOutlet weak var inPutGuess: UITextField!
    
    
    @IBOutlet weak var teaserNameLabel: UILabel!
    @IBOutlet weak var teaserQuestionLabel: UILabel!
    
//    @IBAction func creathint(_ sender: UIButton) {
//        let hint = UIAlertController(title:title,message:self.teaser.hint, preferredStyle: UIAlertController.Style.alert)
//        hint.addAction(UIAlertAction(title:"OK",style:UIAlertAction.Style.default, handler:{(action) in hint.dismiss(animated: true, completion: nil)
//            
//        }))
//    }
//    
    
    @IBAction func backToPuzzle(for sugue:UIStoryboardSegue){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTime = Date()
        teaserNameLabel.text = teaser.name
        teaserQuestionLabel.text = teaser.teaser
    }
    
    
    
    
    
//    TODO: facilitate game play --> look in brainteaserModel.swift
//    for functions for checking if the answer is correct
    
    @IBAction func checkanswer(_ sender: Any) {
        if case teaser.answer = inPutGuess.text{
            self.performSegue(withIdentifier: "goToWin", sender: self)
        }
        else{self.performSegue(withIdentifier: "goToLoss", sender: self)
            }
        
        }
    
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
        let elapsed = Date().timeIntervalSince(startTime)
        teaser.time = elapsed
    }

}
