//
//  AccessToken.swift
//  GithubSearcher
//
//  Created by yuto on 2019/04/18.
//  Copyright © 2019 yuto. All rights reserved.
//

import Foundation

public struct AccessToken: Codable {
    public let accessToken: String
    public let tokenType: String
    public let scope: String
    
    private enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case tokenType = "token_type"
        case scope
    }
    
    public init(accessToken: String, tokenType: String, scope: String) {
        self.accessToken = accessToken
        self.tokenType = tokenType
        self.scope = scope
    }
}
