//
//  ModalViewController.swift
//  Example-DismissModalwithRefreshMainView
//
//  Created by Mayur Vaity on 26/05/24.
//

import UIKit

//protocol created so that its method can be used in main view
protocol ModalViewControllerDelegate: AnyObject {
    //this method can be used to do stuff from main view (in this case, when this view will get dismissed)
    func modalControllerWillDisapear(_ modal: ModalViewController)
}

class ModalViewController: UIViewController {
    
    //delegate of this VC
    var delegate: ModalViewControllerDelegate?
    
    //this method will perform actions, right before dismissing this view
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear - ModalViewController")
        super.viewWillDisappear(animated)
        //to call above created protocols method (the way it is implemented in Main view) in Main view 
        delegate?.modalControllerWillDisapear(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("In the Modal view...")
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func doneWithModalViewButtonTapped(_ sender: UIButton) {
        print("Done with the Modal view...")
        
        //to dismiss this Modal view
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
