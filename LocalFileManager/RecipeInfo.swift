//
//  RecipeInfo.swift
//  LocalFileManager
//
//  Created by Kyl Chiang on 2020/9/7.
//  Copyright © 2020 Play4Act Studio. All rights reserved.
//

import Foundation
import Combine

class RecipeInfo: ObservableObject {
    @Published var pizzaList = [Pizza]()
}
