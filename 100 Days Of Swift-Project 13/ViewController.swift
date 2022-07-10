//
//  ViewController.swift
//  100 Days Of Swift-Project 13
//
//  Created by Arda Büyükhatipoğlu on 10.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var slider: UISlider!
    var currentImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Photo Editor"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(importPicture))
    }

    @objc func importPicture() {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker,animated: true)
    }
    
    @IBAction func changeFilter(_ sender: UIButton) {
    }
    
    @IBAction func Save(_ sender: UIButton) {
    }
    
    @IBAction func intensityChanged(_ sender: UISlider) {
        
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }
        dismiss(animated: true)
        currentImage = image
    }
}

