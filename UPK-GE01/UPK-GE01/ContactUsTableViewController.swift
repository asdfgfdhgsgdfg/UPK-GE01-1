//
//  ContactUsTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/31.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class ContactUsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Contact us"
        self.tabBarController?.hidesBottomBarWhenPushed = true
        self.tabBarController?.tabBar.isHidden = true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return self.view.frame.height
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        let label1 = UILabel.init(frame: CGRect(x: 10, y: 10, width: self.view.frame.width - 100,height: 40))
        label1.text = "Texhnical issue"
        label1.textColor = UIColor.green
        cell.contentView.addSubview(label1)
        let button1 = UIButton.init(frame: CGRect(x: self.view.frame.width - 40, y: 20, width: 20, height: 20))
        button1.setImage(UIImage(named: "pic"), for: .normal)
        button1.addTarget(self, action: #selector(button1_action), for: .touchUpInside)
        cell.contentView.addSubview(button1)
        
        let label2 = UILabel.init(frame: CGRect(x: 10, y: 55, width: self.view.frame.width - 100,height: 40))
        label2.text = "Other issue"
        label2.textColor = UIColor.green
        cell.contentView.addSubview(label2)
        let button2 = UIButton.init(frame: CGRect(x: self.view.frame.width - 40, y: 70, width: 20, height: 20))
        button2.setImage(UIImage(named: "pic"), for: .normal)
        button2.addTarget(self, action: #selector(button2_action), for: .touchUpInside)
        cell.contentView.addSubview(button2)
        
        let label3 = UILabel.init(frame: CGRect(x: 10, y: 110, width: self.view.frame.width ,height: 30))
        label3.text = "Please write your comments"
        cell.contentView.addSubview(label3)
        
        let Label_comments = UITextField(frame: CGRect(x: 10, y: 150, width: self.view.frame.width - 20, height: 80))
        Label_comments.borderStyle = .line
        self.view.addSubview(Label_comments)
        
        let label4 = UILabel.init(frame: CGRect(x: 10, y: 240, width: self.view.frame.width ,height: 30))
        label4.text = "Please add picture or screen shot"
        cell.contentView.addSubview(label4)
        
        let Camera_button = UIButton.init(frame: CGRect(x: 10, y: 275, width: 80, height: 70))
        Camera_button.setImage(UIImage(named: "pic1"), for: .normal)
      //  Camera_button.addTarget(self, action: #selector(CameraButton_action), for: .touchUpInside)
        cell.contentView.addSubview(Camera_button)
        
        let label5 = UILabel.init(frame: CGRect(x: 10, y: 530, width: self.view.frame.width ,height: 20))
        label5.text = "email:service@umeheal.com"
        label5.font = label5.font.withSize(14)
        cell.contentView.addSubview(label5)
        
        
        let button_OK = UIButton.init(frame: CGRect(x: 10, y: 560, width: self.view.frame.width - 20, height: 40))
        button_OK.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        // button_next.setImage(UIImage(named: "pic"), for: .normal)
        button_OK.setTitle("OK", for: .normal)
        //button_next.addTarget(self, action: #selector(buttonAction_next), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_OK)
        
        return cell
    }
    
    @objc private func button1_action(button: UIButton) {
        
        print("do nothing")
        if button.imageView?.image == UIImage(named: "pic"){
            button.setImage(UIImage(named: "picHL"), for: .normal)
        }
        else{
            
            button.setImage(UIImage(named: "pic"), for: .normal)
        }
        
    }
    @objc private func button2_action(button: UIButton) {
        
        print("do nothing")
        if button.imageView?.image == UIImage(named: "pic"){
            button.setImage(UIImage(named: "picHL"), for: .normal)
        }
        else{
            
            button.setImage(UIImage(named: "pic"), for: .normal)
        }
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}