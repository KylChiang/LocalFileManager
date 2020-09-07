//
//  LocalFileManager.swift
//  LocalFileManager
//
//  Created by Kyl Chiang on 2020/9/7.
//  Copyright © 2020 Play4Act Studio. All rights reserved.
//

import UIKit

struct LocalFileManager {
    static func getDummyData(fileName: String) -> Result? {
        guard let path = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            return nil
        }
        
        do {
            let data = try Data(contentsOf: path, options: .uncached)
            return try JSONDecoder().decode(Result.self, from: data)
        } catch let error {
            fatalError("Parse json file error.:\(error.localizedDescription)")
        }
    }
}
