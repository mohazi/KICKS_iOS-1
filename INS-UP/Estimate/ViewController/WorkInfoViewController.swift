//
//  WorkInfoViewController.swift
//  INS-UP
//
//  Created by 김성은 on 16/11/2019.
//  Copyright © 2019 Cho. All rights reserved.
//

import UIKit

class WorkInfoViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var workLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var x1Label: UILabel!
    @IBOutlet weak var x2Label: UILabel!
    @IBOutlet weak var gaeLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    
    @IBOutlet weak var workTextField: UITextField!
    @IBOutlet weak var garoTextfield: UITextField!
    @IBOutlet weak var seroTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var quantityTextField: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBAction func nextButtonClicked(_ sender: Any) {
        
    }
    
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLabel.font = UIFont.MGothic(type: .m, size: 16)
        infoLabel.font = UIFont.MGothic(type: .r, size: 20)
        workLabel.font = UIFont.MGothic(type: .sb, size: 14)
        sizeLabel.font = UIFont.MGothic(type: .sb, size: 14)
        quantityLabel.font = UIFont.MGothic(type: .sb, size: 14)
        x1Label.font = UIFont.MGothic(type: .r, size: 20)
        x2Label.font = UIFont.MGothic(type: .r, size: 20)
        gaeLabel.font = UIFont.MGothic(type: .r, size: 16)
        
        workTextField.font = UIFont.MGothic(type: .m, size: 16)
        garoTextfield.font = UIFont.MGothic(type: .m, size: 16)
        seroTextField.font = UIFont.MGothic(type: .m, size: 16)
        heightTextField.font = UIFont.MGothic(type: .m, size: 16)
        quantityTextField.font = UIFont.MGothic(type: .m, size: 16)
        
        nextButton.layer.cornerRadius = 22
        nextButton.titleLabel?.font = UIFont.MGothic(type: .m, size: 14)
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
