//
//  ViewController.swift
//  FizzBuzz
//
//  Created by sTinGe Su on 2015/7/27.
//  Copyright (c) 2015年 sTinGe Su. All rights reserved.
//

import UIKit
import SwiftyDrop
import SnapKit
class ViewController: UIViewController {
  
  
  @IBAction func testButton(sender: AnyObject) {
    let defaultAction = UIAlertAction(title: "Default", style: .Default) {
      [unowned self] action -> Void in
      Drop.down("Default")
    }
    
    let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
    
    let controller = UIAlertController(title: "Samples", message: "Drop message", preferredStyle: .ActionSheet)
    
    [defaultAction, cancelAction].map {
      controller.addAction($0)
    }
    
    showAlert(controller, sourceView: sender as? UIView)
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
  }

  func showAlert(controller: UIAlertController, sourceView: UIView? = nil) {
    if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.Pad {
      if let sourceView = sourceView {
        let rect = sourceView.convertRect(sourceView.bounds, toView: view)
        controller.popoverPresentationController?.sourceView = view
        controller.popoverPresentationController?.sourceRect = rect
      }
    }
    presentViewController(controller, animated: true, completion: nil)
  }
}

