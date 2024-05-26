//
//  ViewController.swift
//  Example-DismissModalwithRefreshMainView
//
//  Created by Mayur Vaity on 26/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Main view loaded.")
        // Do any additional setup after loading the view.
    }
    
    //go to Modal view button pressed 
    @IBAction func goToModalViewPressed(_ sender: UIButton) {
        print("go to Modal view...")
        performSegue(withIdentifier: "goToModalView", sender: self)
    }
    
    //to assign delegate to Modal VC, (using prepare method to complete any tasks right beofore performing segue)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch (segue.identifier, segue.destination) {
            // Check that the segue identifer matches and destination controller is a ModalViewController
        case ("goToModalView", let destination as ModalViewController):
            print("assigning delegate to Modal VC...")
            destination.delegate = self
        case _:
            break
        }
    }
    
}

//implemented delegate of Modal VC
extension ViewController: ModalViewControllerDelegate {
    func modalControllerWillDisapear(_ modal: ModalViewController) {
        //to do stuff while dismissing Modal view (in our example, reload data of this view)
        print("refreshing data for Main view here...")
    }
    
}
