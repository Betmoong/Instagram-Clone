//
//  ProfileHeaderViewModel.swift
//  InstagramClone
//
//  Created by Rocky on 2023/03/06.
//

import UIKit

struct ProfileHeaderViewModel {
    let user: User
    
    var fullname: String {
        return user.fullname
    }
    
    var profileImageUrl: URL? {
        return URL(string: user.profileImageUrl)
    }
    
    var followButtonText: String {
        if user.isCurrentUser {
            return "프로필 편집"
        }
        
        return user.isFollowed ? "팔로잉" : "팔로우"
    }
    
    var followButtonBackgroundColor: UIColor {
        if user.isCurrentUser || user.isFollowed {
            return .systemGray5
        } else {
            return .systemBlue
        }
    }

    var followButtonTextColor: UIColor {
        if user.isCurrentUser || user.isFollowed {
            return .black
        } else {
            return .white
        }
    }
        
//    var followButtonBackgroundColor: UIColor {
//        return user.userIsFollowed ? .white : .systemBlue
//    }
//
    

//    var followButtonBackgroundColor: UIColor {
//        return user.isCurrentUser ? .white : .systemBlue
//    }
    
//    var followButtonTextColor: UIColor {
//        return user.isCurrentUser ? .black : .white
//    }

    var numberOfFollowers: NSAttributedString {
        return attributedStatText(value: user.stats.followers, label: "팔로워")
    }
    
    var numberOfFollowing: NSAttributedString {
        return attributedStatText(value: user.stats.following, label: "팔로잉")
    }
    
    var numberOfPosts: NSAttributedString {
        return attributedStatText(value: user.stats.posts, label: "게시물")
    }
    
    init(user: User) {
        self.user = user
    }
    
    func attributedStatText(value: Int, label: String) -> NSAttributedString {
        let attributedText = NSMutableAttributedString(string: "\(value)\n", attributes: [.font: UIFont.boldSystemFont(ofSize: 14)])
        attributedText.append(NSAttributedString(string: label, attributes: [.font: UIFont.systemFont(ofSize: 14), .foregroundColor: UIColor.black]))
        return attributedText
    }
}
