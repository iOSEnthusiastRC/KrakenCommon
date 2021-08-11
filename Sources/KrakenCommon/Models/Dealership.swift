//
//  EntityItem.swift
//  iosApp
//
//  Created by AmritPandey on 02/08/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import Foundation

public struct Dealership: Decodable, Hashable, Identifiable, Equatable {
    public var id: String
    public var name: String
    public var type: Int
    public var city: String
    public var region: String
    public var parentName: String
    
    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case name = "Name"
        case type = "Type"
        case city = "City"
        case region = "Region"
        case parentName = "ParentName"
    }
}

