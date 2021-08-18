//
//  File.swift
//  
//
//  Created by AmritPandey on 15/08/21.
//

import Foundation

public struct VehicleDetails: Codable, Equatable, Hashable, Identifiable {
    public let id: Int
    public let vin: Int
    public let make: String
    public let model: String
    public let year: String
    public let stockNumber: String
    public let thumbnailUrl: String
    public let events: [EventDetail]
        
    enum CodingKeys: String, CodingKey{
        case id, vin, make, model, year, stockNumber, events
        case thumbnailUrl = "image_url"
    }
}

public struct EventDetail: Codable, Equatable, Hashable {
    public let color: String
    public let status: String
    public let source: String
    public let address: AuctionAddress
    public let timestamp: String
}

public struct AuctionAddress: Codable, Hashable {
    public let city: String
    public let state: String
    public let pin: String
    public let country: String
    
}

public extension EventDetail {
    
    var eventDate: Date {
        return dateFormatter.date(from: timestamp) ?? Date()
    }
    
    private var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        return dateFormatter
    }
    
}

public extension VehicleDetails {
    
    var sortedEventDetails: [EventDetail] {
        events.sorted { $0.eventDate > $1.eventDate}
    }
}
