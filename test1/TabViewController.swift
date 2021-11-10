//
//  testViewController.swift
//  test1
//
//  Created by Oleksandr Semeniuk on 05.11.2021.
//

import UIKit

class TabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarVC = UITabBarController()
        let emailVC = UINavigationController(rootViewController: EmailedViewController())
        let shareVC = UINavigationController(rootViewController: SharedViewController())
        let viewedVC = UINavigationController(rootViewController: ViewedViewController())
        let favoriteVC = UINavigationController(rootViewController: FavoriteViewController())
        tabBarVC.setViewControllers([emailVC,shareVC,viewedVC,favoriteVC], animated: false)
        
        let item1 = UITabBarItem()
        item1.title = "Most emailed"
        item1.image = UIImage(systemName: "mail")
        emailVC.tabBarItem = item1
        let item2 = UITabBarItem()
        item2.title = "Most shared"
        item2.image = UIImage(systemName: "bell")
        shareVC.tabBarItem = item2
        let item3 = UITabBarItem()
        item3.title = "Most viewed"
        item3.image = UIImage(systemName: "square")
        viewedVC.tabBarItem = item3
        let item4 = UITabBarItem()
        item4.title = "Favorites"
        item4.image = UIImage(systemName: "star")
        favoriteVC.tabBarItem = item4

        tabBarVC.tabBar.backgroundColor = .white
        
        addChild(tabBarVC)
        tabBarVC.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tabBarVC.view.frame = view.bounds
        view.addSubview(tabBarVC.view)
        tabBarVC.didMove(toParent: self)
    }
    

}
