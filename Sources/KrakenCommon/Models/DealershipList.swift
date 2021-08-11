//
//  DealershipList.swift
//  iosApp
//
//  Created by AmritPandey on 02/08/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import Foundation

public struct DealershipList: Decodable {
    public var totalRowCount: Int
    public var dealers: [Dealership]
    
    enum CodingKeys: String, CodingKey {
        case totalRowCount = "TotalRowCount"
        case dealers = "Items"
    }
    
}
