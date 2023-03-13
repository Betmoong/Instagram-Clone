//
//  PostViewModel.swift
//  InstagramClone
//
//  Created by Rocky on 2023/03/12.
//

import Foundation

struct PostViewModel {
    var post: Post
    
    var imageUrl: URL? { return URL(string: post.imageUrl) }
    
    var userProfileImageUrl: URL? { return URL(string: post.ownerImageUrl) }
    
    var username: String { return post.ownerUsername }
    
    var caption: String { return post.caption }
    
    var likes: Int { return post.likes }
    
    var likesLabelText: String {
        return "좋아요 \(post.likes)개"
    }
    
    init(post: Post) {
        self.post = post
    }
}
