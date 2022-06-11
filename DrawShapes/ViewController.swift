//
//  ViewController.swift
//  DrawShapes
//
//  Created by Vsevolod Migdisov on 11.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let triangleView = UIView()
        triangleView.center = view.center
        triangleView.frame.size = CGSize(width: 16, height: 8)
        triangleView.translatesAutoresizingMaskIntoConstraints = false
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 8))
        path.addLine(to: CGPoint(x: 8, y: 0))
        path.addLine(to: CGPoint(x: 16, y: 8))
        path.close()
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = UIColor.gray.cgColor
        triangleView.layer.addSublayer(shapeLayer)
        view.addSubview(triangleView)
    }


}

