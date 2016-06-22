import { Component, Input } from '@angular/core';
import { Hero } from './hero';

@Component({
  selector: 'my-hero-detail', 
  template:
})

export class HeroDetailComponent {
   @Input()
   hero: Hero;
}
