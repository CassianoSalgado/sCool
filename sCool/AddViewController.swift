//
//  AddViewController.swift
//  sCool
//
//  Created by Cassiano Carradore Salgado on 28/04/22.
//

import UIKit

class AddViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var saveButton: SoftButton!
    
    @IBOutlet weak var salaryTextField: UITextField!
    
    @IBOutlet weak var enrollTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveButton.makeNeuromorphic(cornerRadius: saveButton.bounds.height/2, superView: self.view)
        
        setupImageView()
        imageView.layer.cornerRadius = 120
        imagePicker.delegate = self
        
    }
    
    func setupImageView() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(tappedImageView))
        
        imageView.addGestureRecognizer(tap)
        
    }
    
    @objc func tappedImageView() {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
        
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.contentMode = .scaleAspectFill
            imageView.image = pickedImage
        }
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func tappedSaveButton(_ sender: Any) {
        
        //let newColab = Colaborador(nome: nameTextField.text!, cargo: rolePopupButton., salário: salaryTextField.text, matrícula: enrollTextField.text)
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
