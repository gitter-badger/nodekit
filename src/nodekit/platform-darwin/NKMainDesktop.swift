/*
* nodekit.io
*
* Copyright (c) 2016 OffGrid Networks. All Rights Reserved.
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

import Cocoa

class NKMainDesktop {
      class func start(options: Dictionary<String, AnyObject>, delegate nkScriptDelegate: NKScriptContextDelegate?) {
        let app      = NSApplication.sharedApplication()
        
        NKNSAppDelegate.options = options;
        NKNSAppDelegate.delegate = nkScriptDelegate;
        let nsDelegate = NKNSAppDelegate(app: app)
        app.delegate = nsDelegate
        
        app.setActivationPolicy(.Regular)
        atexit_b { app.setActivationPolicy(.Prohibited); return }
        app.activateIgnoringOtherApps(true)
        app.run()
    }
}
