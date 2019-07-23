//
//  JobSeekerSignature.swift
//  PDFModule
//
//  Created by haider ali on 07/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//
//Image Receiver
import UIKit

protocol ImageSharing {
    func shareImage (image: UIImage)
}

class JobSeekerSignature: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, ImageSharing {
    
    var shareData: myDelegate?
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSignature" {
            let controller = segue.destination as! GetSignature
            controller.shareImage = self
        }
    }
    
    
    
    @IBAction func getSignaturePressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "goToSignature", sender: self)
    }
    @IBAction func loadPicturePressed(_ sender: Any) {
        
        photoLibraryLauncher()

        
    }
    
    

    @IBAction func saveInfoPressed(_ sender: Any) {
        
        
    }
    
    func shareImage(image: UIImage) {
        
        signatureImageView.image = image
        
    }
    
    
    
    
    @IBOutlet weak var pictureImageView: UIImageView!
    
    @IBOutlet weak var signatureImageView: UIImageView!
   
    
    
    
    
    
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
 
    
}

