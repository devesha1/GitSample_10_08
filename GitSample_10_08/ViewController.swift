//
//  ViewController.swift
//  GitSample_10_08
//
//  Created by Devesh Sharma on 10/08/19.
//  Copyright © 2019 Devesh Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Added from sharmabranch")
        print("Added new logs")
        print("see diff")
        let vw = UIView()
        vw.backgroundColor = .groupTableViewBackground
        self.view.addSubview(vw)
        vw.translatesAutoresizingMaskIntoConstraints = false
//        let xConstraint = NSLayoutConstraint(item: vw, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20.0)
//        let yConstraint = NSLayoutConstraint(item: vw, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20.0)
        let topConstraint = NSLayoutConstraint(item: vw, attribute: NSLayoutConstraint.Attribute.top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 40.0)
NSLayoutConstraint.activate([vw.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20.0),vw.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -20.0)])

        let bottomConstraint = NSLayoutConstraint(item: vw, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: -200.0)

        self.view.addConstraints([topConstraint])

        let heightConstraint = vw.heightAnchor.constraint(equalToConstant: 200.0)
        NSLayoutConstraint.activate([heightConstraint])

    }
}
