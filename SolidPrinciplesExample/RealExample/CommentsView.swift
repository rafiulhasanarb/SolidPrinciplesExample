//
//  CommentsView.swift
//  SolidPrinciplesExample
//
//  Created by rafiul hasan on 1/6/22.
//

import SwiftUI

struct CommentsView: View {
    @ObservedObject private var viewModel = CommentViewModel()
    @State private var searchText: String = ""
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.comments) { comment in
                        NavigationLink {
                            DetailCommentView(commentModel: comment)
                        } label: {
                            CommentRow(commentModel: comment)
                        }
                        
                    }
                }
            }.onAppear {
                viewModel.fetchComments()
            }
            .navigationTitle("Comment List")
        }
    }
}

struct ContentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
    }
}
