//
//  UploadPostController.swift
//  InstagramClone
//
//  Created by Rocky on 2023/03/08.
//

import UIKit

class UploadPostController: UIViewController {
    
    // MARK: - Properties
    
    private let photoImageVIew: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleToFill
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "MyAiPicture")
        return iv
    }()
    
    private let captionTextView: UITextView = {
        let tv = UITextView()
        return tv
    }()
    
    private let characterCountLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "0/100"
        return label
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Actions
    
    @objc func didTapCancel() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func didTapDone() {
        print("DEBUG: Share post here..")
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Upload Post"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(didTapCancel))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Share", style: .done, target: self, action: #selector(didTapDone))
        
        view.addSubview(photoImageVIew)
        photoImageVIew.setDimensions(height: 180, width: 180)
        photoImageVIew.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 8)
        photoImageVIew.centerX(inView: view)
        photoImageVIew.layer.cornerRadius = 10
        
        view.addSubview(captionTextView)
        captionTextView.anchor(top: photoImageVIew.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 16, paddingLeft: 12, paddingRight: 12, height: 64)
        
        view.addSubview(characterCountLabel)
        characterCountLabel.anchor(bottom: captionTextView.bottomAnchor, right: view.rightAnchor, paddingRight: 12)
    }
}
