//
//  PostViewModel.swift
//  InstagramClone
//
//  Created by Rocky on 2023/03/12.
//

import UIKit

struct PostViewModel {
    var post: Post
    
    var imageUrl: URL? { return URL(string: post.imageUrl) }
    
    var userProfileImageUrl: URL? { return URL(string: post.ownerImageUrl) }
    
    var username: String { return post.ownerUsername }
    
    var caption: String { return post.caption }
    
    var likes: Int { return post.likes }
    
    var likeButtonTintColor: UIColor {
        return post.didLike ? .red : .black
    }
    
    var likeButtonImage: UIImage? {
        let imageName = post.didLike ? "like_selected" : "like_unselected"
        return UIImage(named: imageName)
    }
    
    var likesLabelText: String {
        return "좋아요 \(post.likes)개"
    }
    
    var timestampString: String? {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .full
        formatter.calendar?.locale = Locale(identifier: "ko_KR")
        
        guard let formattedString = formatter.string(from: post.timestamp.dateValue(), to: Date()) else { return nil }
        return "\(formattedString) 전"
    }
    
    init(post: Post) {
        self.post = post
    }
}
