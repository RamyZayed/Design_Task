//
//  ViewController.swift
//  NSLayout
//
//  Created by Mobile Team on 14/02/2022.
//

import UIKit


class ViewController: UIViewController {
    
    let PasswordTextField = TextFieldWithPadding()
    let EmailTextField = TextFieldWithPadding()

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let upperImage = UIImageView(image: UIImage(named: "account.png"))
        upperImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(upperImage)
       // upperImage.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        upperImage.topAnchor.constraint(equalTo: view.topAnchor , constant: 100).isActive = true
        upperImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        upperImage.widthAnchor.constraint(equalToConstant: 200).isActive = true
        upperImage.heightAnchor.constraint(equalToConstant: 200).isActive = true

        
        
        let LoginLabel = UILabel()
        LoginLabel.translatesAutoresizingMaskIntoConstraints = false
        LoginLabel.text = "Login"
        LoginLabel.font = .boldSystemFont(ofSize: 35)
        //LoginLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        LoginLabel.textColor = .black
        view.addSubview(LoginLabel)
        
        
        LoginLabel.topAnchor.constraint(equalTo: upperImage.bottomAnchor ,constant: 75).isActive = true
        LoginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant : 40).isActive = true
        view.backgroundColor = .white
        

        
        EmailTextField.leftViewMode = .always
        let atImage = UIImageView(frame: CGRect(x: 60, y: 0, width: 30, height: 30))
        atImage.image = UIImage(systemName: "at.circle")
        atImage.tintColor = .gray
        atImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        atImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        EmailTextField.leftView = atImage
        
        EmailTextField.translatesAutoresizingMaskIntoConstraints = false
        EmailTextField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [
            .foregroundColor: UIColor.lightGray,
            .font: UIFont.boldSystemFont(ofSize: 15.0)
        ])
        view.addSubview(EmailTextField)
        EmailTextField.topAnchor.constraint(equalTo: LoginLabel.topAnchor, constant: 80).isActive = true
        EmailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 40).isActive = true
        EmailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant: -25).isActive = true
        EmailTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        
        let lockImage = UIImageView()
        lockImage.image = UIImage(systemName: "lock" )
        lockImage.tintColor = .gray
        PasswordTextField.leftViewMode = .always
    
        
        
        
        
        
        
        
        PasswordTextField.leftView = lockImage
        PasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        PasswordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [
            .foregroundColor: UIColor.lightGray,
            .font: UIFont.boldSystemFont(ofSize: 15.0)
        ])
        PasswordTextField.isSecureTextEntry = true
        view.addSubview(PasswordTextField)
        
        PasswordTextField.topAnchor.constraint(equalTo: EmailTextField.bottomAnchor, constant: 20).isActive = true
        PasswordTextField.leadingAnchor.constraint(equalTo: EmailTextField.leadingAnchor).isActive = true
        PasswordTextField.trailingAnchor.constraint(equalTo: EmailTextField.trailingAnchor).isActive = true
        PasswordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        let forgetButton = UIButton()
        forgetButton.setTitle("Forgot?", for: .normal)
        forgetButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
    
        forgetButton.setTitleColor( UIColor(red: 0/255, green: 125/255, blue: 255/255, alpha: 1) , for: .normal)
        forgetButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(forgetButton)
        //forgetButton.
        forgetButton.topAnchor.constraint(equalTo: PasswordTextField.topAnchor,constant: -5).isActive = true
        forgetButton.trailingAnchor.constraint(equalTo: PasswordTextField.trailingAnchor).isActive = true

//        let atImage = UIImageView()
//        atImage.image = UIImage(systemName: "at.circle" )
//        let updatedConfiguration = UIImage.SymbolConfiguration(weight: .bold)
//        atImage.preferredSymbolConfiguration = updatedConfiguration
//        atImage.tintColor = .gray
//        atImage.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(atImage)
//        atImage.trailingAnchor.constraint(equalTo: EmailTextField.leadingAnchor).isActive = true
//        atImage.topAnchor.constraint(equalTo: EmailTextField.topAnchor).isActive = true
        
