//
//  ViewController.swift
//  UIControls
//
//  Created by Craig Booker on 1/24/19.
//  Copyright © 2019 Arcadia Softworks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var textView: UITextView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }


  @IBAction func showAlert(_ sender: Any) {
    let alert = UIAlertController(title: "Alert Title", message: "Alert Message", preferredStyle: .alert)
    let action1 = UIAlertAction(title: "OK", style: .cancel) { (action) in
      print("button was presed")
    }
    alert.addAction(action1)
    let action2 = UIAlertAction(title: "Delete", style: .destructive) { (action) in
      print("button 2 was pressed")
    }
    alert.addAction(action2)
    present(alert, animated: true, completion: nil)
  }
  
  @IBAction func shareText(_ sender: Any) {
    let activityViewController = UIActivityViewController(activityItems: [textView.text], applicationActivities: nil)
    present(activityViewController, animated: true, completion: nil)
  }
  
}

