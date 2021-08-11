//
//  Created by wesley Mitchell on 4/13/21.
//

import Foundation

public protocol KrakenDIContainer {
    var Theme: KrakenTheme { get }
}

open class KrakenApp: KrakenDIContainer, ObservableObject {
    public var Theme: KrakenTheme
    
    public init(theme: KrakenTheme) {
        Theme = theme
    }
}
