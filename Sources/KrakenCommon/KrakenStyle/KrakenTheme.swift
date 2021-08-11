//
//  File.swift
//  
//
//  Created by wesley Mitchell on 4/15/21.
//

import Foundation

public protocol KrakenTheme {
    var Typography: KrakenTypography { get }
    var Colors: KrakenColors { get }
    var Layout: KrakenLayout { get }
}
