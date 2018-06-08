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
    
    private func initFromXib() {
        Bundle.main.loadNibNamed("TSTicTacToeBoardView", owner: self, options: nil)
        self.addSubview(view)
        view.frame = self.bounds
        let targetWidth = Double(frame.width / 3)
        let targetHeight = Double(frame.height / 3)
        
       
        for i in 0..<3 {
            for j in 0..<3 {
                let imageView = UIImageView(
                    frame: CGRect(
                        x: targetWidth * Double(i),
                        y: targetHeight * Double(j),
                        width: targetWidth,
                        height: targetHeight
                ))
             
                self.view.addSubview(setupSquare(imageView))
                arrayOfImageViews.append(imageView)
            }
        }
    }
    
    fileprivate func setupSquare(_ imageView: UIImageView) -> UIImageView {
        var styledImageView = imageView
        styledImageView.backgroundColor = UIColor.green
        styledImageView.layer.borderWidth = 2
        styledImageView.layer.borderColor = UIColor.black.cgColor
        return styledImageView
    }
    
}
