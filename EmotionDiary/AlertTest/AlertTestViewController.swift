//
//  AlertTestViewController.swift
//  EmotionDiary
//
//  Created by Seo Jae Hoon on 2022/07/20.
//

import UIKit

class AlertTestViewController: UIViewController {

    
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet weak var alertButton: UIButton!
    @IBOutlet weak var actionsheetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Alert 테스트!!!!"
        titleLabel.textColor = .white
        
        alertButton.setTitle("Alert", for: .normal)
        actionsheetButton.setTitle("Action Sheet", for: .normal)
    }
    
    @IBAction func alertButtonTapped(_ sender: UIButton) {
        showAlert()
        
    }
    
    @IBAction func actionsheetButtonTapped(_ sender: UIButton) {
        
        showActionsheet()
    }
    
    func showAlert() {
       
       
        
        //1. 흰색 바탕 만들어주기 + 글씨 넣기 : UIAlertController
        let alert = UIAlertController(title: "제목", message: "상세 메시지", preferredStyle: .alert)
        
        //2. 버튼 만들기
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "웹으로 열기", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사하기", style: .default, handler: nil)
        
        //3.위에 만든 것들을 합치기
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(cancel)
        alert.addAction(ok)
        
        //4. 화면에 보여주기
        present(alert, animated: true, completion: nil)
    }
    
    func showActionsheet() {
        
        let alert = UIAlertController(title: "제목", message: "상세 메시지", preferredStyle: .actionSheet)
        
        let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
        
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        let web = UIAlertAction(title: "웹으로 열기", style: .default, handler: nil)
        
        let copy = UIAlertAction(title: "복사하기", style: .default, handler: nil)
        
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(ok)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    
    
    
}
