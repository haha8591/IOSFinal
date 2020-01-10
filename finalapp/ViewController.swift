//
//  ViewController.swift
//  draw
//
//  Created by User09 on 2020/1/5.
//  Copyright © 2020 ibob. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, AVCaptureMetadataOutputObjectsDelegate {
    
    //@IBOutlet weak var canvas:Canvas!
    @IBOutlet var canvas: Canvas!
    @IBAction func clear(_sender:UIButton){
        canvas.clearCanvas()
    }
    
    @IBAction func longpress(_ sender: Any) {
        canvas.clearCanvas()
    }
    
    @IBAction func save(_ sender: Any) {
       let renderer = UIGraphicsImageRenderer(size: canvas.bounds.size)
       let image = renderer.image(actions: { (context) in
          canvas.drawHierarchy(in: canvas.bounds, afterScreenUpdates: true)
       })
       let activityViewController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
       present(activityViewController, animated: true, completion: nil)
    }
    
    var imagePicker: UIImagePickerController!

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func takePhoto(_ sender: Any) {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        imageView.image = info[.originalImage] as? UIImage
    }
    
    
    
}

