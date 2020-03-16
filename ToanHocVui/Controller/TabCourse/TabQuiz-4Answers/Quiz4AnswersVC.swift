//
//  Quiz4AnswersVC.swift
//  ToanHocVui
//
//  Created by Trung iOS on 3/16/20.
//  Copyright © 2020 Fighting. All rights reserved.
//

import UIKit

class Quiz4AnswersVC: BaseViewController {
    
    @IBOutlet weak var viewQ1: UIView!
    @IBOutlet weak var viewQ2: UIView!
    @IBOutlet weak var viewQ3: UIView!
    @IBOutlet weak var viewQ4: UIView!
    @IBOutlet weak var viewQ5: UIView!
    @IBOutlet weak var viewQ6: UIView!
    
    @IBOutlet weak var lblQ1: UILabel!
    @IBOutlet weak var lblQ2: UILabel!
    @IBOutlet weak var lblQ3: UILabel!
    @IBOutlet weak var lblQ4: UILabel!
    @IBOutlet weak var lblQ5: UILabel!
    @IBOutlet weak var lblQ6: UILabel!
    
    @IBOutlet weak var lblQuestionTitle: UILabel!
    @IBOutlet weak var lblQuestionContent: UILabel!
    
    @IBOutlet weak var viewA: UIView!
    @IBOutlet weak var viewB: UIView!
    @IBOutlet weak var viewC: UIView!
    @IBOutlet weak var viewD: UIView!
    
    @IBOutlet weak var lblA: UILabel!
    @IBOutlet weak var lblB: UILabel!
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblD: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView() {
        let views1: [UIView] = [viewQ1, viewQ2, viewQ3, viewQ4, viewQ5, viewQ6]
        addShadow(views: views1, radius: viewQ1.frame.height / 2)
        
        let views2: [UIView] = [viewA, viewB, viewC, viewD]
        roundCorner(views: views2, radius: 10)
        addShadow(views: views2)
        
        let tapGes1 = UITapGestureRecognizer(target: self, action: #selector(tapViewA))
        viewA.addGestureRecognizer(tapGes1)
        
        let tapGes2 = UITapGestureRecognizer(target: self, action: #selector(tapViewB))
        viewB.addGestureRecognizer(tapGes2)

        let tapGes3 = UITapGestureRecognizer(target: self, action: #selector(tapViewC))
        viewC.addGestureRecognizer(tapGes3)
        
        let tapGes4 = UITapGestureRecognizer(target: self, action: #selector(tapViewD))
        viewD.addGestureRecognizer(tapGes4)
    }
    
    @objc func tapViewA() {
        UIView.animate(withDuration: 0.3) {
            self.viewA.alpha = 0.3
            UIView.animate(withDuration: 0.3) {
                self.viewA.alpha = 1
            }
        }
    }
    
    @objc func tapViewB() {
        UIView.animate(withDuration: 0.5) {
            self.viewB.alpha = 0.3
            UIView.animate(withDuration: 0.5) {
                self.viewB.alpha = 1
            }
        }
    }
    
    @objc func tapViewC() {
        UIView.animate(withDuration: 0.5) {
            self.viewC.alpha = 0.3
            UIView.animate(withDuration: 0.5) {
                self.viewC.alpha = 1
            }
        }
    }
    
    @objc func tapViewD() {
        UIView.animate(withDuration: 0.5) {
            self.viewD.alpha = 0.3
            UIView.animate(withDuration: 0.5) {
                self.viewD.alpha = 1
            }
        }
    }
}
