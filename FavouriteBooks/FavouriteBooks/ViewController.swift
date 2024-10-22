//
//  ViewController.swift
//  FavouriteBooks
//
//  Created by Apple on 22.10.2024.
//

import UIKit

struct Book {
    let title: String
    let image: UIImage
    let author: String
    let genre: String
}


class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let books: [Book] = [
            Book(title: "Martin Eden", image: UIImage(named: "martin")!, author: "Jack London", genre: "Novel"),
            Book(title: " The Great Gatsby", image: UIImage(named: "great")!, author: "F. Scott Fitzgerald", genre: "Novel"),
            Book(title: " In Search of Lost Time", image: UIImage(named: "search")!, author: "Marcel Proust", genre: "Novel"),
            Book(title: "The Catcher in the Rye", image: UIImage(named: "catcher")!, author: "J. D. Salinger", genre: "Novel"),
            Book(title: "Lolita", image: UIImage(named: "lolita")!, author: "Vladimir Nabokov", genre: "Novel"),
            Book(title: "Nineteen Eighty Four", image: UIImage(named: "four")!, author: "George Orwell", genre: "Dystopia"),
            Book(title: "Anna Karenina", image: UIImage(named: "anna")!, author: "Leo Tolstoy", genre: "Novel"),
            Book(title: "Wuthering Heights ", image: UIImage(named: "heights")!, author: "Emily Brontë", genre: "Novel"),
            Book(title: "Moby-Dick ", image: UIImage(named: "moby")!, author: "Herman Melville", genre: "Novel"),
            Book(title: "Pride and Prejudice ", image: UIImage(named: "pride")!, author: "Jane Austen", genre: "Novel"),
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
    

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        
        let book = books[indexPath.row]
        
        cell.configure( book.image, book.title, book.author, book.genre)
        return cell
    }
    
 
}

