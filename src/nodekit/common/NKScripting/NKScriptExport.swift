/*
* nodekit.io
*
* Copyright (c) 2016 OffGrid Networks. All Rights Reserved.
* Portions Copyright 2015 XWebView
* Portions Copyright (c) 2014 Intel Corporation.  All rights reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import Foundation

public enum NKScriptExportType: Int {
    case NKScriptExport = 0
    case JSExport
}

@objc public protocol NKScriptExport : class {
    optional var channelIdentifier: String { get }
    optional func rewriteGeneratedStub(stub: String, forKey: String) -> String
    optional func invokeDefaultMethodWithArguments(args: [AnyObject]!) -> AnyObject!
    optional func finalizeForScript()

    optional static func scriptNameForKey(name: UnsafePointer<Int8>) -> String?
    optional static func scriptNameForSelector(selector: Selector) -> String?
    optional static func isSelectorExcludedFromScript(selector: Selector) -> Bool
    optional static func isKeyExcludedFromScript(name: UnsafePointer<Int8>) -> Bool
}
