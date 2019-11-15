//
//  ExistProjectViewController.swift
//  INS-UP
//
//  Created by 김성은 on 16/11/2019.
//  Copyright © 2019 Cho. All rights reserved.
//

import UIKit

class ExistProjectViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var isExistLabel: UILabel!
    @IBOutlet weak var projectLabel: UILabel!
    
    @IBOutlet weak var radio1Label: UILabel!
    @IBOutlet weak var radio2Label: UILabel!
    @IBOutlet weak var radio3Label: UILabel!
    
    @IBOutlet weak var radio1: UIButton!
    @IBOutlet weak var radio2: UIButton!
    @IBOutlet weak var radio3: UIButton!
    var radioArr: [UIButton] = []
    
    @IBOutlet weak var nextButton: UIButton!
    @IBAction func nextButtonClicked(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "WorkInfoViewController") as? WorkInfoViewController else { return }
        self.navigationController?.show(vc, sender: nil)
    }
    
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLabel.font = UIFont.MGothic(type: .m, size: 16)
        isExistLabel.font = UIFont.MGothic(type: .r, size: 20)
        projectLabel.font = UIFont.MGothic(type: .sb, size: 14)
        radio1Label.font = UIFont.MGothic(type: .r, size: 16)
        radio2Label.font = UIFont.MGothic(type: .r, size: 16)
        radio3Label.font = UIFont.MGothic(type: .r, size: 16)

        radioArr.append(radio1)
        radioArr.append(radio2)
        radioArr.append(radio3)
        
        for i in radioArr {
            i.setImage(UIImage.init(named: "ic_reveal"), for: .normal)
            i.setImage(UIImage.init(named: "ic_select"), for: .selected)
            i.isSelected = false
            i.showsTouchWhenHighlighted = true
        }
        
        nextButton.layer.cornerRadius = 22
        nextButton.titleLabel?.font = UIFont.MGothic(type: .m, size: 14)
    }
    
    @IBAction func radioClicked(_ sender: UIButton) {
        for i in radioArr {
            i.isSelected = false
        }
        sender.isSelected = true
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
