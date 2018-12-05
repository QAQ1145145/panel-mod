/*
 * Author: Alex Gibson
 * https://github.com/alexgibson/shake.js
 * License: MIT license
 */

/**
 * Minified by jsDelivr using UglifyJS v3.4.3.
 * Original file: /npm/shake.js@1.2.2/shake.js
 * 
 * Do NOT use SRI with dynamically generated files! More information: https://www.jsdelivr.com/using-sri-with-dynamic-files
 */
!function(t,e){"function"==typeof define&&define.amd?define(function(){return e(t,t.document)}):"undefined"!=typeof module&&module.exports?module.exports=e(t,t.document):t.Shake=e(t,t.document)}("undefined"!=typeof window?window:this,function(o,i){"use strict";function t(t){if(this.hasDeviceMotion="ondevicemotion"in o,this.options={threshold:15,timeout:1e3},"object"==typeof t)for(var e in t)t.hasOwnProperty(e)&&(this.options[e]=t[e]);if(this.lastTime=new Date,this.lastX=null,this.lastY=null,this.lastZ=null,"function"==typeof i.CustomEvent)this.event=new i.CustomEvent("shake",{bubbles:!0,cancelable:!0});else{if("function"!=typeof i.createEvent)return!1;this.event=i.createEvent("Event"),this.event.initEvent("shake",!0,!0)}}return t.prototype.reset=function(){this.lastTime=new Date,this.lastX=null,this.lastY=null,this.lastZ=null},t.prototype.start=function(){this.reset(),this.hasDeviceMotion&&o.addEventListener("devicemotion",this,!1)},t.prototype.stop=function(){this.hasDeviceMotion&&o.removeEventListener("devicemotion",this,!1),this.reset()},t.prototype.devicemotion=function(t){var e,i,s,n=t.accelerationIncludingGravity;if(null===this.lastX&&null===this.lastY&&null===this.lastZ)return this.lastX=n.x,this.lastY=n.y,void(this.lastZ=n.z);e=Math.abs(this.lastX-n.x),i=Math.abs(this.lastY-n.y),s=Math.abs(this.lastZ-n.z),(e>this.options.threshold&&i>this.options.threshold||e>this.options.threshold&&s>this.options.threshold||i>this.options.threshold&&s>this.options.threshold)&&(new Date).getTime()-this.lastTime.getTime()>this.options.timeout&&(o.dispatchEvent(this.event),this.lastTime=new Date),this.lastX=n.x,this.lastY=n.y,this.lastZ=n.z},t.prototype.handleEvent=function(t){if("function"==typeof this[t.type])return this[t.type](t)},t});
//# sourceMappingURL=/sm/2d9a4a6c86a2a00af4ccfadca82f960fd3db460ffedf89839fcc73aa03b6a47d.map

(function(global, factory) {
    if (typeof define === 'function' && define.amd) {
        define(function() {
            return factory(global, global.document);
        });
    } else if (typeof module !== 'undefined' && module.exports) {
        module.exports = factory(global, global.document);
    } else {
        global.Shake = factory(global, global.document);
    }
} (typeof window !== 'undefined' ? window : this, function (window, document) {

    'use strict';

    function Shake(options) {
        //feature detect
        this.hasDeviceMotion = 'ondevicemotion' in window;

        this.options = {
            threshold: 15, //default velocity threshold for shake to register
            timeout: 1000 //default interval between events
        };

        if (typeof options === 'object') {
            for (var i in options) {
                if (options.hasOwnProperty(i)) {
                    this.options[i] = options[i];
                }
            }
        }

        //use date to prevent multiple shakes firing
        this.lastTime = new Date();

        //accelerometer values
        this.lastX = null;
        this.lastY = null;
        this.lastZ = null;

        //create custom event
        if (typeof document.CustomEvent === 'function') {
            this.event = new document.CustomEvent('shake', {
                bubbles: true,
                cancelable: true
            });
        } else if (typeof document.createEvent === 'function') {
            this.event = document.createEvent('Event');
            this.event.initEvent('shake', true, true);
        } else {
            return false;
        }
    }

    //reset timer values
    Shake.prototype.reset = function () {
        this.lastTime = new Date();
        this.lastX = null;
        this.lastY = null;
        this.lastZ = null;
    };

    //start listening for devicemotion
    Shake.prototype.start = function () {
        this.reset();
        if (this.hasDeviceMotion) {
            window.addEventListener('devicemotion', this, false);
        }
    };

    //stop listening for devicemotion
    Shake.prototype.stop = function () {
        if (this.hasDeviceMotion) {
            window.removeEventListener('devicemotion', this, false);
        }
        this.reset();
    };

    //calculates if shake did occur
    Shake.prototype.devicemotion = function (e) {
        var current = e.accelerationIncludingGravity;
        var currentTime;
        var timeDifference;
        var deltaX = 0;
        var deltaY = 0;
        var deltaZ = 0;

        if ((this.lastX === null) && (this.lastY === null) && (this.lastZ === null)) {
            this.lastX = current.x;
            this.lastY = current.y;
            this.lastZ = current.z;
            return;
        }

        deltaX = Math.abs(this.lastX - current.x);
        deltaY = Math.abs(this.lastY - current.y);
        deltaZ = Math.abs(this.lastZ - current.z);

        if (((deltaX > this.options.threshold) && (deltaY > this.options.threshold)) || ((deltaX > this.options.threshold) && (deltaZ > this.options.threshold)) || ((deltaY > this.options.threshold) && (deltaZ > this.options.threshold))) {
            //calculate time in milliseconds since last shake registered
            currentTime = new Date();
            timeDifference = currentTime.getTime() - this.lastTime.getTime();

            if (timeDifference > this.options.timeout) {
                window.dispatchEvent(this.event);
                this.lastTime = new Date();
            }
        }

        this.lastX = current.x;
        this.lastY = current.y;
        this.lastZ = current.z;

    };

    //event handler
    Shake.prototype.handleEvent = function (e) {
        if (typeof (this[e.type]) === 'function') {
            return this[e.type](e);
        }
    };

    return Shake;
}));
