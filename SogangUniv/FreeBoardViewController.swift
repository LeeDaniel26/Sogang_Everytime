//
//  FreeBoardViewController.swift
//  SogangUniv
//
//  Created by Daniel on 2023/01/26.
//

import UIKit

class FreeBoardViewController: UIViewController {


    @IBOutlet var boardLabel: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
    }
    
    @IBAction func gobackButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setLabel() {
        for i in 0..<boardLabel.count {
            boardLabel[0].backgroundColor = UIColor.white
            boardLabel[1].layer.masksToBounds = true
            boardLabel[i].layer.borderWidth = 1.2
            boardLabel[i].layer.borderColor = UIColor.black.cgColor
            boardLabel[0].layer.cornerRadius = 24
            boardLabel[1].layer.cornerRadius = 17
            boardLabel[i].font = UIFont.boldSystemFont(ofSize: 13)
        }
    }
}
