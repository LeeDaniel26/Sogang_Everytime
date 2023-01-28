//
//  ViewController.swift
//  SogangUniv
//
//  Created by Daniel on 2023/01/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var noticeLabel: [UILabel]!
    @IBOutlet var button1Label: [UILabel]!
    @IBOutlet var button2Label: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNoticeLabel()
        setButton1Label()
        setButton2Label()
    }
    
    @IBAction func boardButtonPressed(_ sender: UIButton) {
        if sender.tag == 2 {
            self.performSegue(withIdentifier: "goToFreeBoard", sender: self)
        }
    }
    
    @IBAction func websiteButtonPressed(_ sender: UIButton) {
        if sender.tag == 0 {
            UIApplication.shared.open (URL(string: "https://www.sogang.ac.kr")!)
        }
        if sender.tag == 2 {
            UIApplication.shared.open(URL(string: "https://saint.sogang.ac.kr")!)
        }
    }
    
    func setNoticeLabel() {
        for i in 0..<noticeLabel.count {
            noticeLabel[i].backgroundColor = UIColor.white
            noticeLabel[i].layer.borderWidth = 1.2
            noticeLabel[i].layer.borderColor = UIColor.black.cgColor
            noticeLabel[i].layer.cornerRadius = 22
        }
    }
    
    func setButton1Label() {
        for i in 0..<button1Label.count {
            button1Label[i].font = UIFont.boldSystemFont(ofSize: 8)
        }
    }
    
    func setButton2Label() {
        for i in 0..<button2Label.count {
            button2Label[i].backgroundColor = UIColor.white
            button2Label[i].layer.borderWidth = 1.2
            button2Label[i].layer.borderColor = UIColor.black.cgColor
            button2Label[i].layer.cornerRadius = 24
            button2Label[i].font = UIFont.boldSystemFont(ofSize: 13)
        }
    }
}

