//
//  ViewController.swift
//  EmotionDiary
//
//  Created by Seo Jae Hoon on 2022/07/11.
//

import UIKit

enum emotion : Int{
    case happy, love, like, embarrased, upset, sleepy, boring, depressed, sad
}


class ViewController: UIViewController {
    
    @IBOutlet var emoLabelCollection: [UILabel]!
    @IBOutlet var emoButtonCollection: [UIButton]!
        
    
    var emoName = ["행복해", "사랑해", "좋아해", "당황해", "속상해", "졸립해", "심심해", "우울해", "눈물해"]
    var emotionArray = [0,0,0,0,0,0,0,0,0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        designLabel(emoLabelCollection)
       
        for i in 0...8 {
            emoLabelCollection[i].text = resultLabelAppear(i)
            emoButtonCollection[i].tag = i
            emoLabelCollection[i].text = "\(UserDefaults.standard.integer(forKey: "emotion"))"
        }
        
        
        
        
        
        
        //let image = UIImage(named: "sesac-slime6")?.renderingMode(.alwaysOriginal)
//        emotionFirstLabel.text = setUserNickname()
//
//        view.backgroundColor = example().0
//        emoButtonCollection.randomElement()!.setImage(UIImage(named: example().2), for: .normal)
        
    }

    //버튼 아래 레이블 설정
    func designLabel(_ labelCollection: [UILabel]){
        
        for item in labelCollection {
            item.font = UIFont.boldSystemFont(ofSize: 16)
            item.textColor = .black
            item.textAlignment = .center
        }
        
    }
    
//    func example() -> (UIColor, String, String){
//        let color: [UIColor] = [.yellow , .red , .blue]
//        let image: [String] = ["sesac_slime6","sesac_slime7","sesac_slime8","sesac_slime5"]
//
//        return (color.randomElement()!, "고래밥", image.randomElement()!)
//    }
    
    
//    func setUserNickname() -> String {
//
//        let nickname = ["고래밥", "칙촉", "격투가"]
//        let select = nickname.randomElement()!
//
//        return "저는 \(select)입니다."
//
//    }
    
    func resultLabelAppear(_ num: Int) -> String {
        return emoName[num] + " \(emotionArray[num])"
    }
    
    // tap될때 값 저장하는 방법
    @IBAction func emoTapped(_ sender: UIButton) {
        
        var updateValue : [Int] = [UserDefaults.standard.integer(forKey: "emotion")]
        
        emotionArray[sender.tag] += 1
        
        emoLabelCollection[sender.tag].text = resultLabelAppear(sender.tag)
        
        for i in 0...sender.tag - 1{
            updateValue[i] = emotionArray[i]
            UserDefaults.standard.set(updateValue[i], forKey: "emotion")
            emoLabelCollection[i].text = resultLabelAppear(i)
        }
        
        
        //emoLabelCollection[sender.tag].text = resultLabelAppear(UserDefaults.standard.integer(forKey: "emotion"))
        
        
        
        //let currentValue = UserDefaults.standard.array(forKey: "emotion")
        
        //let updateValue = currentValue[] + 1
        
        //UserDefaults.standard.set(updateValue, forKey: "emotion")
        
        
        
        //showAlertController()
        
//        let emotion1 = sender.tag
        
//        switch emotion1 {
//        case emotion.happy.rawValue:
//            emoLabelCollection[emotion1].text = resultLabelAppear(emotion1)
//        case emotion.boring.rawValue:
//            emoLabelCollection[emotion1].text = resultLabelAppear(emotion1)
//        case emotion.depressed.rawValue:
//            emoLabelCollection[emotion1].text = resultLabelAppear(emotion1)
//        case emotion.embarrased.rawValue:
//            emoLabelCollection[emotion1].text = resultLabelAppear(emotion1)
//        case emotion.like.rawValue:
//            emoLabelCollection[emotion1].text = resultLabelAppear(emotion1)
//        case emotion.love.rawValue:
//            emoLabelCollection[emotion1].text = resultLabelAppear(emotion1)
//        case emotion.sad.rawValue:
//            emoLabelCollection[emotion1].text = resultLabelAppear(emotion1)
//        case emotion.sleepy.rawValue:
//            emoLabelCollection[emotion1].text = resultLabelAppear(emotion1)
//        case emotion.upset.rawValue:
//            emoLabelCollection[emotion1].text = resultLabelAppear(emotion1)
//        default :
//            print("잘못된 입력입니다.")
        
    }
    
    func showAlertController() {
        
        //1. 흰색 바탕 만들어주기 + 글씨 넣기 : UIAlertController
        let alert = UIAlertController(title: "타이틀", message: "여기는 메시지가 들어갑니다.", preferredStyle: .actionSheet)
        
        //2. 버튼 만들기 -> cancel style은 단 하나만 있어야 한다.
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "취소버튼입니다.", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "웹으로 열기", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사하기", style: .default, handler: nil)
        
        //3. 버튼이 떨어져있기 때문에 합치기
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(cancel)
        alert.addAction(ok)
        // -------- 형태는 다 만들어짐
        
        //4.띄워주기
        present(alert, animated: true, completion: nil)
    }
    

    
    /*
    todo
     2. bamin autolayout 수정
     */
    
    // 파일 지울때 Move to trash -> xcode 안에있는 asset을 삭제
    //              reference -> 다른 위치에 있는 파일과 연결을 끊음
    // 파일 추가할 때 added folders -> create group 복사 붙여넣기 같은
    //             reference -> 다른 위치에 있는 파일을 연결함
    
}



