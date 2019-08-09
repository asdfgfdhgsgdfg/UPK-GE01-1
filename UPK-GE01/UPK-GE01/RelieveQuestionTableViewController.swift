//
//  RelieveQuestionTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/30.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit
let question2_A = UIButton.init(frame: CGRect(x: 50, y: 215, width: UIScreen.main.bounds.width - 50, height: 25))
let question2_B = UIButton.init(frame: CGRect(x: 50, y: 245, width: UIScreen.main.bounds.width - 50, height: 25))
let question2_C = UIButton.init(frame: CGRect(x: 50, y: 275, width: UIScreen.main.bounds.width - 50, height: 25))
let question2_D = UIButton.init(frame: CGRect(x: 50, y: 305, width: UIScreen.main.bounds.width - 50, height: 25))
let question2_E = UIButton.init(frame: CGRect(x: 50, y: 335, width: UIScreen.main.bounds.width - 50, height: 25))

let question4_A = UIButton.init(frame: CGRect(x: 10, y: 525, width: 40, height: 25))
let question4_B = UIButton.init(frame: CGRect(x: 60, y: 525, width: 40, height: 25))
let question4_C = UIButton.init(frame: CGRect(x: 110, y: 525, width: 40, height: 25))
let question4_D = UIButton.init(frame: CGRect(x: 160, y: 525, width: 50, height: 25))
let question4_E = UIButton.init(frame: CGRect(x: 220, y: 525, width: 60, height: 25))
let question4_F = UIButton.init(frame: CGRect(x: 290, y: 525, width: 60, height: 25))

let slider_level = UILabel.init(frame: CGRect(x: 0, y: 420, width: UIScreen.main.bounds.width, height: 20))
class RelieveQuestionTableViewController: UITableViewController {

