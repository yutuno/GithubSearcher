//
//  Result.swift
//  GithubSearcher
//
//  Created by yuto on 2019/04/18.
//  Copyright © 2019 yuto. All rights reserved.
//

public enum Result<T> {
    case success(T)
    case failure(Error)
}
