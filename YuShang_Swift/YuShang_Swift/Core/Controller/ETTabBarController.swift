//
//  ETTabBarController.swift
//  swfit_uikit_demo
//
//  Created by Enjoytouch on 16/7/18.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

import UIKit

class ETTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setupSubView(){
        
        let homeController = HomeController()
        
        addChildViewController(homeController,
                               title: "首页",
                               image: UIImage(named: "TabBar_home.png")!,
                               selectedImage: UIImage(named: "TabBar_home_sel.png")!)
        
        let inerestingController = InerestingController()
        
        addChildViewController(inerestingController,
                               title: "趣处",
                               image: UIImage(named: "TabBar_interesting.png")!,
                               selectedImage: UIImage(named: "TabBar_interesting_sel.png")!)
        
        let productController = ProductController()
        
        addChildViewController(productController,
                               title: "上品",
                               image: UIImage(named: "TabBar_product.png")!,
                               selectedImage: UIImage(named: "TabBar_product_sel.png")!)
        
        let mineController = MineController()
        
        addChildViewController(mineController,
                               title: "我的",
                               image: UIImage(named: "TabBar_mine.png")!,
                               selectedImage: UIImage(named: "TabBar_mine_sel.png")!)
        
    }

    private func addChildViewController(controller:UIViewController,title:String,image:UIImage,selectedImage:UIImage){
        
        controller.title = title;
        controller.tabBarItem.image = image;
        controller.tabBarItem.selectedImage = selectedImage;
        
        let navi = ETNavigationController(rootViewController: controller)
        navi.navigationBar.hidden = true
        addChildViewController(navi)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