    var position = "Thigh"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Relieve"
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        AddPositon(string: position)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func AddPositon(string: String){
        
        let label1 = UILabel.init(frame: CGRect(x: 0, y: 10, width: self.view.frame.width, height: 30))
        label1.text = string
        label1.textAlignment = .center
        self.view.addSubview(label1)
        
        let label2 = UILabel.init(frame: CGRect(x: 10, y: 40, width: self.view.frame.width, height: 50))
        label2.text = "Tell us about the pain you have experienced over the last two weeks"
        label2.textAlignment = .left
        label2.font = label2.font.withSize(15)
        label2.numberOfLines = 2
        self.view.addSubview(label2)
        
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
        
        return  self.view.frame.height
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        let Squestion1 = UILabel.init(frame: CGRect(x: 10, y: 100, width: self.view.frame.width, height: 50))
        Squestion1.text = "(1)About how many days in the past w weeks have you been in pain?"
        Squestion1.textAlignment = .left
        Squestion1.font = Squestion1.font.withSize(15)
        Squestion1.numberOfLines = 2
        cell.contentView.addSubview(Squestion1)
        let button_select = UIButton.init(frame: CGRect(x: 10, y: 155, width: self.view.frame.width - 20, height: 25))
        
        button_select.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        button_select.setTitle("0", for: .normal)
        button_select.addTarget(self, action: #selector(button_select2), for: .touchUpInside)
        cell.contentView.addSubview(button_select)
       
        
        
        
        let Squestion2 = UILabel.init(frame: CGRect(x: 10, y: 185, width: self.view.frame.width, height: 25))
        Squestion2.text = "(2)About how long have you had this pain?"
        Squestion2.textAlignment = .left
        Squestion2.numberOfLines = 2
        Squestion2.font = Squestion2.font.withSize(15)
        cell.contentView.addSubview(Squestion2)
        AddSelectButton(button: question2_A,string: " For the past few days")
        cell.contentView.addSubview(question2_A)
        AddSelectButton(button: question2_B,string: " For the past few weeks")
        cell.contentView.addSubview(question2_B)
        AddSelectButton(button: question2_C,string: " For the past 6 months")
        cell.contentView.addSubview(question2_C)
        AddSelectButton(button: question2_D,string: " For the past year ")
        cell.contentView.addSubview(question2_D)
        AddSelectButton(button: question2_E,string: " For a year and longer")
        cell.contentView.addSubview(question2_E)
        
        
        let Squestion3 = UILabel.init(frame: CGRect(x: 10, y: 375, width: self.view.frame.width, height: 40))
        Squestion3.text = "(3)On the days that you have been in pain over the last 2 weeks,what has been your usual level of pain?"
        Squestion3.textAlignment = .left
        Squestion3.numberOfLines = 2
        Squestion3.font = Squestion3.font.withSize(15)
        cell.contentView.addSubview(Squestion3)
        let slider_start = UILabel.init(frame: CGRect(x: 10, y: 455, width: 20, height: 20))
        slider_start.text = "0"
        slider_start.textColor = UIColor.green
        cell.contentView.addSubview(slider_start)
        let slider_end = UILabel.init(frame: CGRect(x: 345, y: 455, width: 20, height: 20))
        slider_end.text = "10"
        slider_end.textColor = UIColor.green
        cell.contentView.addSubview(slider_end)
        let slider = UISlider(frame: CGRect(x: 35, y: 455, width: 300, height: 10))
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.value = 0
        slider.minimumTrackTintColor = UIColor.green
        slider.maximumTrackTintColor = UIColor.gray
        slider.addTarget(self, action: #selector(SliderDidChange(_:)), for: .valueChanged)
        cell.contentView.addSubview(slider)
        slider_level.textColor = UIColor.green
        slider_level.textAlignment = .center
        slider_level.text = "No pain - 0"
        cell.contentView.addSubview(slider_level)
      
        
        let Squestion4 = UILabel.init(frame: CGRect(x: 10, y: 470, width: self.view.frame.width, height: 50))
        Squestion4.text = "(4)On average,how many hours has this usual pain lasted each day?"
        Squestion4.textAlignment = .left
        Squestion4.numberOfLines = 2
        Squestion4.font = Squestion4.font.withSize(15)
        cell.contentView.addSubview(Squestion4)
        AddSelectButton1(button: question4_A,string: " 1-2")
        cell.contentView.addSubview(question4_A)
        AddSelectButton1(button: question4_B,string: " 3-5")
        cell.contentView.addSubview(question4_B)
        AddSelectButton1(button: question4_C,string: " 6-8")
        cell.contentView.addSubview(question4_C)
        AddSelectButton1(button: question4_D,string: " 9-12")
        cell.contentView.addSubview(question4_D)
        AddSelectButton1(button: question4_E,string: " 12-18")
        cell.contentView.addSubview(question4_E)
        AddSelectButton1(button: question4_F,string: " 18-24")
        cell.contentView.addSubview(question4_F)
        
        let button_next = UIButton.init(frame: CGRect(x: 10, y: 560, width: self.view.frame.width - 20, height: 40))
        button_next.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        // button_next.setImage(UIImage(named: "pic"), for: .normal)
        button_next.setTitle("Next", for: .normal)
        button_next.addTarget(self, action: #selector(buttonAction_next), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_next)

        return cell
    }
    @objc private func buttonAction_next(button: UIButton) {
        
        if (question2_A.imageView?.image == UIImage(named: "pic")
            && question2_B.imageView?.image == UIImage(named: "pic") && question2_C.imageView?.image == UIImage(named: "pic") && question2_D.imageView?.image == UIImage(named: "pic") && question2_E.imageView?.image == UIImage(named: "pic")) ||  (question4_A.imageView?.image == UIImage(named: "pic") && question4_B.imageView?.image == UIImage(named: "pic") && question4_C.imageView?.image == UIImage(named: "pic") && question4_D.imageView?.image == UIImage(named: "pic") && question4_E.imageView?.image == UIImage(named: "pic")){
            
            let menu = UIAlertController(title: "", message: "Please fill in all questions", preferredStyle: .alert)
            let option1 = UIAlertAction(title: "CANCEL", style: .cancel, handler: nil)
            let option2 = UIAlertAction(title: "OK", style: .default, handler: nil)
            menu.addAction(option1)
            menu.addAction(option2)
            
            self.present(menu, animated: true, completion: nil)
            
        }
        else{
            let vc = SuggestedProgramsTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    @objc private func SliderDidChange(_ sender: UISlider){
        
        sender.value.round()
        //print(sender.value)
       
        slider_level.textColor = UIColor.green
        slider_level.textAlignment = .center
        switch sender.value {
        case 0.0:
            slider_level.text = "No pain - 0"
        case 1.0:
            slider_level.text = "Mild - 1"
        case 2.0:
            slider_level.text = "Mild - 2"
        case 3.0:
            slider_level.text = "Mild - 3"
        case 4.0:
            slider_level.text = "Moderate - 4"
        case 5.0:
            slider_level.text = "Moderate - 5"
        case 6.0:
            slider_level.text = "Severe - 6"
        case 7.0:
            slider_level.text = "Severe - 7"
        case 8.0:
            slider_level.text = "Very severe - 8"
        case 9.0:
            slider_level.text = "Very severe - 9"
        case 10.0:
            slider_level.text = "Worst pain possible - 10"
        default:
            slider_level.text = "No pain - 0"
        }
        self.view.addSubview(slider_level)
    }
    @objc private func button_select(button: UIButton) {
        
        // print("do nothing")
        switch button {
        
        case question2_A:
            question2_B.setImage(UIImage(named: "pic"), for: .normal)
            question2_C.setImage(UIImage(named: "pic"), for: .normal)
            question2_D.setImage(UIImage(named: "pic"), for: .normal)
            question2_E.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question2_B:
            question2_A.setImage(UIImage(named: "pic"), for: .normal)
            question2_C.setImage(UIImage(named: "pic"), for: .normal)
            question2_D.setImage(UIImage(named: "pic"), for: .normal)
            question2_E.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question2_C:
            question2_B.setImage(UIImage(named: "pic"), for: .normal)
            question2_A.setImage(UIImage(named: "pic"), for: .normal)
            question2_D.setImage(UIImage(named: "pic"), for: .normal)
            question2_E.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question2_D:
            question2_B.setImage(UIImage(named: "pic"), for: .normal)
            question2_C.setImage(UIImage(named: "pic"), for: .normal)
            question2_A.setImage(UIImage(named: "pic"), for: .normal)
            question2_E.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question2_E:
            question2_B.setImage(UIImage(named: "pic"), for: .normal)
            question2_C.setImage(UIImage(named: "pic"), for: .normal)
            question2_A.setImage(UIImage(named: "pic"), for: .normal)
            question2_D.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        
            
        default:
            break
            
            
        }
    }
    @objc private func button_select1(button: UIButton) {
        
        // print("do nothing")
        switch button {
            
        case question4_A:
            question4_B.backgroundColor = UIColor.white
            question4_C.backgroundColor = UIColor.white
            question4_D.backgroundColor = UIColor.white
            question4_E.backgroundColor = UIColor.white
            question4_F.backgroundColor = UIColor.white
            
            if button.backgroundColor == UIColor.white{
                button.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question4_B:
            question4_A.backgroundColor = UIColor.white
            question4_C.backgroundColor = UIColor.white
            question4_D.backgroundColor = UIColor.white
            question4_E.backgroundColor = UIColor.white
            question4_F.backgroundColor = UIColor.white
            
            if button.backgroundColor == UIColor.white{
                button.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question4_C:
            question4_B.backgroundColor = UIColor.white
            question4_A.backgroundColor = UIColor.white
            question4_D.backgroundColor = UIColor.white
            question4_E.backgroundColor = UIColor.white
            question4_F.backgroundColor = UIColor.white
            
            if button.backgroundColor == UIColor.white{
                button.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question4_D:
            question4_B.backgroundColor = UIColor.white
            question4_C.backgroundColor = UIColor.white
            question4_A.backgroundColor = UIColor.white
            question4_E.backgroundColor = UIColor.white
            question4_F.backgroundColor = UIColor.white
            
            if button.backgroundColor == UIColor.white{
                button.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question4_E:
            question4_B.backgroundColor = UIColor.white
            question4_C.backgroundColor = UIColor.white
            question4_D.backgroundColor = UIColor.white
            question4_A.backgroundColor = UIColor.white
            question4_F.backgroundColor = UIColor.white
            
            if button.backgroundColor == UIColor.white{
                button.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question4_F:
            question4_B.backgroundColor = UIColor.white
            question4_C.backgroundColor = UIColor.white
            question4_D.backgroundColor = UIColor.white
            question4_E.backgroundColor = UIColor.white
            question4_A.backgroundColor = UIColor.white
            
            if button.backgroundColor == UIColor.white{
                button.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
            
            
        default:
            break
            
            
        }
    }
    func AddSelectButton(button: UIButton, string: String){
        
        button.setImage(UIImage(named: "pic"), for: .normal)
        button.contentHorizontalAlignment = .left
        button.setTitle(string, for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(button_select), for: .touchUpInside)
    }
    func AddSelectButton1(button: UIButton, string: String){
        
        button.setTitle(string, for: .normal)
        button.contentHorizontalAlignment = .left
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.white
        //button_test.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        button.addTarget(self, action: #selector(button_select1), for: .touchUpInside)
    }
    @objc private func button_select2(button: UIButton) {
        
        let menu = UIAlertController(title: "", message: "", preferredStyle: .alert)
        let option0 = UIAlertAction(title: "0", style: .default, handler: nil)
        let option1 = UIAlertAction(title: "1", style: .default, handler: nil)
        let option2 = UIAlertAction(title: "2", style: .default, handler: nil)
        let option3 = UIAlertAction(title: "3", style: .default, handler: nil)
        let option4 = UIAlertAction(title: "4", style: .default, handler: nil)
        let option5 = UIAlertAction(title: "5", style: .default, handler: nil)
        let option6 = UIAlertAction(title: "6", style: .default, handler: nil)
        let option7 = UIAlertAction(title: "7", style: .default, handler: nil)
        let option8 = UIAlertAction(title: "8", style: .default, handler: nil)
        let option9 = UIAlertAction(title: "9", style: .default, handler: nil)
        let option10 = UIAlertAction(title: "10", style: .default, handler: nil)
        let option11 = UIAlertAction(title: "11", style: .default, handler: nil)
        let option12 = UIAlertAction(title: "12", style: .default, handler: nil)
        let option13 = UIAlertAction(title: "13", style: .default, handler: nil)
        let option14 = UIAlertAction(title: "14", style: .default, handler: nil)
        
        menu.addAction(option0)
        menu.addAction(option1)
        menu.addAction(option2)
        menu.addAction(option3)
        menu.addAction(option4)
        menu.addAction(option5)
        menu.addAction(option6)
        menu.addAction(option7)
        menu.addAction(option8)
        menu.addAction(option9)
        menu.addAction(option10)
        menu.addAction(option11)
        menu.addAction(option12)
        menu.addAction(option13)
        menu.addAction(option14)
        
        self.present(menu, animated: true, completion: nil)
        
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