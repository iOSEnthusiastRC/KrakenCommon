//
//  Created by wesley Mitchell on 4/13/21.
//

import Foundation
import Combine

public struct APIClient {

    public init() {}
    
    public struct Response<T> {
        public let value: T
        public let response: URLResponse
    }
    
    public func run<T: Decodable>(_ request: URLRequest) -> AnyPublisher<Response<T>, Error> {
        return URLSession.shared
            .dataTaskPublisher(for: request) // 3
            .tryMap { result -> Response<T> in
                let value = try JSONDecoder().decode(T.self, from: result.data)
                return Response(value: value, response: result.response)
            }
            .receive(on: DispatchQueue.main) // 6
            .eraseToAnyPublisher() // 7
    }
}
