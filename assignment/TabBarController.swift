//
//  TabBarController.swift
//  assignment
//
//  Created by Turgay Tırnavalı on 21.02.2021.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let services = UINavigationController(rootViewController: ViewController())
        services.tabBarItem.title = "FirstTab"
        
        let jobs = UINavigationController(rootViewController: ViewController())
        jobs.tabBarItem.title = "SecondTab"
        
        viewControllers = [services, jobs]
        
        tabBar.barTintColor = .white
        tabBar.unselectedItemTintColor = .lightGray
        tabBar.tintColor = UIColor(red: 133/255.0, green: 133/255.0, blue: 133/255.0, alpha: 1.0)
        tabBar.layer.borderColor = UIColor.darkGray.cgColor
        
        
        let images = ["firstTab", "secondTab"]
        let selectedImages = ["selectedFirstTab", "selectedSecondTab"]
        for (index, tabItem) in tabBar.items!.enumerated() {
            tabItem.image = UIImage(named: images[index])?.withRenderingMode(.alwaysTemplate)
            tabItem.selectedImage = UIImage(named: selectedImages[index])?.withRenderingMode(.alwaysTemplate)
            tabItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
        selectedIndex = 0
        
    }
}
