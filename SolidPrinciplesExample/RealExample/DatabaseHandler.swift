//
//  DatabaseHandler.swift
//  SolidPrinciplesExample
//
//  Created by rafiul hasan on 1/6/22.
//

import Foundation

class DatabaseHandler: CommentsDelegate {
    func getComments(completion: @escaping (Result<[CommentModel], DemoError>) -> Void) {
        guard let url = Bundle.main.url(forResource: "Comments", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let model = try? JSONDecoder().decode([CommentModel].self, from: data) else {
            return completion(.failure(.DecodingError))
        }
        completion(.success(model))
    }
}
