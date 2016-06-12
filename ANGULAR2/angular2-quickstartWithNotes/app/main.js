"use strict";
var platform_browser_dynamic_1 = require('@angular/platform-browser-dynamic');
var app_component_1 = require('./app.component');
platform_browser_dynamic_1.bootstrap(app_component_1.AppComponent);
/***********
2 things we need to launch app
    1: angular's browser <bootstrap> function
    2: app's root component <AppComponent>

Then we call bootstrap with the root component

NOTE: bootstrapping is platform specific : we do not import it from angular/core because there are multiple ways to bootstrap an app

we might load it on a mobile device using ApacheCordova or NativeSript

We might want the first page of our app to render server side

  
***********/
//# sourceMappingURL=main.js.map