//
//  UAVProgressHUD.swift
//  HUD_D
//
//  Created by idea on 2018/1/10.
//  Copyright © 2018年 youlu. All rights reserved.
//

import Foundation
import SVProgressHUD

enum HUDType {
    case success
    case error
    case loading
    case info
    case progress
}

class LXFProgressHUD: NSObject {
    
    class func initLXFProgressHUD() {
        
        SVProgressHUD.setBackgroundColor(UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7))
        //设置文字颜色
        SVProgressHUD.setForegroundColor(UIColor.white)
        SVProgressHUD.setFont(UIFont.systemFont(ofSize: 14.0))
        SVProgressHUD.setDefaultMaskType(.none)
//        设置图片大小
        SVProgressHUD.setImageViewSize(CGSize(width: 36, height: 36))
        SVProgressHUD.setMinimumSize(CGSize(width: 100, height: 100))
        SVProgressHUD.setMinimumDismissTimeInterval(1.5)
    }
    
    class func showSuccess(_ status: String) {
        self.showLXFProgressHUD(type: .success, status: status)
    }
    class func showError(_ status: String) {
        self.showLXFProgressHUD(type: .error, status: status)
    }
    class func showLoading(_ status: String) {
        self.showLXFProgressHUD(type: .loading, status: status)
    }
    class func showInfo(_ status: String) {
        self.showLXFProgressHUD(type: .info, status: status)
    }
    class func showProgress(_ status: String, _ progress: CGFloat) {
        self.showLXFProgressHUD(type: .success, status: status, progress: progress)
    }
    class func dismissHUD(_ delay: TimeInterval = 0) {
        SVProgressHUD.dismiss(withDelay: delay)
    }
}

extension LXFProgressHUD {
    class func showLXFProgressHUD(type: HUDType, status: String, progress: CGFloat = 0) {
        switch type {
        case .success:
            SVProgressHUD.showSuccess(withStatus: status)
        case .error:
            SVProgressHUD.showError(withStatus: status)
        case .loading:
            SVProgressHUD.show(withStatus: status)
        case .info:
            SVProgressHUD.showInfo(withStatus: status)
        case .progress:
            SVProgressHUD.showProgress(Float(progress), status: status)
        }
    }
}
