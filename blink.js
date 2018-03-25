// This is the first time i've ever done javascript,
//please don't hate :/
window.addEventListener("load", function() {

    // Setup variables for the timer.
	var names = ["Gets", " shit", " done", "."];
	var cur = 0;
	var str = "";
    var time_to_wait_ms = 500 

    // Grab the element I wish to flash.
    var f = document.getElementById('Foo');

    var orig = f.innerHTML

    // Create the interval timer.
    var timerId = setInterval(function() {

        // Everytime we iterate through the function, append another string.
    	var idx = cur%names.length;
    	if (idx == 0) {
    		str = "";
    	}

        // Perform the concatenation.
    	str = str.concat(names[idx]);
        f.innerHTML= orig + str;
        cur = cur + 1;

        // Clear the timer when we're done.
        if (idx == names.length-1) {
        	clearInterval(timerId);
        }
    }, time_to_wait_ms);

}, false);
