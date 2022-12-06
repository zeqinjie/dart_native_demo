//
//  TWImCommonService.swift
//  house591
//
//  Created by zhengzeqin on 2022/9/21.
//  IM 公用通讯服务

import UIKit
import MJExtension

enum CommonServiceSendModelType: String {
    case connectStatus = "1"
    case message = "2"
    case unReaderNumber = "3"
    case reloadList = "4"
}

@objcMembers class CommonServiceSendModel: NSObject {
    var type = ""
    var value = ""
}

@objcMembers class CommonService: NSObject {
    static let shared = CommonService()
    
    typealias CommonServiceResultCallbackBlock = (String) -> Void
    
    var flutterCallBacks:[CommonServiceResultCallbackBlock] = []
    
//    fileprivate var flutterCallBack:TWImCommonServiceResultCallbackBlock?
    // MARK: - Register
    /// 设置来自flutter的回调函数
    func initFromFlutter(_ block:@escaping CommonServiceResultCallbackBlock) {
//        flutterCallBack = block
        /// 获取当前的 flutter page, 注意要对得上当前的引擎的 flutter page
        flutterCallBacks.append(block)
        print("flutterCallBacks 添加: ===> \(self.flutterCallBacks)")
    }
    
    /// 给 flutter 端传消息
    func handlerToFlutter(model: CommonServiceSendModel) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
//            guard let _flutterCallBack = self.flutterCallBack else { return }
            guard let dic = model.mj_keyValues() as? [String: Any]  else { return }
            guard let result = dic.dictionaryToJson() else { return }
//            _flutterCallBack(result)
            print("flutterCallBacks 给 flutter 端传消息: ===> \(self.flutterCallBacks)")
            for block in self.flutterCallBacks {
                block(result)
            }
        }
    }
    
    /// 移除注册
    func removeFromFlutter() {
        if (!flutterCallBacks.isEmpty) {
            flutterCallBacks.removeLast()
            print("flutterCallBacks 移除: ===> \(self.flutterCallBacks)")
        }
    }
    
    // MARK: - Native -> Flutter
    /// 同步请求状态
    func sendCount(value: Int) {
        let model = CommonServiceSendModel()
        model.value = String(value)
        model.type = CommonServiceSendModelType.connectStatus.rawValue
        handlerToFlutter(model: model)
    }

    /// 同步消息
    func sendMessage(value: String) {
        let model = CommonServiceSendModel()
        model.value = value
        model.type = CommonServiceSendModelType.message.rawValue
        handlerToFlutter(model: model)
    }
    
    // MARK: - Flutter -> Native
    /// 获取Im token
    func getTitle() -> String {
        return "值: \(DataModel.shared.count)"
    }

}


public extension Dictionary {
    
    // MARK: 2.1、字典转JSON
    /// 字典转JSON
    @discardableResult
    func dictionaryToJson() -> String? {
        if (!JSONSerialization.isValidJSONObject(self)) {
            print("无法解析出JSONString")
            return nil
        }
        if let data = try? JSONSerialization.data(withJSONObject: self) {
            let JSONString = NSString(data:data,encoding: String.Encoding.utf8.rawValue)
            return JSONString! as String
        } else {
            print("无法解析出JSONString")
            return nil
        }
    }
}
