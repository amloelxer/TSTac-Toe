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
    }

}
