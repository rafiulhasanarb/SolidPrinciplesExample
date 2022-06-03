//
//  ProfileViewModel.swift
//  SolidPrinciplesExample
//
//  Created by rafiul hasan on 1/6/22.
//

import Foundation

class ProfileViewModel: ObservableObject {
    var commentModel: CommentModel
    var text: String
    init(commentModel: CommentModel, text: String) {
        self.commentModel = commentModel
        self.text = text
    }
}
