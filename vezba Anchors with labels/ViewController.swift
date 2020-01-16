//
//  ViewController.swift
//  vezba Anchors with labels
//
//  Created by Nikola on 8/17/19.
//  Copyright © 2019 Nikola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let redSquareContainerView: UIView = {
        let redImageView = UIView()
        redImageView.translatesAutoresizingMaskIntoConstraints = false
        //        redImageView.backgroundColor = UIColor.red
        redImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return redImageView
    }()
    
    let blueSquareContainerView: UIView = {
        let blueImageView = UIView()
        blueImageView.translatesAutoresizingMaskIntoConstraints = false
        //        blueImageView.backgroundColor = UIColor.blue
        blueImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return blueImageView
    }()
    
    let bluePawImageView: UIImageView = {
        let bluePawImage = UIImageView(image: #imageLiteral(resourceName: "blue_paw"))
        bluePawImage.contentMode = UIView.ContentMode.scaleAspectFit
        bluePawImage.translatesAutoresizingMaskIntoConstraints = false
        return bluePawImage
    }()
    
    let campingSiteImageView: UIImageView = {
        let campingSiteImage = UIImageView(image: #imageLiteral(resourceName: "campfire"))
        campingSiteImage.contentMode = UIView.ContentMode.scaleAspectFit
        campingSiteImage.translatesAutoresizingMaskIntoConstraints = false
        return campingSiteImage
    }()
    
    let textField: UITextField = {
        let textF = UITextField()
        textF.text = "Beware of bears while camping!!!"
        textF.font = UIFont.boldSystemFont(ofSize: 18)
        textF.textAlignment = .center
        textF.translatesAutoresizingMaskIntoConstraints = false
        return textF
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [redSquareContainerView, blueSquareContainerView, textField].forEach{view.addSubview($0)}
        
        setupLayout()
    }
    
    private func setupLayout() {
        
        //        redSquareContainerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        //        redSquareContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        //        redSquareContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        //        redSquareContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        
        redSquareContainerView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 50, left: 50, bottom: 0, right: 50), centerYAnchor: nil, centerXAnchor: nil)
        redSquareContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        
        //        blueSquareContainerView.topAnchor.constraint(equalTo: redSquareContainerView.bottomAnchor, constant: 100).isActive = true
        //        blueSquareContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        //        blueSquareContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        //        blueSquareContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        
        blueSquareContainerView.anchor(top: redSquareContainerView.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor,padding: .init(top: 100, left: 50, bottom: 0, right: 50), centerYAnchor: nil, centerXAnchor: nil)
        blueSquareContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        
        redSquareContainerView.addSubview(bluePawImageView)
        blueSquareContainerView.addSubview(campingSiteImageView)
        
        //        bluePawImageView.centerYAnchor.constraint(equalTo: redSquareContainerView.centerYAnchor).isActive = true
        //        bluePawImageView.centerXAnchor.constraint(equalTo: redSquareContainerView.centerXAnchor).isActive = true
        //        bluePawImageView.widthAnchor.constraint(equalTo: redSquareContainerView.widthAnchor).isActive = true
        //        bluePawImageView.heightAnchor.constraint(equalTo: redSquareContainerView.heightAnchor).isActive = true
        bluePawImageView.anchor(top: nil, leading: nil, bottom: nil, trailing: nil, centerYAnchor: redSquareContainerView.centerYAnchor, centerXAnchor: redSquareContainerView.centerXAnchor)
        bluePawImageView.widthAnchor.constraint(equalTo: redSquareContainerView.widthAnchor).isActive = true
        bluePawImageView.heightAnchor.constraint(equalTo: redSquareContainerView.heightAnchor).isActive = true
        
        //        campingSiteImageView.centerYAnchor.constraint(equalTo: blueSquareContainerViewcenterYAnchor).isActive = true
        //        campingSiteImageView.centerXAnchor.constraint(equalTo: blueSquareContainerView.centerXAnchor).isActive = true
        //        campingSiteImageView.widthAnchor.constraint(equalTo: blueSquareContainerView.widthAnchor).isActive = true
        //        campingSiteImageView.heightAnchor.constraint(equalTo: blueSquareContainerView.heightAnchor).isActive = true
        campingSiteImageView.anchor(top: nil, leading: nil, bottom: nil, trailing: nil, centerYAnchor: blueSquareContainerView.centerYAnchor, centerXAnchor: blueSquareContainerView.centerXAnchor)
        campingSiteImageView.widthAnchor.constraint(equalTo: blueSquareContainerView.widthAnchor).isActive = true
        campingSiteImageView.heightAnchor.constraint(equalTo: blueSquareContainerView.heightAnchor).isActive = true
        
        //        textField.topAnchor.constraint(equalTo: bluePawImageView.bottomAnchor, constant: 30).isActive = true
        //        textField.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        //        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        //        textField.heightAnchor.constraint(equalToConstant: 20).isActive = true
        textField.anchor(top: bluePawImageView.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 30, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: 20),centerYAnchor: nil, centerXAnchor: nil)
        
    }
}


extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero, centerYAnchor: NSLayoutYAxisAnchor?, centerXAnchor: NSLayoutXAxisAnchor?) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        
        if let centerYAnchor = centerYAnchor {
            centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        }
        
        if let centerXAnchor = centerXAnchor {
            centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        }
        
        if size.width != 0  {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
        
    }
    
    
}
