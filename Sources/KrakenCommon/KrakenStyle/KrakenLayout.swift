//
//  File.swift
//  
//
//  Created by wesley Mitchell on 4/15/21.
//

import Foundation
import SwiftUI

public protocol KrakenLayout {
    var ButtonLayout : KrakenButtonLayout { get }
}

public protocol KrakenButtonLayout {
    var CornerRadius: CGFloat { get }
    var Padding: CGFloat { get }
}
public protocol KrakenHStackLayout {
    var Padding: CGFloat { get }
}
