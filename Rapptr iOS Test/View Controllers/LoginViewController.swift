//
//  LoginViewController.swift
//  iOSTest
//
//  Copyright © 2020 Rapptr Labs. All rights reserved.

import UIKit

class LoginViewController: UIViewController {
    
    /**
     * =========================================================================================
     * INSTRUCTIONS
     * =========================================================================================
     * 1) Make the UI look like it does in the mock-up.
     *
     * 2) Take email and password input from the user
     *
     * 3) Use the endpoint and paramters provided in LoginClient.m to perform the log in
     *
     * 4) Calculate how long the API call took in milliseconds
     *
     * 5) If the response is an error display the error in a UIAlertController
     *
     * 6) If the response is successful display the success message AND how long the API call took in milliseconds in a UIAlertController
     *
     * 7) When login is successful, tapping 'OK' in the UIAlertController should bring you back to the main menu.
     **/
    
    // MARK: - Properties
    private var client: LoginClient?
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    let backgroundImage = UIImageView()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let loginButton = UIButton()
    
    // MARK: - Lifecycle
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        client = LoginClient()
        setupController()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Actions
    
    
    
    
    @objc func didPressLogin(sender: UIButton) {
        guard let email = emailTextField.text else {
            return }
        guard let password = passwordTextField.text else {
            return }
        
        client?.login(email: email, password: password, completion: { responseTime in
            self.displayAlert(withResponseTime: responseTime, withError: nil)
            
        }, error: { error in
            self.displayAlert(withResponseTime: nil, withError: error)
            
        })
        
    }
    
    func displayAlert(withResponseTime: String?, withError: String?) {
        
        if let responseTime = withResponseTime {
            let alert = UIAlertController(title: "Success", message: responseTime, preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Okay", style: .default) { action in
                //pop the current (login) controller to go back to menu controller
                self.navigationController?.popViewController(animated: true)
                
            }
            alert.addAction(alertAction)
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
        if let error = withError {
            
            let alert = UIAlertController(title: "Unsuccessful", message: "Login was unsuccessful.\n" + error, preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Okay", style: .default) { action in
                
                self.dismiss(animated: true, completion: nil)
                
            }
            alert.addAction(alertAction)
            self.present(alert, animated: true, completion: nil)
        }
        
        
    }
    
    func setupController() {
        //Keeping views from going under navbar
        edgesForExtendedLayout = []
        
        
        view.addSubview(backgroundImage)
        backgroundImage.addSubview(emailTextField)
        backgroundImage.addSubview(passwordTextField)
        backgroundImage.addSubview(loginButton)
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        backgroundImage.image = UIImage(named: "img_login")
        backgroundImage.isUserInteractionEnabled = true
        
        emailTextField.backgroundColor = UIColor(white: 1, alpha: 0.5)
        emailTextField.delegate = self
        emailTextField.layer.cornerRadius = 6
        emailTextField.setLeftPaddingPoints(24)
        let emailPlaceholder = NSAttributedString(string: "Email",
                                                  attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 95/255, green: 96/255, blue: 99/255, alpha: 1)])
        emailTextField.attributedPlaceholder = emailPlaceholder
        passwordTextField.backgroundColor = UIColor(white: 1, alpha: 0.5)
        passwordTextField.delegate = self
        passwordTextField.layer.cornerRadius = 6
        passwordTextField.setLeftPaddingPoints(24)
        let passwordPlaceholder = NSAttributedString(string: "Password",
                                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 95/255, green: 96/255, blue: 99/255, alpha: 1)])
        
        passwordTextField.attributedPlaceholder = passwordPlaceholder
        
        loginButton.backgroundColor = UIColor(red: 14/255, green: 92/255, blue: 137/255, alpha: 1)
        loginButton.addTarget(self, action: #selector(self.didPressLogin(sender:)), for: .touchUpInside)
        loginButton.setTitle("LOGIN", for: .normal)
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            emailTextField.heightAnchor.constraint(equalToConstant: 55),
            emailTextField.topAnchor.constraint(equalTo: backgroundImage.topAnchor, constant: 64),
            emailTextField.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor, constant: -30),
            emailTextField.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -24),
            
            passwordTextField.heightAnchor.constraint(equalToConstant: 55),
            passwordTextField.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor, constant: -30),
            passwordTextField.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -24),
            
            loginButton.heightAnchor.constraint(equalToConstant: 55),
            loginButton.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor, constant: 30),
            loginButton.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor, constant: -30)
            
        ])
    }
    
    
    
}


extension LoginViewController : UITextFieldDelegate {
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.emailTextField {
            textField.resignFirstResponder()
            return false
            
        }
        
        if textField == self.passwordTextField {
            textField.resignFirstResponder()
            return false
        }
        
        return true
        
        
    }
}

extension UITextField {
    
    
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
    
    
    
}


