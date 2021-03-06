/*
 * nodekit.io
 *
 * Copyright (c) 2016 OffGrid Networks. All Rights Reserved.
 * Portions Copyright (c) 2013 GitHub, Inc. under MIT License
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

var app = io.nodekit.electro.app;
var bindings = app;

app.commandLine = {
appendSwitch: bindings.appendSwitch,
appendArgument: bindings.appendArgument
};

if (process.platform === 'darwin') {
    app.dock = {
    bounce: function(type) {
        if (type == null) {
            type = 'informational';
        }
        return bindings.dockBounce(type);
    },
    cancelBounce: bindings.dockCancelBounce,
    setBadge: bindings.dockSetBadgeText,
    getBadge: bindings.dockGetBadgeText,
    hide: bindings.dockHide,
    show: bindings.dockShow,
    setMenu: bindings.dockSetMenu
    };
}
