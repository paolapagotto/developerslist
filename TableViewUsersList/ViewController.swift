//
//  ViewController.swift
//  TableViewUsersList
//
//  Created by Paola Pagotto on 28/09/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayUsers = [User]()
    
    let user1 = User(name: "Tim Berners-Lee", image: "user1.png")
    let user2 = User(name: "Bjarne Stroustrup", image: "user2.png")
    let user3 = User(name: "Linus Torvalds", image: "user3.png")
    let user4 = User(name: "Ken Thompson", image: "user4.png")
    let user5 = User(name: "Dennis Ritchie", image: "user5.png")
    
    
    
    @IBOutlet weak var tableViewList: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
        
        arrayUsers.append(user1)
        arrayUsers.append(user2)
        arrayUsers.append(user3)
        arrayUsers.append(user4)
        arrayUsers.append(user5)
    }
    
}


extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let user = arrayUsers[indexPath.row].name
        print(user)
    }
    

    
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        arrayUsers.remove(at: indexPath.row)
        tableViewList.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! MyCustomCell
        cell.setup(title: arrayUsers[indexPath.row].name, image: arrayUsers[indexPath.row].image)
        return cell
    }
    
   
}

