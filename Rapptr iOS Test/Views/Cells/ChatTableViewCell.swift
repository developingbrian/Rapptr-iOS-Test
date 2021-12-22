//
//  ChatTableViewCell.swift
//  iOSTest
//
//  Copyright © 2020 Rapptr Labs. All rights reserved.

import UIKit
import SDWebImage

class ChatTableViewCell: UITableViewCell {
    
    /**
     * =========================================================================================
     * INSTRUCTIONS
     * =========================================================================================
     * 1) Setup cell to match mockup
     *
     * 2) Include user's avatar image
     **/
    
    // MARK: - Outlets
    @IBOutlet weak var header: UILabel!
    @IBOutlet weak var bodyInsetView: UIView!
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Public
    func setCellData(message: Message) {
        header.text = message.username
        body.text = message.text
        bodyInsetView.translatesAutoresizingMaskIntoConstraints = false
        bodyInsetView.layer.cornerRadius = 8
        bodyInsetView.clipsToBounds = true
        bodyInsetView.layer.borderWidth = 1
        bodyInsetView.layer.borderColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1).cgColor
        if let avatar = message.avatarURL {
            let avatarURL = URL(string: avatar)!
            avatarImage.sd_setImage(with: avatarURL) { image, error, cache, url in
                self.avatarImage.image = image
            }
            avatarImage.layer.masksToBounds = false
            avatarImage.layer.cornerRadius = avatarImage.frame.height / 2
            avatarImage.clipsToBounds = true
        }
        
        
    }
}
