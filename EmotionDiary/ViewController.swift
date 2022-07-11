//
//  ViewController.swift
//  EmotionDiary
//
//  Created by Seo Jae Hoon on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var emoLabelCollection: [UILabel]!
    
    @IBOutlet var emoButtonCollection: [UIButton]!
    
    
    
    var emoName = ["행복해", "사랑해", "좋아해", "당황해", "속상해", "졸립해", "심심해", "우울해", "눈물해"]
    var emoCnt1 = 0, emoCnt2 = 0, emoCnt3 = 0, emoCnt4 = 0, emoCnt5 = 0, emoCnt6 = 0, emoCnt7 = 0, emoCnt8 = 0, emoCnt9 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        designLabel(emoLabelCollection)
        let emoCnt = 0
        for i in 0...8 {
            emoLabelCollection[i].text = emoName[i] + " \(emoCnt)"
        }
        
    }

    
    func designLabel(_ labelCollection: [UILabel]){
        
        for item in labelCollection {
            item.font = UIFont.boldSystemFont(ofSize: 16)
            item.textColor = .black
            item.textAlignment = .center
        }
        
    }
    
    
    

    @IBAction func emo1Tapped(_ sender: UIButton) {
        emoCnt1 += 1
        emoLabelCollection[0].text = emoName[0] + " \(emoCnt1)"
    }
    
    @IBAction func emo2Tapped(_ sender: UIButton) {
        emoCnt2 += 1
        emoLabelCollection[1].text = emoName[1] + " \(emoCnt2)"
    }
    @IBAction func emo3Tapped(_ sender: UIButton) {
        emoCnt3 += 1
        emoLabelCollection[2].text = emoName[2] + " \(emoCnt3)"
    }
    @IBAction func emo4Tapped(_ sender: UIButton) {
        emoCnt4 += 1
        emoLabelCollection[3].text = emoName[3] + " \(emoCnt4)"
    }
    @IBAction func emo5Tapped(_ sender: UIButton) {
        emoCnt5 += 1
        emoLabelCollection[4].text = emoName[4] + " \(emoCnt5)"
    }
    @IBAction func emo6Tapped(_ sender: UIButton) {
        emoCnt6 += 1
        emoLabelCollection[5].text = emoName[5] + " \(emoCnt6)"
    }
    @IBAction func emo7Tapped(_ sender: UIButton) {
        emoCnt7 += 1
        emoLabelCollection[6].text = emoName[6] + " \(emoCnt7)"
    }
    @IBAction func emo8Tapped(_ sender: UIButton) {
        emoCnt8 += 1
        emoLabelCollection[7].text = emoName[7] + " \(emoCnt8)"
    }
    @IBAction func emo9Tapped(_ sender: UIButton) {
        emoCnt9 += 1
        emoLabelCollection[8].text = emoName[8] + " \(emoCnt9)"
    }
    
    
    
    
    
    
    
    
    // action 으로 sender 마다 카운트 올려주는 알고리즘 구현해보기
//    var emoDic = [UILabel:String]()
//    var emoDic2 = [UIButton:UILabel]()
}

