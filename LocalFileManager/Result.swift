//
//  Result.swift
//  LocalFileManager
//
//  Created by Kyl Chiang on 2020/9/7.
//  Copyright © 2020 Play4Act Studio. All rights reserved.
//

import Foundation

// MARK: - Result
struct Result: Codable {
    var code: Int
    var message: String
    var data: [Pizza]?
}

// MARK: - DataClass
struct Pizza: Codable, Identifiable {
    var id: ObjectIdentifier?
    var title, dataDescription: String
    var price: Int

    enum CodingKeys: String, CodingKey {
        case title
        case dataDescription = "description"
        case price
    }
}
