//
//  Created by wesley Mitchell on 4/13/21.
//

import Combine

final public class CancelBag {
    fileprivate(set) var subscriptions = Set<AnyCancellable>()
    
    public init() {}
    
    public func cancel() {
        subscriptions.removeAll()
    }
}

extension AnyCancellable {
    
    func store(in cancelBag: CancelBag) {
        cancelBag.subscriptions.insert(self)
    }
}
