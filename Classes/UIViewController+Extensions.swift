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

//MARK: Loading Indicator
extension UIViewController {
    func showLoadingView() {
        DispatchQueue.main.async {
            UIApplication.shared.beginIgnoringInteractionEvents()
            let loadingView = UIView()
            loadingView.backgroundColor = UIColor.black.withAlphaComponent(0.25)
            loadingView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            loadingView.layer.cornerRadius = 10
            loadingView.center = self.view.center
            loadingView.tag = 4179
            self.view.addSubview(loadingView)
            
            let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
            activityIndicator.center = loadingView.center
            activityIndicator.tag = 3829
            self.view.addSubview(activityIndicator)
            
            activityIndicator.isHidden = false
            activityIndicator.startAnimating()
        }
        
    }
    func hideLoading() {
        DispatchQueue.main.async {
            UIApplication.shared.endIgnoringInteractionEvents()
            if let loadingView = self.view.viewWithTag(4179) {
                loadingView.removeFromSuperview()
            }
            if let activityIndicator = self.view.viewWithTag(3829) {
                activityIndicator.removeFromSuperview()
            }
        }
        
    }
    
    
}
