

var allAnagrams = function(string) {
  var anagrams = {};

  //text = string of anagram we are building, options is available letters left
  var generator = function(text, options){
    //the length of the text reaches the length of the initial string we know we have one answer 
    if(text.length === string.length){
      anagrams[text] = true;
    }
    //recursive call to generator with the text + a letter as first arg & options[0->i] + options[i+1] meaning you are adding an extra option on each round
    for(var i = 0; i < options.length; i++){
      var next = options.slice(0, i) + options.slice(i+1)
      console.log("options: ", options)
      generator(text + options[i], next);
    }
  }

  //call generator with an emtpy string to build up & the original string passed in for the letter options
  generator('', string);
  //returning just the keys gives you the fully built 'text' and not true
  return Object.keys(anagrams);
};


// var permuter = function(str) {
// 	var arr = Array.from(str);
// 	var allPermutations = [];

// 	for(var i = 0; i < arr.length; i++) {
//     var newArray = [];
//     newArray.push(arr.slice(0,i));
//     newArray.push(arr.slice(i+1, arr.length));
//     var flat = [];

//     for(var j = 0; j < newArray.length; j++){
//         if(newArray[j].length !== 0) {
//             var current = newArray[j];
//             for(var k = 0; k < current.length; k++) {
//                 flat.push(current[k]);
//             }
//         }
// 	    for( var l = 0; l < flat.length; l++){
// 	    	flat[l] = newArray[j] + flat[l];	
// 	    }
//     }    
//     console.log("flat: ",flat);

//     allPermutations.push(flat);
// 	}

// 	return allPermutations;
// }