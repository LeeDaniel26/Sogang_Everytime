//
//  FreeBoardViewController.swift
//  SogangUniv
//
//  Created by Daniel on 2023/01/26.
//

import UIKit

class FreeBoardViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet var boardLabel: [UILabel]!
    @IBOutlet weak var writeButtonView: UIView!
    @IBOutlet weak var searchTextField: UITextField!
    
    let messages: [Message] = [
        Message(title: "Too many works in class of Professor Jo", subtitle: "Anonymity"),
        Message(title: "Where is tennis class of Professor Kim?", subtitle: "Anonymity"),
        Message(title: "Is there a Indian restauraunt around Sogang?", subtitle: "Anonymity")
    ]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.register(UINib(nibName: "BoardCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        
        setLabel()
        setTextField()
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
    
    func setTextField() {
        searchTextField.attributedPlaceholder = NSAttributedString(
            string: "Placeholder Text",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
    }
}
    
extension FreeBoardViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! BoardCell
        cell.titleLabel.text = messages[indexPath.row].title
        cell.subtitleLabel.text = messages[indexPath.row].subtitle
        return cell
    }
    
}
