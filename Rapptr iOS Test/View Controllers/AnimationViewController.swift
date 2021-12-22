//
//  AnimationViewController.swift
//  iOSTest
//
//  Copyright © 2020 Rapptr Labs. All rights reserved.

import UIKit

class AnimationViewController: UIViewController {
    
    @IBOutlet weak var logoView: UIView!
    @IBOutlet weak var fadeButton: UIButton!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    let logoLayer = CAShapeLayer()
    
    let innerLayer = CAShapeLayer()
    let rLayer = CAShapeLayer()
    let aLayer = CAShapeLayer()
    let pLayer = CAShapeLayer()
    let pLayerTwo = CAShapeLayer()
    let tLayer = CAShapeLayer()
    let rLayerTwo = CAShapeLayer()
    var isFaded = true
    let logoBlue = UIColor(red: 48/255, green: 203/255, blue: 251/255, alpha: 1)
    let logoGray = UIColor(red: 227/255, green: 227/255, blue: 226/255, alpha: 1)
    var paths : [UIBezierPath] = []
    /**
     * =========================================================================================
     * INSTRUCTIONS
     * =========================================================================================
     * 1) Make the UI look like it does in the mock-up.
     *
     * 2) Logo should fade out or fade in when the user hits the Fade In or Fade Out button
     *
     * 3) User should be able to drag the logo around the screen with his/her fingers
     *
     * 4) Add a bonus to make yourself stick out. Music, color, fireworks, explosions!!! Have Swift experience? Why not write the Animation 
     *    section in Swfit to show off your skills. Anything your heart desires!
     *
     */
    
    // MARK: - Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let screen = UIScreen.main.bounds
        let heightConstraint = screen.height * 0.15
        
