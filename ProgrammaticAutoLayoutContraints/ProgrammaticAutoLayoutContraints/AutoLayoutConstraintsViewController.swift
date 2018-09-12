//
//  AutoLayoutConstraintsViewController.swift
//  ProgrammaticAutoLayoutContraints
//
//  Created by Olivia Bishop on 9/11/18.
//  Copyright © 2018 Olivia Bishop. All rights reserved.
//

import UIKit

class AutoLayoutConstraintsViewController: UIViewController {
    
    let Button = UIButton()
    let buttConst: [NSLayoutConstraint] = []

    
        override func viewDidLoad() {
        super.viewDidLoad()

            Button.translatesAutoresizingMaskIntoConstraints = false
            
            Button.backgroundColor = UIColor.green
            Button.setTitle("Press Here!", for: .normal)
            Button.setTitleColor(UIColor.orange, for: .normal)
            self.view.addSubview(Button)
            
            let top = Button.topAnchor.constraint(equalTo: self.view.bottomAnchor)
            let bottom = Button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
            let left = Button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
            let right = Button.rightAnchor.constraint(equalTo: self.view.rightAnchor)
            
            let buttConst:[NSLayoutConstraint] = [top,bottom,left,right]
            NSLayoutConstraint.activate(buttConst)
            
            
            Button.addTarget(self, action: #selector(action), for: .touchUpInside)

}
    
    
    @objc func action() {
        
        NSLayoutConstraint.deactivate(buttConst)
        
        let width = Button.widthAnchor.constraint(equalToConstant: 100)
        let height = Button.heightAnchor.constraint(equalToConstant: 100)
        let x = Button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        let y = Button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        
        let newButtConst:[NSLayoutConstraint] = [width,height,x,y]
        NSLayoutConstraint.activate(newButtConst)
        
    }
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
   
    
    
    
    
    
    
    }
    

}
