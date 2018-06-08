//
//  TSTicTacToeBoardView.swift
//  TS-Tac-Toe
//
//  Created by Alexander Moller on 6/8/18.
//  Copyright © 2018 Talkspace. All rights reserved.
//

import UIKit

class TSTicTacToeBoardView: UIView {
    
    @IBOutlet var view: UIView!
    
    var arrayOfImageViews = [UIImageView]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initFromXib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initFromXib()
    }
    
    fileprivate func initFromXib() {
        Bundle.main.loadNibNamed("TSTicTacToeBoardView", owner: self, options: nil)
        self.addSubview(view)
        view.frame = self.bounds
        let targetWidth = Double(frame.width / 3)
        let targetHeight = Double(frame.height / 3)
        
        for i in 0..<3 {
            for j in 0..<3 {
                var imageView = UIImageView(
                    frame: CGRect(
                        x: targetWidth * Double(i),
                        y: targetHeight * Double(j),
                        width: targetWidth,
                        height: targetHeight
                ))
            
                
                // this tag is wrong
                imageView.tag = ((i+1) + (j+i))
                addTouchGesture(&imageView)
                self.view.addSubview(setupSquare(imageView))
                arrayOfImageViews.append(imageView)
            }
        }
    }
    
    fileprivate func addTouchGesture(_ imageView: inout UIImageView) {
        let touchGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(TSTicTacToeBoardView.tileWasTapped(sender:)))
        touchGestureRecognizer.numberOfTapsRequired = 1
        imageView.addGestureRecognizer(touchGestureRecognizer)
    }
    
    func tileWasTapped(sender: UIGestureRecognizer) {
        if let imageView = sender.view as? UIImageView {
            imageView.image = UIImage(named: "x-icon")
        }
    }
    
    fileprivate func setupSquare(_ imageView: UIImageView) -> UIImageView {
        let styledImageView = imageView
        imageView.isUserInteractionEnabled = true
        styledImageView.backgroundColor = UIColor.green
        styledImageView.layer.borderWidth = 2
        styledImageView.layer.borderColor = UIColor.black.cgColor
        return styledImageView
    }
}
