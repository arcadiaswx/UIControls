//
//  ViewController.swift
//  UIControls
//
//  Created by Craig Booker on 1/24/19.
//  Copyright © 2019 Arcadia Softworks. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
  
  //let data:[[String]] = [["Item 1", "Item 2", "Item 3"],
   //                      ["Item A", "Item B", "Item C", "Item D"]]
  let data:[String] = ["Item 1", "Item 2", "Item 3"]
  let subs:[String] = ["sub 1", "sub 2", "sub 3"]
  
  
  //let titles:[String] = ["Numbers", "Letters"]
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //return data[section].count
    return data.count
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return data.count
  }
  
  /*
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return titles[section]
  }
  */
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    //cell.textLabel?.text = data[indexPath.section][indexPath.row]
    cell.textLabel?.text = data[indexPath.row]
    cell.detailTextLabel?.text = subs[indexPath.row]
    cell.imageView?.image = UIImage(named: "star")
    return cell
  }
  

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
