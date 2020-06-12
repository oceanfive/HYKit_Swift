//
//  String+HYExtension.swift
//  HYKit_Swift_Example
//
//  Created by ocean on 2020/6/10.
//  Copyright © 2020 ocean. All rights reserved.
//

import Foundation

extension String {

    /// 给url拼接query参数
    /// - Parameter parameters: 参数
    /// - Returns: 处理之后的url
    public func hy_appendingQueryParameters(_ parameters: [String: String]) -> String {
        var url = String(self)
        if !url.contains("?") {
            url += "?"
        }
        for (key, value) in parameters {
            // key 和 value 都不为空才添加
            if !key.isEmpty && !value.isEmpty {
                // 判断是不是第一个拼接的
                if url.contains("=") {
                    if !url.hasSuffix("&") {
                        url += "&"
                    }
                }
                url += "\(key)=\(value)"
            }
        }
        return String(url)
    }
}
