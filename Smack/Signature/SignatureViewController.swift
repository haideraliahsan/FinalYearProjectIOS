//
//  SignatureViewController.swift
//  Smack
//
//  Created by haider ali on 13/06/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class SignatureViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    let imagePicker = UIImagePickerController()

    func photoLibraryLauncher () {
        
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .photoLibrary
//        self.presentViewController(imagePickerController, animated: true, completion: { imageP in
//            
//        })
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let userPickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            
            guard let convertedCIImage = CIImage(image: userPickedImage) else {
                fatalError("cannot convet to CIImage")
                
            }
            
            pictureImageView.image = userPickedImage

            imagePicker.dismiss(animated: true, completion: nil)
        }
        
        
    }
 

    @IBAction func loadPictureBtnPressed(_ sender: Any) {
        photoLibraryLauncher()
    }
    
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var signatureView: UIView!
    @IBOutlet weak var signatureImageView: UIImageView!
    @IBOutlet weak var canvasView: CanvasView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func clearBtnPressed(_ sender: Any) {
        canvasView.clearCanvas()
    }
    @IBAction func getSignaturePressed(_ sender: Any) {
        signatureView.isHidden = false
        mainView.isHidden = true
    }
    @IBAction func cancelBtnPressed(_ sender: Any) {
        signatureView.isHidden = true
        mainView.isHidden = false

    }
    
    @IBAction func saveBtnPressed(_ sender: Any) {
        signatureImageView.image = UIImage(view: canvasView)
        signatureView.isHidden = true
        mainView.isHidden = false

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
