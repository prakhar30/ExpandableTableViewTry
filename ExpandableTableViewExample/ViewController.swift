//
//  ViewController.swift
//  ExpandableTableViewExample
//
//  Created by Prakhar Tripathi on 06/03/18.
//  Copyright © 2018 Prakhar Tripathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    let imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.estimatedRowHeight = 50
        tableView.contentInset = UIEdgeInsetsMake(250, 0, 0, 0)
        tableView.backgroundColor = UIColor.darkGray
        
        imageView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 250)
        imageView.image = UIImage.init(named: "messi.jpg")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        view.addSubview(imageView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        switch indexPath.row % 2 {
        case 0:
            cell.cellLabel.text = "This is sample table view example."
            cell.contentView.backgroundColor = UIColor.darkGray
        default:
            cell.contentView.backgroundColor = UIColor.black
            cell.cellLabel.text = "This example demonstrates the use of expandable table headers just like the ones you have seen in many apps these days."
            cell.cellLabel.textColor = .white
        }
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = 300 - (scrollView.contentOffset.y + 300)
        let height = min(max(y, 60), 400)
        imageView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