        topConstraint.constant = heightConstraint
        paths = [outerLogo, innerLogo, rShape, aShape, pShape, pShapeTwo, tShape, rShapeTwo]
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Animation"
        addLogoAnimation()
        logoView.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handleViewTapped)))
        
        edgesForExtendedLayout = []
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        logoLayer.frame = logoView.bounds
        innerLayer.frame = logoView.bounds
        
    }
    
    
    // MARK: - Actions
    
    
    @objc private func handleViewTapped(_ gesture: UIPanGestureRecognizer) {
        
        //get the view the gesture recognizer is on
        if let logoView = gesture.view {
            
            let point = gesture.translation(in: view)
            //follow movement
            logoView.center = CGPoint(x: logoView.center.x + point.x, y: logoView.center.y + point.y)
            gesture.setTranslation(CGPoint.zero, in: view)
            
        }
    }
    
    @IBAction func didPressFade(_ sender: Any) {
        if isFaded {
            isFaded.toggle()
            fadeButton.isEnabled = false
            logoView.isUserInteractionEnabled = false
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.toValue = 1
            animation.duration = 3
            animation.isRemovedOnCompletion = false
            logoLayer.add(animation, forKey: "line")
            innerLayer.add(animation, forKey: "line")
            rLayer.add(animation, forKey: "line")
            aLayer.add(animation, forKey: "line")
            pLayer.add(animation, forKey: "line")
            pLayerTwo.add(animation, forKey: "line")
            tLayer.add(animation, forKey: "line")
            rLayerTwo.add(animation, forKey: "line")
            
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.75 ) {
                
                let fillAnimation = CABasicAnimation(keyPath: "fillColor")
                fillAnimation.fromValue = UIColor.clear.cgColor
                fillAnimation.toValue = self.logoBlue.cgColor
                fillAnimation.duration = 1.5
                fillAnimation.fillMode = .forwards
                fillAnimation.isRemovedOnCompletion = false
                self.logoLayer.add(fillAnimation, forKey: "fillColor")
                
                let innerLogoAnimation = CABasicAnimation(keyPath: "fillColor")
                innerLogoAnimation.fromValue = UIColor.clear
                innerLogoAnimation.toValue = self.logoGray.cgColor
                innerLogoAnimation.duration = 1.5
                innerLogoAnimation.fillMode = .forwards
                innerLogoAnimation.isRemovedOnCompletion = false
                self.innerLayer.add(innerLogoAnimation, forKey: "fillColor")
                
                let rAnimation = CABasicAnimation(keyPath: "fillColor")
                rAnimation.fromValue = UIColor.black.withAlphaComponent(0).cgColor
                rAnimation.toValue = UIColor.black.withAlphaComponent(1).cgColor
                rAnimation.duration = 1.5
                rAnimation.fillMode = .forwards
                rAnimation.isRemovedOnCompletion = false
                self.rLayer.add(rAnimation, forKey: "fillColor")
                
                let aAnimation = CABasicAnimation(keyPath: "fillColor")
                aAnimation.fromValue = UIColor.black.withAlphaComponent(0).cgColor
                aAnimation.toValue = UIColor.black.withAlphaComponent(1).cgColor
                aAnimation.duration = 1.5
                aAnimation.fillMode = .forwards
                aAnimation.isRemovedOnCompletion = false
                self.aLayer.add(rAnimation, forKey: "fillColor")
                
                let pAnimation = CABasicAnimation(keyPath: "fillColor")
                pAnimation.fromValue = UIColor.black.withAlphaComponent(0).cgColor
                pAnimation.toValue = UIColor.black.withAlphaComponent(1).cgColor
                pAnimation.duration = 1.5
                pAnimation.fillMode = .forwards
                pAnimation.isRemovedOnCompletion = false
                self.pLayer.add(rAnimation, forKey: "fillColor")
                
                let pTwoAnimation = CABasicAnimation(keyPath: "fillColor")
                pTwoAnimation.fromValue = UIColor.black.withAlphaComponent(0).cgColor
                pTwoAnimation.toValue = UIColor.black.withAlphaComponent(1).cgColor
                pTwoAnimation.duration = 1.5
                pTwoAnimation.fillMode = .forwards
                pTwoAnimation.isRemovedOnCompletion = false
                self.pLayerTwo.add(pTwoAnimation, forKey: "fillColor")
                
                let tAnimation = CABasicAnimation(keyPath: "fillColor")
                tAnimation.fromValue = UIColor.black.withAlphaComponent(0).cgColor
                tAnimation.toValue = UIColor.black.withAlphaComponent(1).cgColor
                tAnimation.duration = 1.5
                tAnimation.fillMode = .forwards
                tAnimation.isRemovedOnCompletion = false
                self.tLayer.add(tAnimation, forKey: "fillColor")
                
                let rTwoAnimation = CABasicAnimation(keyPath: "fillColor")
                rTwoAnimation.fromValue = UIColor.black.withAlphaComponent(0).cgColor
                rTwoAnimation.toValue = UIColor.black.withAlphaComponent(1).cgColor
                rTwoAnimation.duration = 1.5
                rTwoAnimation.fillMode = .forwards
                rTwoAnimation.isRemovedOnCompletion = false
                self.rLayerTwo.add(rTwoAnimation, forKey: "fillColor")
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
                    self.fadeButton.setTitle("Fade Out", for: .normal)
                    self.fadeButton.isEnabled = true
                    self.logoView.isUserInteractionEnabled = true
                    
                }
            }
            
        } else {
            isFaded.toggle()
            fadeButton.isEnabled = false
            logoView.isUserInteractionEnabled = false
            
            let fillAnimation = CABasicAnimation(keyPath: "fillColor")
            fillAnimation.fromValue = self.logoBlue.cgColor
            fillAnimation.toValue = UIColor.clear.cgColor
            fillAnimation.duration = 2.5
            fillAnimation.fillMode = .forwards
            fillAnimation.isRemovedOnCompletion = false
            self.logoLayer.add(fillAnimation, forKey: "fillColor")
            
            let innerLogoAnimation = CABasicAnimation(keyPath: "fillColor")
            innerLogoAnimation.fromValue = self.logoGray.cgColor
            innerLogoAnimation.toValue = UIColor.clear.cgColor
            innerLogoAnimation.duration = 2.5
            innerLogoAnimation.fillMode = .forwards
            innerLogoAnimation.isRemovedOnCompletion = false
            self.innerLayer.add(innerLogoAnimation, forKey: "fillColor")
            
            let rAnimation = CABasicAnimation(keyPath: "fillColor")
            rAnimation.fromValue = UIColor.black.withAlphaComponent(1).cgColor
            rAnimation.toValue = UIColor.black.withAlphaComponent(0).cgColor
            rAnimation.duration = 2.5
            rAnimation.fillMode = .forwards
            rAnimation.isRemovedOnCompletion = false
            self.rLayer.add(rAnimation, forKey: "fillColor")
            
            let aAnimation = CABasicAnimation(keyPath: "fillColor")
            aAnimation.fromValue = UIColor.black.withAlphaComponent(1).cgColor
            aAnimation.toValue = UIColor.black.withAlphaComponent(0).cgColor
            aAnimation.duration = 2.5
            aAnimation.fillMode = .forwards
            aAnimation.isRemovedOnCompletion = false
            self.aLayer.add(rAnimation, forKey: "fillColor")
            
            let pAnimation = CABasicAnimation(keyPath: "fillColor")
            pAnimation.fromValue = UIColor.black.withAlphaComponent(1).cgColor
            pAnimation.toValue = UIColor.black.withAlphaComponent(0).cgColor
            pAnimation.duration = 2.5
            pAnimation.fillMode = .forwards
            pAnimation.isRemovedOnCompletion = false
            self.pLayer.add(rAnimation, forKey: "fillColor")
            
            let pTwoAnimation = CABasicAnimation(keyPath: "fillColor")
            pTwoAnimation.fromValue = UIColor.black.withAlphaComponent(1).cgColor
            pTwoAnimation.toValue = UIColor.black.withAlphaComponent(0).cgColor
            pTwoAnimation.duration = 2.5
            pTwoAnimation.fillMode = .forwards
            pTwoAnimation.isRemovedOnCompletion = false
            self.pLayerTwo.add(pTwoAnimation, forKey: "fillColor")
            
            let tAnimation = CABasicAnimation(keyPath: "fillColor")
            tAnimation.fromValue = UIColor.black.withAlphaComponent(1).cgColor
            tAnimation.toValue = UIColor.black.withAlphaComponent(0).cgColor
            tAnimation.duration = 2.5
            tAnimation.fillMode = .forwards
            tAnimation.isRemovedOnCompletion = false
            self.tLayer.add(tAnimation, forKey: "fillColor")
            
            let rTwoAnimation = CABasicAnimation(keyPath: "fillColor")
            rTwoAnimation.fromValue = UIColor.black.withAlphaComponent(1).cgColor
            rTwoAnimation.toValue = UIColor.black.withAlphaComponent(0).cgColor
            rTwoAnimation.duration = 2.5
            rTwoAnimation.fillMode = .forwards
            rTwoAnimation.isRemovedOnCompletion = false
            self.rLayerTwo.add(rTwoAnimation, forKey: "fillColor")
            
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.75, execute: {
                let animation = CABasicAnimation(keyPath: "strokeEnd")
                animation.fromValue = 1
                animation.toValue = 0
                animation.duration = 3
                animation.isRemovedOnCompletion = false
                self.logoLayer.add(animation, forKey: "line")
                self.innerLayer.add(animation, forKey: "line")
                self.rLayer.add(animation, forKey: "line")
                self.aLayer.add(animation, forKey: "line")
                self.pLayer.add(animation, forKey: "line")
                self.pLayerTwo.add(animation, forKey: "line")
                self.tLayer.add(animation, forKey: "line")
                self.rLayerTwo.add(animation, forKey: "line")
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
                    self.fadeButton.setTitle("Fade In", for: .normal)
                    
                    self.fadeButton.isEnabled = true
                    self.logoView.isUserInteractionEnabled = true
                    
                }
            }
            )
            
            
        }
        
        
    }
    
    
    func addLogoAnimation() {
        
        let outerLogoBounding = (outerLogo.cgPath).boundingBox
        let rBounding = rShape.cgPath.boundingBox
        let aBounding = aShape.cgPath.boundingBox
        let pBounding = pShape.cgPath.boundingBox
        let pTwoBounding = pShapeTwo.cgPath.boundingBox
        let tBounding = tShape.cgPath.boundingBox
        let rTwoBounding = rShapeTwo.cgPath.boundingBox
        let boundingHeight = outerLogoBounding.height
        let boundingWidth = outerLogoBounding.width + rBounding.width + aBounding.width + pBounding.width + pTwoBounding.width + tBounding.width + rTwoBounding.width
        
        let scaleWidth = logoView.frame.width / boundingWidth
        let scaleHeight = logoView.frame.height / boundingHeight
        
        let scale = CATransform3DMakeScale(scaleWidth * 0.65, (scaleHeight * 0.65), 1.0)
        let scaleText = CATransform3DMakeScale(scaleWidth * 0.65, scaleHeight * 0.65, 1.0)
        
        logoView.backgroundColor = UIColor.clear
        logoLayer.path = outerLogo.cgPath
        innerLayer.path = innerLogo.cgPath
        rLayer.path = rShape.cgPath
        aLayer.path = aShape.cgPath
        pLayer.path = pShape.cgPath
        pLayerTwo.path = pShapeTwo.cgPath
        tLayer.path = tShape.cgPath
        rLayerTwo.path = rShapeTwo.cgPath
        
        logoLayer.transform = scale
        innerLayer.transform = scale
        rLayer.transform = scaleText
        aLayer.transform = scaleText
        pLayer.transform = scaleText
        pLayerTwo.transform = scaleText
        tLayer.transform = scaleText
        rLayerTwo.transform = scaleText
        
        logoLayer.masksToBounds = true
        logoLayer.strokeEnd =  0
        logoLayer.lineWidth = 4
        logoLayer.strokeColor = logoBlue.cgColor
        logoLayer.fillColor = UIColor.clear.cgColor
        
        innerLayer.strokeEnd =  0
        innerLayer.lineWidth = 4
        innerLayer.fillColor = UIColor.clear.cgColor
        innerLayer.strokeColor = logoGray.cgColor
        
        rLayer.strokeEnd =  0
        rLayer.lineWidth = 4
        rLayer.strokeColor = UIColor.black.cgColor
        rLayer.fillColor = UIColor.clear.cgColor
        
        
        aLayer.strokeEnd =  0
        aLayer.lineWidth = 4
        aLayer.strokeColor = UIColor.black.cgColor
        aLayer.fillColor = UIColor.clear.cgColor
        
        
        pLayer.strokeEnd =  0
        pLayer.lineWidth = 4
        pLayer.strokeColor = UIColor.black.cgColor
        pLayer.fillColor = UIColor.clear.cgColor
        
        pLayerTwo.strokeEnd =  0
        pLayerTwo.lineWidth = 4
        pLayerTwo.strokeColor = UIColor.black.cgColor
        pLayerTwo.fillColor = UIColor.clear.cgColor
        
        tLayer.strokeEnd =  0
        tLayer.lineWidth = 4
        tLayer.strokeColor = UIColor.black.cgColor
        tLayer.fillColor = UIColor.clear.cgColor
        
        rLayerTwo.strokeEnd =  0
        rLayerTwo.lineWidth = 4
        rLayerTwo.strokeColor = UIColor.black.cgColor
        rLayerTwo.fillColor = UIColor.clear.cgColor
        
        logoView.layer.addSublayer(logoLayer)
        logoView.layer.addSublayer(innerLayer)
        logoView.layer.addSublayer(rLayer)
        logoView.layer.addSublayer(aLayer)
        logoView.layer.addSublayer(pLayer)
        logoView.layer.addSublayer(pLayerTwo)
        logoView.layer.addSublayer(tLayer)
        logoView.layer.addSublayer(rLayerTwo)
        
    }
    
    
}

