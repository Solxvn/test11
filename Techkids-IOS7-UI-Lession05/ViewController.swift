//
//  ViewController.swift
//  Techkids-IOS7-UI-Lession05
//
//  Created by MiuS on 5/7/17.
//  Copyright © 2017 MiuS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var custom: UIView!
//    @IBAction func rotation(_ sender: UIRotationGestureRecognizer) {
////        sender.rotation
//        self.custom.transform = CGAffineTransform(rotationAngle: sender.rotation)
//    }
    
    @IBAction func pinchGesture(_ sender: UIPinchGestureRecognizer) {
//        sender.scale
        self.custom.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
    }
    
//    @IBOutlet weak var customView: CustomView!
    
    @IBAction func gesturePan(_ sender: UIPanGestureRecognizer) {
        let loaction = sender.location(in: self.view)
//        print(loaction)
        
        
//       self.custom.frame.origin = loaction
        
        guard self.custom.frame.contains(loaction) else {
            return
        }
        
     let translation = sender.translation(in: self.view)
        
        self.custom.center = CGPoint(x: self.custom.center.x + translation.x, y: self.custom.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: self.view)
        
        
    }
    @IBAction func gestureTap(_ sender: UITapGestureRecognizer) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.contentView.resignFirstResponder()
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
//        self.view.addGestureRecognizer(tapGesture)
    
    }
    
//    func tap(_ gesture: UITapGestureRecognizer){
//        print("tap")
//        let loation = gesture.location(in: self.view)
//        print(loation)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
//        UIDevice.current.orientation == .
        // Dispose of any resources that can be recreated.
//        UITapGestureRecognizer
//        UIPanGestureRecognizer
//        UISwipeGestureRecognizer
//        UIPinchGestureRecognizer.  Xoay UI
//        UIRotationGestureRecognizer Zoom UI
//        UILongPressGestureRecognizer nhấn và giữ UI
        
        
    }
   
//    override var canBecomeFirstResponder: Bool{
//        return true
//        self.becomeFirstResponder()
//    }
//    
//    override func remoteControlReceived(with event: UIEvent?) {
//        guard let subtype = event?.subtype else {
//            return
//        }
//        switch subtype {
//        case .remoteControlPlay:
//            break
//        default:
//            break
//        }
//    }
    //duration
//   override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
//
//    }
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let touch = touches.first
//        let position = touch?.location(in: self.view)
//        print(position)
//    }
//    
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("Move")
//    }
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("End")
//    }
//    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("Cancel")
//    }
//    
//    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
//        if motion == .motionShake {
//            print("abc")
//        }
//    }
//    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
//        
//    }
//    override func motionCancelled(_ motion: UIEventSubtype, with event: UIEvent?) {
//        
//    }
}

