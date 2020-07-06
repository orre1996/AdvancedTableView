//
//  Category.swift
//  AdvancedTableView
//
//  Created by Oscar Berggren on 2020-03-08.
//  Copyright © 2020 Oscar Berggren. All rights reserved.
//

import Foundation
import UIKit

struct Category: Hashable {
    let category: String
    let image: UIImage?
    let subCategory: [Category]?
}
