function bg() {
    'use strict';
    
    function $(id) {
        return document.getElementById(id);
    }
    
    var overlay = $('overlay'),
    	wrapper = $('bg1'),
        firstBox = $('bg2'),
        mouseX = false,
        mouseY = false;
    
    overlay.onmousemove = function (e) {
        mouseX = 0;
        
        firstBox.style.backgroundPosition = '-' + mouseX * 0.5 + 'px 0';
        
        wrapper.style.backgroundPosition = '-' + mouseX * 0.3 + 'px 0';
        
        mouseX + 0.1;
    };
};