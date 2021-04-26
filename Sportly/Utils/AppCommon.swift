//
//  AppCommon.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import Foundation
import UIKit
import SwiftMessages
import SystemConfiguration



class AppCommon: NSObject {
    
    static let shared = AppCommon()
    
    let imagetoAnimate = UIImageView(image:#imageLiteral(resourceName: "logo"))
  
    func showSwiftMessage(title: String = "", message: String = "", theme: Theme = .error) {
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(theme)
        view.configureDropShadow()
        view.button?.isHidden = true
        let iconText = ["🤔", "😳", "🙄", "😶"].randomElement()!
        view.configureContent(title: title, body: message)
        view.layoutMarginAdditions = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        (view.backgroundView as? CornerRoundingView)?.cornerRadius = 10
        SwiftMessages.show(view: view)
        
    }
    
    func showSportlyLoadingLogo(_ viewController: UIViewController) {
        viewController.view.addSubview(imagetoAnimate)
            imagetoAnimate.translatesAutoresizingMaskIntoConstraints = false
            let horizontalConstraint = NSLayoutConstraint(item: imagetoAnimate, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: viewController.view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
            let verticalConstraint = NSLayoutConstraint(item: imagetoAnimate, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: viewController.view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0)
            let widthConstraint = NSLayoutConstraint(item: imagetoAnimate, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
            let heightConstraint = NSLayoutConstraint(item: imagetoAnimate, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
            NSLayoutConstraint.activate([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
            let rotationAction = CABasicAnimation(keyPath: "transform.rotation")
            rotationAction.fromValue = 0
            rotationAction.toValue = Double.pi*2
            rotationAction.duration = 1
            rotationAction.repeatCount = Float.infinity
            imagetoAnimate.layer.add(rotationAction, forKey: "rotate")
    }
    
    func hideSportlyLoadingLogo() {
        imagetoAnimate.removeFromSuperview()
    }
    func checkConnectivity() -> Bool {
        if currentReachabilityStatus != .notReachable {
            return true
        } else {

            showSwiftMessage(title: "Error", message: "Please Check Your Internet Connection", theme: .error)
            return false
        }
    }
    
    func alertWithAction(_ Message:String?,Title:String?,BtnOk:String?,Context:AnyObject ,Actions:@escaping ()->Void?){
        let WrongAlert=UIAlertController(title: Title, message: Message, preferredStyle: UIAlertController.Style.alert)
        WrongAlert.addAction(UIAlertAction(title: BtnOk, style: UIAlertAction.Style.default, handler: { Action in
            Actions()
        }))
        Context.present(WrongAlert, animated: true, completion: nil)
    }
    
    func hideNavigationBar(){
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        // Sets shadow (line below the bar) to a blank image
        UINavigationBar.appearance().shadowImage = UIImage()
        // Sets the translucent background color
        UINavigationBar.appearance().backgroundColor = .clear
        // Set translucent. (Default value is already true, so this can be removed if desired.)
        UINavigationBar.appearance().isTranslucent = true
        UINavigationBar.appearance().tintColor = .white
    }
    enum ReachabilityStatus {
        case notReachable
        case reachableViaWWAN
        case reachableViaWiFi
    }

    var currentReachabilityStatus: ReachabilityStatus {
        
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        guard let defaultRouteReachability = withUnsafePointer(to: &zeroAddress, {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
                SCNetworkReachabilityCreateWithAddress(nil, $0)
            }
        }) else {
            return .notReachable
        }
        
        var flags: SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) {
            return .notReachable
        }
        
        if flags.contains(.reachable) == false {
            // The target host is not reachable.
            return .notReachable
        } else if flags.contains(.isWWAN) == true {
            // WWAN connections are OK if the calling application is using the CFNetwork APIs.
            return .reachableViaWWAN
        } else if flags.contains(.connectionRequired) == false {
            // If the target host is reachable and no connection is required then we'll assume that you're on Wi-Fi...
            return .reachableViaWiFi
        } else if (flags.contains(.connectionOnDemand) == true || flags.contains(.connectionOnTraffic) == true) && flags.contains(.interventionRequired) == false {
            // The connection is on-demand (or on-traffic) if the calling application is using the CFSocketStream or higher APIs and no [user] intervention is needed
            return .reachableViaWiFi
        } else {
            return .notReachable
        }
    }
    
}
extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    func circular() {
        self.layer.cornerRadius = self.frame.height/2
    }
    
    func collectionCellLayout(){
        self.layer.cornerRadius = 20
        self.layer.borderWidth = 0.5
        self.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }
    
}
