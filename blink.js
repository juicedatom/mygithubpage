//This is the first time i've ever done javascript,
//please don't hate :/
window.addEventListener("load", function() {
	var names = ["Gets", " shit", " done", "."];
	var cur = 0;
	var str = "";
    var f = document.getElementById('Foo');
    var timerId = setInterval(function() {
    	var idx = cur%names.length;
    	if (idx == 0) {
    		str = "";
    	}

    	str = str.concat(names[idx]);
        f.innerHTML= str;
        cur = cur + 1;

        if (idx == names.length-1) {
        	clearInterval(timerId);
        }
    }, 2000);
}, false);