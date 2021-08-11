//
//  File.swift
//  
//
//  Created by wesley Mitchell on 4/15/21.
//

import SwiftUI

public protocol KrakenTypography {
    
    var Title: KrakenFont { get }
    var SubTitle: KrakenFont { get }
    var Body: KrakenFont { get }
    var Button: KrakenFont { get }
    
}

public struct KrakenFont {
    
    public let typeFace: String
    public let size: CGFloat
    public let lineSpacing: CGFloat
    
    public init(typeFace: String, size: CGFloat, lineSpacing: CGFloat) {
        self.typeFace = typeFace
        self.size = size
        self.lineSpacing = lineSpacing
    }
    
}
