/**
 * Create a hash table with `insert()`, `retrieve()`, and `remove()` methods.
 * Be sure to handle hashing collisions correctly.
 * Set your hash table up to double the storage limit as
 * soon as the total number of items stored is greater than
 * 3/4th of the number of slots in the storage array.
 * Resize by half whenever utilization drops below 1/4.
 */

// This is a "hashing function". You don't need to worry about it, just use it
// to turn any string into an integer that is well-distributed between
// 0 and max - 1
var getIndexBelowMaxForKey = function(str, max){
  var hash = 0;
  for (var i = 0; i < str.length; i++) {
    hash = (hash<<5) + hash + str.charCodeAt(i);
    hash = hash & hash; // Convert to 32bit integer
    hash = Math.abs(hash);
  }
  return hash % max;
};


var makeHashTable = function(){
  var result = {};
  var storage = [];
  var storageLimit = 4;
  var size = 0;

//***Finish This Function***// 
  
  // insert method on result obj --> args key, value
  result.insert = function(key, val){
    var wasFound = false;
    
  	// make hash of key, using storageLimit & key as params   
    var index = getIndexBelowMaxForKey(key, storageLimit);
    var pairs = storage[index] ? storage[index] : []
    var pair;
    
    // check if hashed key exists already, and if it does update value
    for(var i = 0; i < pairs.length; i++){
      pair = pairs[i];
      if(pair[0] === key){
        pair[1] = value;
        wasFound = true;
      }
    }
    
    // add it to our storage as a tuple [kHashed,v]
    if(!wasFound) {
    	pairs.push([key, val]);
    	size++;
    }
		    
    if(size > storageLimit * .75) { 
    	resize(storageLimit * 2);
    } 
    
  };
  
  // retrieve method on result obj takes key arg
  result.retrieve = function(key) {
  	// find index using hash(key, storageLimit)
  	var index = getIndexBelowMaxForKey(key, storageLimit);
  	//look at index of storage []
    var pairs = storage[index];
    var pair;
    var val = "not found";
    for(var i = 0; i < pairs.length; i++) {
    	pair = pairs[i];
      if(pair[0] === key) {
      	val = pair[1];
      }
    }
    return val;
  };
  
  // remove method on result obj (key)
  result.remove = function(key) {
    var val;
  	// find index using the hash function
  	var index = getIndexBelowMaxForKey(key, storageLimit);
    
  	// look up on storage for the index
    var pairs = storage[index];
    var pair;
    for(var i = 0; i < pairs.length; i++) {
    	pair = pairs[i];
      if(pair[0] === key) {
      	val = pair[1];
      	pairs.splice(pair, 1); //   --> instead of delete method(which has some consequences) just set to an empty []
        size--;
      }
    }
  
  	// check for resize needs  
    if(size < storageLimit * .25) {
    	resize(storageLimit * .5);
    }
    return val;
  };

  function resize(newSize){
     //Your code here
     storageLimit = newSize;
  };
  
  return result;
}
  
  
  
  
  
  