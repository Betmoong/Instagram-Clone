//
//  UserCellViewModel.swift
//  InstagramClone
//
//  Created by Rocky on 2023/03/07.
//

import Foundation

struct UserCellViewModel {
    private let user: User
    
    var profileImageURL: URL? {
        return URL(string: user.profileImageUrl)
    }
    
    var username: String {
        return user.username
    }
    
    var fullname: String {
        return user.fullname
    }
    
    init(user: User) {
        self.user = user
    }
}
