//
//  Utility.swift
//  Pods
//
//  Created by Kishan Nakum on 09/05/17.
//
//

import UIKit
import Foundation


public class Utility{
    
    public init(){
        
    }
    
    public func showAlert(title:String,message:String,viewController:UIViewController){
        let actionSheetController: UIAlertController = UIAlertController(title: title , message:message, preferredStyle: .alert)
            viewController.present(actionSheetController, animated: true, completion: nil)
        }
    
    
   public func getColor(r:CGFloat,g:CGFloat,b:CGFloat)->UIColor{
        let color = UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
        return color
    }

    }


extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
