//
//  ViewController.swift
//  DiceGame
//
//  Created by 김하람 on 2023/04/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    // 배열에 데이터들 저장해두고 랜덤으로 뽑아서 쓴다.
    // UIImage라는 타입을 갖는 배열 변수
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        // 첫번째 이미지뷰의 이미지를 랜덤으로 변경해야 함.
        firstImageView.image = diceArray.randomElement()
        
        // 두번째 이미지뷰의 이미지를 랜덤으로 변경해야 함.
        secondImageView.image = diceArray.randomElement()
    }
}
