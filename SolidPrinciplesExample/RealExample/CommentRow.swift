//
//  CommentRow.swift
//  SolidPrinciplesExample
//
//  Created by rafiul hasan on 1/6/22.
//

import SwiftUI

struct CommentRow: View {
    var commentModel: CommentModel
    var body: some View {
        VStack {
            Text(commentModel.name ?? "NA")
                .font(.title3)
            Text(commentModel.email ?? "NA")
                .font(.title2)
        }
    }
}

struct CommentRow_Previews: PreviewProvider {
    static var previews: some View {
        CommentRow(commentModel: CommentModel(postID: 1, id: 1, name: "Nilesh", email: "iOStpointblog@gmail.com", body: "Lets learn iOS and Android"))
    }
}
