import { Injectable } from '@angular/core';
import { HEROES } from './mock-heroes';

@Injectable() // typescript sees this injectable decorator and emits metadata about our service which allows dependency injection in this service
export class HeroService {
    getHeroes() {
      return Promise.resolve(HEROES);
    }
}

// "best practice" to apply @Injectable*() decorator from the start for consistency and future proofing 
