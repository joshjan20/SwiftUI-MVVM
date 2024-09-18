//
//  APIServiceProtocol.swift
//  SwiftUI_MVVM
//
//  Created by JJ on 18/09/24.
//

import Foundation

protocol APIServiceProtocol {
    func fetchBreeds(url: URL?, completion: @escaping(Result<[Breed], APIError>) -> Void)
}
