//
//  TSTacToeViewController.swift
//  TS-Tac-Toe
//
//  Created by Alexander Moller on 6/8/18.
//  Copyright © 2018 Talkspace. All rights reserved.
//

import UIKit

@objc class TSTacToeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let boardView = TSTicTacToeBoardView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        self.view.addSubview(boardView)
//        let boardView = TSTicTacToeBoardView(
//        let boardView = TSTicTacToeBoardView(coder: nil)
//        self.view.addSubview(boardView)
    }
    
    
}
