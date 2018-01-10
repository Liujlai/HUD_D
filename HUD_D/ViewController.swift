//
//  ViewController.swift
//  HUD_D
//
//  Created by idea on 2018/1/10.
//  Copyright © 2018年 youlu. All rights reserved.
//

import UIKit
import Cupcake

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         LXFProgressHUD.initLXFProgressHUD()
            setupUI()
    }
    func setupUI(){
        self.view.bg("#DDA0DD")
        let style = Styles.bg("#48D1CC").border(1).radius(-1).pin(200,50).align(.center).color("white").font("20")
        let lab = Label.str("成功").styles(style).onClick { (_) in
            LXFProgressHUD.showSuccess("加载成功、、、")
        }
        let lab1 = Label.str("失败").styles(style).onClick {_ in
            LXFProgressHUD.showError("加载失败、、、")
        }
        let lab3 = Label.str("等待").styles(style).onClick {_ in
            LXFProgressHUD.showLoading("等待、、、")
        }
        let lab4 = Label.str("结束").styles(style).onClick {_ in
            LXFProgressHUD.dismissHUD()
        }
        let lab5 = Label.str("中断").styles(style).onClick {_ in
            LXFProgressHUD.dismissHUD(3)
        }
        let lab6 = Label.str("消息").styles(style).onClick {_ in
            LXFProgressHUD.showInfo("消息、、、//设置颜色//设置颜色//设置颜色//设置颜色//设置颜色")
        }
        VStack(lab,lab1,lab3,lab4,lab5,lab6).gap(50).embedIn(view,100,80,nil)
//        self.view.addSubviews(lab,lab1,lab3,lab4,lab5,lab6)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

