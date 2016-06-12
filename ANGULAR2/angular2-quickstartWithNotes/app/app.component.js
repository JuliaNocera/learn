"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var core_1 = require('@angular/core'); // this gives us the @Component decorator
var AppComponent = (function () {
    function AppComponent() {
    }
    AppComponent = __decorate([
        // this gives us the @Component decorator
        core_1.Component({
            selector: 'my-app',
            template: '<h1>My First Angular 2 App</h1>'
        }), 
        __metadata('design:paramtypes', [])
    ], AppComponent);
    return AppComponent;
}());
exports.AppComponent = AppComponent;
/***************
 This quickstart only includes one component but the basic structure is the same for all components :
    1. import statments to reference things we need from other files, outside libraries, etc
    2. an @Component decorator that tells angular what template to use and how to create the component (q: r there many ways to create a component in angular)
    3. component class that controllers the behavior and appearance of a view through its template
***************/
/***************
@Component : selector:
    The selector is a css selector for an html element that represents the component
@Component : template:
    in this case it is a single line of html
    more advanced: use data bindings - identify other app components which have their own templates and so it goes "turtles all the way down"

Component Class :
    empty for this example but notice that we export it here so we can import it elsewhere
***************/
//# sourceMappingURL=app.component.js.map