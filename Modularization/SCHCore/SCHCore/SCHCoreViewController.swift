//
//  SCHCoreViewController.swift
//  SCHCore
//
//  Created by schooldave on 5/6/20.
//  Copyright © 2020 schooldave. All rights reserved.
//

import UIKit


public class SCHCoreViewController: UIViewController {

    public var labelText: String?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
        title = "SCHCoreViewControllerTest"
        
        
        let lable = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        lable.text = labelText
        view.addSubview(lable)
        
        // Do any additional setup after loading the view.
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
