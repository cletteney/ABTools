//
//  UIViewController+Extensions.swift
//  ABTools
//
//  Created by Chase Letteney on 3/8/21.
//

import UIKit

//MARK: Alert presenters
public extension UIViewController {
    
   ///Displays an alert/option dialog with title and message values. An "OK" action will be added by default if there aren't any actions passed.
    func alert(title: String, message: String, style: UIAlertController.Style = .alert, actions: [UIAlertAction] = [], withCancel: Bool = false){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        alert(alertController: alertController, actions: actions, withCancel: withCancel)
    }
    
    ///Displays an alert/option dialog with AlertMessage. An "OK" action will be added by default if there aren't any actions passed.
    
    func alert(alertMessage: AlertMessage, style: UIAlertController.Style = .alert, actions: [UIAlertAction] = [], withCancel: Bool = false) {
        let alertController = UIAlertController(title: alertMessage.title, message: alertMessage.message, preferredStyle: style)
        alert(alertController: alertController, actions: actions, withCancel: withCancel)
    }
    
    private func alert(alertController: UIAlertController, actions: [UIAlertAction], withCancel: Bool) {
        var alertActions = actions
        if alertActions.isEmpty {
            alertActions.append(UIAlertAction(title: "OK", style: .default
                , handler: nil))
        }
        for action in alertActions{
            alertController.addAction(action)
        }

        if withCancel {
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alertController.addAction(cancelAction)
        }
        self.present(alertController, animated: true, completion: nil)
    }
}

