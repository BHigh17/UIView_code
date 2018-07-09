//
//  ViewController.swift
//  UIView_code
//
//  Created by Brandon Hightower on 7/9/18.
//  Copyright © 2018 Brandon Hightower. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var previewView: UIView?
    var gesstureView: UIView?
    var controlDockView: UIView?
    var controlTopView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
       let screenBounds = UIScreen.main.bounds
        
        let bounds = UIScreen.main.bounds
        self.previewView = UIView(frame: bounds)
        if let previewView = self.previewView {
            previewView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            previewView.backgroundColor = UIColor.black
            self.view.addSubview(previewView)
        }
        
        let dockHeight = screenBounds.height * 0.2
        self.controlDockView = UIView(frame: CGRect(x: 0, y: screenBounds.height - dockHeight, width: screenBounds.width, height: dockHeight))
        if let controlDockView = self.controlDockView {
            controlDockView.backgroundColor = UIColor.blue
            controlDockView.autoresizingMask = [.flexibleTopMargin]
            self.view.addSubview(controlDockView)
        
    }
        
        
        // This should be seen at the top of window but is blocked by gestueView
        let topHeight = screenBounds.height * 0.15
        self.controlTopView = UIView(frame: CGRect(x: 0, y: 0, width: screenBounds.width, height: topHeight))
        if let controlTopView = self.controlTopView {
            controlTopView.backgroundColor = UIColor.green
            self.view.addSubview(controlTopView)
            self.view.bringSubview(toFront: controlTopView)


}
        
        self.gesstureView = UIView(frame: screenBounds)
        if let gestureView = self.gesstureView, let controlDockView = self.controlDockView, let controlTopView = self.controlTopView {
            // let view = controlDockView.frame.height + controlTopView.frame.height / 2
            gestureView.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin, .flexibleHeight]
            gestureView.frame.size.height -= controlDockView.frame.height
            // gestureView.frame.size.height = view
            gestureView.contentMode = .center
            gestureView.backgroundColor = UIColor.red
            self.view.addSubview(gestureView)
        
}

}
}
