//
//  Utilities.swift
//  UtilitiesDemo
//
//  Created by PanshulK on 26/06/17.
//  Copyright © 2017 Jony Singla. All rights reserved.
//

import UIKit

class Utilities: NSObject {
    
    
    class func showAlert(title:String, with message:String, style:UIAlertControllerStyle, onView _view:AnyObject){
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        _view.present(alert, animated: true, completion: nil)
    }
    // to get 12 hours fromat  time
    class func getConvertedTimeFromString(strTime:String)->String{
        var time =  String()
        let dateFormater = DateFormatter()
        
        dateFormater.dateFormat = "H:mm"
        if let inDate = dateFormater.date(from: strTime){
            dateFormater.dateFormat = "h:mm a"
            dateFormater.timeStyle = .short
            let outTime = dateFormater.string(from: inDate).lowercased()
            time = outTime
        }
        return time
    }
    //to make phone call
//    class func callNumber(phoneNumber:String) {
//        if let phoneCallURL:URL = URL(string: "tel://\(phoneNumber)") {
//            let application:UIApplication = UIApplication.shared
//            if (application.canOpenURL(phoneCallURL)) {
//                application.openURL(phoneCallURL);
//            }
//        }
//    }
//    
    class func isValidEmail(testStr:String) -> Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
}
