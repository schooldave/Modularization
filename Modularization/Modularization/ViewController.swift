//
//  ViewController.swift
//  Modularization
//
//  Created by schooldave on 5/4/20.
//  Copyright © 2020 schooldave. All rights reserved.
//

import UIKit
import SCHCore
import MGJRouter_Swift
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        GlobalModuleRouter.loadPattern()
        //use property of SCHCoreSetting in SCHCore
        print(SCHCoreSettting.SECRET_KEY)
        // Do any additional setup after loading the view.
    }


    @IBAction func jumpToCoreController(_ sender: Any) {
        //open vc for SCHCore
        MGJRouter.open("sch://Core/PushVC",
                       ["text":"from Core",
                        "navigationVC": self.navigationController as Any] ,
                       nil)
    }
    
    @IBAction func jumpToServiceController(_ sender: Any) {
        //open vc for SCHService
        MGJRouter.open("sch://Service/PushVC",
                       ["navigationVC": self.navigationController as Any],
                       nil)
        
    }
    @IBAction func jumpToBaseController(_ sender: Any) {
        //open vc for SCHBase
        
        navigationController?.pushViewController(MGJRouter.object("sch://Base/PushVC", ["text": "from BaseUseObjectHandle"]) as! UIViewController, animated: true)
    }
}

