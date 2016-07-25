//
//  HomeController.swift
//  swfit_uikit_demo
//
//  Created by Enjoytouch on 16/7/18.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var naviItem: UINavigationItem!
    @IBOutlet weak var naviBar: UINavigationBar!
    @IBOutlet weak var mainView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        setNaviItem()
        setupSubView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setNaviItem(){
        
        naviBar.barTintColor = UIColor.blackColor()
        
        //定位按钮
        let localCityButton = UIButton(type: .Custom)
        localCityButton.frame = CGRect(x: kFitWidth(20), y: 20, width: kFitWidth(150), height: 44)
        localCityButton.addTarget(self, action: Selector(changeCityAction()), forControlEvents: .TouchUpInside)
        naviBar.addSubview(localCityButton)
        //图标
        let icon = UIImageView(frame: CGRect(x:0, y: 0, width: kFitWidth(40), height: kFitWidth(40)))
        icon.frame.origin.y = h(localCityButton)*0.5-h(icon)*0.5;
        icon.image = UIImage(named: "home_dingwei.png")
        localCityButton.addSubview(icon)
        //名称
        let cityName = UILabel(frame: CGRect(x: icon.right()+kFitWidth(3), y: 0, width: localCityButton.width()-icon.width()-kFitWidth(8), height:44))
        cityName.font = kFontSize(17)
        cityName.text = "上海"
        cityName.textColor = UIColor.whiteColor()
        localCityButton.addSubview(cityName)
        //搜索栏
        let searchButton = UIButton(type: .Custom)
        searchButton.frame = CGRect(x: localCityButton.right(), y: 27, width: kFitWidth(525), height: 30)
        searchButton.addTarget(searchButton, action: Selector(searchAction()), forControlEvents: .TouchUpInside)
        searchButton.backgroundColor = UIColor.whiteColor()
        searchButton.layer.cornerRadius = 15.0
        naviBar.addSubview(searchButton)
        //搜索图标
        let searchIcon = UIImageView(frame: CGRect(x: searchButton.width()*0.03, y: searchButton.height()*0.2, width: searchButton.height()*0.6, height: searchButton.height()*0.6))
        searchIcon.image = UIImage(named: "home_find.png")
        searchButton.addSubview(searchIcon)
        //标题
        let searchTitle = UILabel(frame: CGRect(x: searchIcon.right()+searchButton.width()*0.025, y: 0, width: searchButton.width()*0.95, height: searchButton.height()))
        searchTitle.font = kFontSize(16)
        searchTitle.text = "搜索品牌关键字"
//        searchTitle.textColor = UIColor.hexStringToColor("cbcbcb")
        searchButton.addSubview(searchTitle)
    }

    private func changeCityAction(){
        
        
    }
    private func searchAction() {
        
    }
    
    private func setupSubView(){
    
        
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
