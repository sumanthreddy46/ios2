//
//  ViewController.swift
//  Button App
//
//  Created by MacStudent on 2018-11-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftbuttonpressed: UIButton!
    @IBOutlet weak var rightButtonPressed: UIButton!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var statusLabel: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var colorarray = [#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1) , #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1), #colorLiteral(red: 0, green: 0.9654460549, blue: 1, alpha: 1), #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), #colorLiteral(red: 1, green: 0.1732835472, blue: 0.192954272, alpha: 1), #colorLiteral(red: 0.1390425265, green: 0.1228544638, blue: 1, alpha: 1),#colorLiteral(red: 1, green: 0.9796735644, blue: 0, alpha: 1),#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1),#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1),#colorLiteral(red: 1, green: 0.6420031786, blue: 0.5091100931, alpha: 1), #colorLiteral(red: 1, green: 0.0754692629, blue: 1, alpha: 1), #colorLiteral(red: 0, green: 0.5884460807, blue: 1, alpha: 1), #colorLiteral(red: 0, green: 1, blue: 0.6131826639, alpha: 1), #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1),#colorLiteral(red: 0.7334222794, green: 0.9820812345, blue: 0.567940712, alpha: 1)]
    @IBAction func buttonPressed(_ sender: UIButton) {
        count = Int(arc4random_uniform(UInt32(colorarray.count)))
        if let title = sender.title(for: .normal) {
            let buttonText = "\(title) was pressed"
            self.statusLabel.text = buttonText
            if title == "Left"{
          //      counter = counter - 1
          //  if(counter == -1){
           //         counter = 9
            //    }
                self.statusLabel.backgroundColor = colorarray[count]
            }else{
             //   counter = counter + 1
              //  if(counter == 10){
             //       counter = 0
            //    }
                statusLabel.backgroundColor = colorarray[count]
            }
        }
        self.view.backgroundColor = colorarray[count]
        //self.statusLabel.text = "left button was pressed"
    }
    
}

