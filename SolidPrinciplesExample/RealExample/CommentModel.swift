//
//  CommentModel.swift
//  SolidPrinciplesExample
//
//  Created by rafiul hasan on 1/6/22.
//

import Foundation

struct CommentModel: Codable, Identifiable {
    let postID, id: Int?
    let name, email, body: String?

    enum CodingKeys: String, CodingKey {
        case postID = "postId"
        case id, name, email, body
    }
}

struct UserModel: Codable, Identifiable {
    let id: Int?
    let name, email: String?

}
