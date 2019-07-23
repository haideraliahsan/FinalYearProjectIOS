//
//  GetSignature.swift
//  PDFModule
//
//  Created by haider ali on 07/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class GetSignature: UIViewController {
    var shareImage: ImageSharing?

    @IBOutlet weak var canvasView: CanvasView!
 
    @IBAction func cancelBtnPressed(_ sender: Any) {
        canvasView.clearCanvas()
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func clearBtnPressed(_ sender: Any) {
        canvasView.clearCanvas()

    }
    @IBAction func saveBtnPressed(_ sender: Any) {
        

        self.dismiss(animated: true) {
            self.shareImage?.shareImage(image: UIImage(view: self.canvasView))

        }
        
    }
 
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
    }
    
    

}
