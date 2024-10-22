//
//  TableViewCell.swift
//  FavouriteBooks
//
//  Created by Apple on 22.10.2024.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let identifier = "myCell"
    
    
    @IBOutlet weak var bookImage: UIImageView!
    
    
    
    @IBOutlet weak var bookName: UILabel!
    
    
    @IBOutlet weak var bookAuthor: UILabel!
    
    
    
    @IBOutlet weak var bookGenre: UILabel!
    
    static func nib() -> UINib {
        return UINib(nibName: "TableViewCell", bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    

    func configure(_ image: UIImage, _ title: String, _ author: String, _ genre: String) {
            bookImage.image = image
            bookName.text = title
            bookAuthor.text = author
            bookGenre.text = genre
        }
}
