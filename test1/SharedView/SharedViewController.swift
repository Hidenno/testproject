//
//  SecondViewController.swift
//  test1
//
//  Created by Oleksandr Semeniuk on 05.11.2021.
//

import UIKit

class SharedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    var myTableview = UITableView()
    let indentifire = "My cell"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemYellow
        navigationController?.delegate = (UITabBarController() as? UINavigationControllerDelegate)
        
         createTable()
    }
        
    
    func createTable(){
            self.myTableview = UITableView(frame: view.bounds, style: .plain)
            self.myTableview.delegate = self
            self.myTableview.dataSource = self
            myTableview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            
            view.addSubview(myTableview)
            myTableview.register(UITableViewCell.self, forCellReuseIdentifier: indentifire)
        }
    
    let array = 20
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: indentifire, for: indexPath)
        cell.backgroundColor = UIColor.systemYellow
        return cell
    }
    
      func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         navigationController?.pushViewController(NewsViewController(), animated: true)
    }

}

