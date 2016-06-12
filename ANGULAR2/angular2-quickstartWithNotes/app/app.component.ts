import { Component } from '@angular/core'; // this gives us the @Component decorator

@Component({
  selector: 'my-app',
  template: '<h1>My First Angular 2 App</h1>'
})
export class AppComponent { }

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
