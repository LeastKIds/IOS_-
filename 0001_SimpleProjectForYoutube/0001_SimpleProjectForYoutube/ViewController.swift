//
//  ViewController.swift
//  0001_SimpleProjectForYoutube
//
//  Created by 김진홍 on 2022/09/15.
//

import UIKit

class ViewController: UIViewController {
    
    var colorArr: [UIColor] = [.red, .blue, .yellow]
    var subView = UIView()
    var button = UIButton()
    var index = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let w = view.bounds.width/2
        subView.frame = CGRect(x: 0, y: 0, width: w, height: w)
        subView.center = CGPoint(x: w, y: w)
        subView .backgroundColor = .red
        view.addSubview(subView)
        
        button.setTitle("PUSH ME!", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(buttonAction(_:)), for: .touchDown)
        view.addSubview(button)
    }
    
    @objc func buttonAction(_ sender:UIButton) {
        index = (index + 1) % colorArr.count
        subView.backgroundColor = colorArr[index]
    }


}

