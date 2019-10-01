//
//  GetHeightExtension.swift
//  Lesson2
//
//  Created by underq on 01/10/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func getHeight() -> CGFloat {
        
        let sumHeight = self.subviews.map({$0.frame.size.height}).reduce(0, {x, y in x + y})
        return sumHeight
    }
}
