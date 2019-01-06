function stepping_text(names, time_to_wait_ms, object_to_modify)
{
    var index = 0;
    var appended_text = "";

    var header = object_to_modify.innerHTML

    // Create the interval timer.
    var timerId = setInterval(function() {

        // Clear the timer when we're done.
        if (index >= names.length) {
        	clearInterval(timerId);
            return
        }

        // Perform the concatenation.
    	appended_text = appended_text.concat(names[index]);
        object_to_modify.innerHTML = header + appended_text;
        index = index + 1;

    }, time_to_wait_ms);
}

function load_event()
{
  stepping_text(
     ["Gets", " Shit", " Done", "."],
     500,
     document.getElementById('HeaderText'))
}

window.addEventListener("load", load_event, false);
