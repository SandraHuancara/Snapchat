//
//  VerSnapViewController.swift
//  HuancaraSnapchat
//
//  Created by Sandra Huancara on 21/11/23.
//

import UIKit

class VerSnapViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var lblMensaje: UILabel!
    var snap = Snap ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMensaje.text = "Mensaje: " + snap.descrip

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
