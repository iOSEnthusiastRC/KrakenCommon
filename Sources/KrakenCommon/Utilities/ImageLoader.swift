//
//  Created by wesley Mitchell on 4/13/21.
//

import Foundation
import UIKit
import Combine

public class ImageLoader: ObservableObject {
    @Published public var image: UIImage

    public init(urlString: String = "", placeHolder: UIImage?) {
        _image = .init(initialValue: placeHolder ?? UIImage())
        downloadImage(urlString: urlString)
    }
    
    public func downloadImage(urlString: String) {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                if let image = UIImage(data: data) {
                    self.image = image
                }
            }
        }
        task.resume()
    }
}
