<!doctype html>
<html lang="kr">
	<head>
	<meta charset="UTF-8">
	<title>http://www.blueb.co.kr</title>

<style>
/* Non essential CSS - Just for example centering */

html, body {
width: 100%;
height: 100%;
margin: 0;
}

.center-outer {
display: table;
width: 100%;
height: 100%;
}

.center-inner {
display: table-cell;
vertical-align: middle;
text-align: center;
}

/* Essential CSS - Makes the effect work */

body {
background-color: #3498db;
}

.bubbles {
display: inline-block;
font-family: arial;
position: relative;

}

.bubbles h1 {
position: relative;
margin: 1em 0 0;
font-family: 'arial';
font-size:50px;
color: #fff;
z-index: 2;

}

.individual-bubble {
position: absolute;
border-radius: 100%;
bottom: 10px;
background-color: #fff;
z-index: 1;

}
.ttttt{
	text-decoration: none;
}
</style>
</head>
<body>

<div class="center-outer">
<div class="center-inner">

<div class="bubbles">
<a href="joinuserindex.jsp" class="ttttt">
<h1>Academy Information</h1></a>
</div>

</div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script type="text/javascript">
jQuery(document).ready(function($){
 
    // Define a blank array for the effect positions. This will be populated based on width of the title.
    var bArray = [];
    // Define a size array, this will be used to vary bubble sizes
    var sArray = [4,6,8,10];
 
    // Push the header width values to bArray
    for (var i = 0; i < $('.bubbles').width(); i++) {
        bArray.push(i);
    }
     
    // Function to select random array element
    // Used within the setInterval a few times
    function randomValue(arr) {
        return arr[Math.floor(Math.random() * arr.length)];
    }
 
    // setInterval function used to create new bubble every 350 milliseconds
    setInterval(function(){
         
        // Get a random size, defined as variable so it can be used for both width and height
        var size = randomValue(sArray);
        // New bubble appeneded to div with it's size and left position being set inline
        // Left value is set through getting a random value from bArray
        $('.bubbles').append('<div class="individual-bubble" style="left: ' + randomValue(bArray) + 'px; width: ' + size + 'px; height:' + size + 'px;"></div>');
         
        // Animate each bubble to the top (bottom 100%) and reduce opacity as it moves
        // Callback function used to remove finsihed animations from the page
        $('.individual-bubble').animate({
            'bottom': '100%',
            'opacity' : '-=0.7'
        }, 3000, function(){
            $(this).remove()
        }
        );
 
 
    }, 350);
 
});
</script>
</body>
</html>