//        let lockImage = UIImageView()
//        lockImage.image = UIImage(systemName: "lock" )
//        lockImage.tintColor = .gray
//        lockImage.preferredSymbolConfiguration = updatedConfiguration
//
//        lockImage.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(lockImage)
//        lockImage.centerXAnchor.constraint(equalTo: atImage.centerXAnchor).isActive = true
//        lockImage.topAnchor.constraint(equalTo: PasswordTextField.topAnchor).isActive = true
        
        let button =  UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.setTitle("Login", for: .normal)
        button.backgroundColor  = .systemBlue
        view.addSubview(button)
        button.topAnchor.constraint(equalTo: PasswordTextField.bottomAnchor , constant: 20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.leadingAnchor.constraint(equalTo: PasswordTextField.leadingAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: PasswordTextField.trailingAnchor).isActive = true
        
        let orLabel = UILabel()
        orLabel.translatesAutoresizingMaskIntoConstraints = false
        orLabel.text = "or log in with.."
        orLabel.textColor = .gray
        orLabel.font = .systemFont(ofSize: 15)
        view.addSubview(orLabel)

        orLabel.topAnchor.constraint(equalTo : button.bottomAnchor , constant: 15).isActive = true
        orLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //--------------------------------------------------------------------
        
        let image = UIImageView()
        image.image = UIImage(named : "facebook")

        image.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        
        image.layer.shadowOffset = CGSize(width: 6, height: 6)
        image.layer.shadowOpacity = 1
        image.layer.shadowRadius = 2.0
        image.layer.masksToBounds = false
        
        let facebookButton = UIButton()
        facebookButton.layer.borderWidth = 1
        facebookButton.layer.borderColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1).cgColor
        facebookButton.layer.cornerRadius = 10
        facebookButton.contentVerticalAlignment = .center
        facebookButton.contentHorizontalAlignment = .center
        facebookButton.imageEdgeInsets = UIEdgeInsets(top: 5, left: 30, bottom: 5, right: 30)

        facebookButton.translatesAutoresizingMaskIntoConstraints = false

        facebookButton.setImage(image.image, for: .normal)
        view.addSubview(facebookButton)
        facebookButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        facebookButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        facebookButton.topAnchor.constraint(equalTo : orLabel.bottomAnchor , constant: 50).isActive = true
        facebookButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        let image2 = UIImageView()
        image2.image = UIImage(named : "twitter")
        let twitterButton = UIButton()
        twitterButton.layer.borderWidth = 1
        twitterButton.layer.borderColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1).cgColor
        twitterButton.layer.cornerRadius = 10
        
        twitterButton.contentVerticalAlignment = .fill
        twitterButton.contentHorizontalAlignment = .fill
        twitterButton.imageEdgeInsets = UIEdgeInsets(top: 5, left: 30, bottom: 5, right: 30)
        twitterButton.translatesAutoresizingMaskIntoConstraints = false
        twitterButton.setImage(image2.image, for: .normal)
        view.addSubview(twitterButton)
        
        twitterButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        twitterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        twitterButton.trailingAnchor.constraint(equalTo: facebookButton.centerXAnchor,constant: -60).isActive = true
        twitterButton.topAnchor.constraint(equalTo: facebookButton.topAnchor).isActive = true
        
        
        
        let image3 = UIImageView()
        let smallConfiguration = UIImage.SymbolConfiguration(scale: .large)
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 30, weight: .bold, scale: .large)
        image3.image = UIImage(systemName: "applelogo", withConfiguration: largeConfig)
        let appleButton = UIButton()
        appleButton.layer.borderWidth = 1
        appleButton.layer.borderColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1).cgColor
        appleButton.layer.cornerRadius = 10
        
        //appleButton.contentVerticalAlignment = .fill
        //appleButton.contentHorizontalAlignment = .fill
        //appleButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        appleButton.translatesAutoresizingMaskIntoConstraints = false
        appleButton.setImage(image3.image, for: .normal)
        appleButton.tintColor = .black
        view.addSubview(appleButton)
        
        

        
        appleButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        appleButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        appleButton.trailingAnchor.constraint(equalTo: facebookButton.centerXAnchor,constant: 160).isActive = true
        appleButton.topAnchor.constraint(equalTo: facebookButton.topAnchor).isActive = true
        
        
        let newLabel = UILabel()
        newLabel.text = "New to our App?"
        newLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(newLabel)
        newLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: -35).isActive = true
        newLabel.topAnchor.constraint(equalTo: appleButton.bottomAnchor ,constant: 30).isActive = true
        
        
        let RegisterButton = UIButton()
        RegisterButton.setTitle("Register", for: .normal)
        RegisterButton.translatesAutoresizingMaskIntoConstraints = false
        RegisterButton.backgroundColor = .clear
        RegisterButton.setTitleColor(UIColor.blue, for: .normal)
        
        view.addSubview(RegisterButton)
        RegisterButton.topAnchor.constraint(equalTo: newLabel.topAnchor,constant : -7).isActive = true
        RegisterButton.leadingAnchor.constraint(equalTo: newLabel.trailingAnchor).isActive = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        var bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: PasswordTextField.frame.height - 1, width: PasswordTextField.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.gray.cgColor
        PasswordTextField.borderStyle = UITextField.BorderStyle.none
        PasswordTextField.layer.addSublayer(bottomLine)
        
        var bottomLine1 = CALayer()
        bottomLine1.frame = CGRect(x: 0.0, y: EmailTextField.frame.height - 1, width: EmailTextField.frame.width, height: 1.0)
        bottomLine1.backgroundColor = UIColor.gray.cgColor
        EmailTextField.borderStyle = UITextField.BorderStyle.none
        EmailTextField.layer.addSublayer(bottomLine1)
    }

}


extension UIImage {
    
    func resizeImageTo(size: CGSize) -> UIImage? {
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        self.draw(in: CGRect(origin: CGPoint.zero, size: size))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return resizedImage
    }
}


class TextFieldWithPadding: UITextField {
    var textPadding = UIEdgeInsets(
        top: 0,
        left: 5,
        bottom: 0,
        right: 0
    )

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
}
