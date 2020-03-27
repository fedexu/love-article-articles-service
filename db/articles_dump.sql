INSERT INTO articles.articles (id,"name",description,markdown,html,url,tag) VALUES 
('9a8e0d3a-e685-4356-9d06-86818c8b281d','AMD','a standard defining how to load JavaScript libraries or modules asynchronously','

# AMD

[AMD](https://github.com/amdjs/amdjs-api/wiki/AMD) stands for Asynchronous Module Definition. It is an alternative to [CommonJS (CJS)](/_glossary/COMMONJS.md) specification.

The API specifies a mechanism for defining modules such that the module and its dependencies can be asynchronously loaded. This is particularly well suited for the browser environment where synchronous loading of modules incurs performance, usability, debugging, and cross-domain access problems.

AMD libraries expose a global `define` function whose footprint is

```js
define(modulename?,[dependencyA?, dependencyB?, …], function (objectA, objectB, …) {
...
    var myExportedObj = function() { … }
    return myExportedObj;

});
```

Where

- `modulename` is an optional string parameter to explicitly declare the id of the current module
- `dependencyA`, `dependencyB` and so on, are the dependencies for the current module
- `function(objectA, objectB) {...}` is a factory whose arguments are the exported objects of each dependency.
- `myExportedObj` an optional return value (since a module might be just adding methods to an existing object) but, if declared, it would be this module’s exported object, which other modules would get if they list `modulename` among their dependencies.

Aside from the global `define` function, an AMD compliant library must have a `define.amd` property whose value is an object. Checking for the existence of both `define` and `define.amd` in the global scope allows any script to verify it is being called from an AMD loader.

Examples of libraries providing AMD loading capabilities are:

- [RequireJS](/_glossary/REQUIREJS.md) written by Mozilla’s [James Burke](https://github.com/jrburke/). One of the first ones to become widely used and still the most popular. It provides a limited interoperability with [CommonJS](/_glossary/COMMONJS.md) modules too.
- [CurlJS](https://github.com/cujojs/curl) part of the [CujoJS Framework](http://cujojs.com/). CurlJS is less popular than RequireJS and is receiving only maintenance updates, no new features since 2014.
- [Alameda](https://github.com/requirejs/alameda) also made by James Burke, it’s like RequireJS but using promises to manage the completion events.
- [Cajon](https://github.com/requirejs/cajon) also made by James Burke, it’s like a decorator for RequireJS that replaces the `load` method to fetch dependencies through [AJAX](/_glossary/AJAX.md) calls.
- [SystemJS](https://github.com/systemjs/systemjs) by [Guy Bedford](https://github.com/guybedford) who, until a couple of years ago, was one of the most active plugin developers for RequireJS. SystemJS can load AMD, CommonJS and [ES6](/_glossary/ECMASCRIPT.md) modules seamlessly and is mostly used in combination with [jspm](http://jspm.io/), which acts as a dependency manager (not unlike [Bower](/_glossary/BOWER.md)) leveraging in Github and [npm](/_glossary/NPM.md).

All these libraries allow for the developer to preview a project without any build step, requesting the dependencies asynchronously. There’s usually an optional (but reccomended) build or bundling step for production deploys, in order to minify the code and minimize the number of requests in order to enhance load times. Allegedly, the coming of [HTTP2](https://http2.github.io/) support in browsers and webservers should eliminate the need for extra requests when loading dependencies asynchronously, thus eliminating the need of a build step.

Other libraries that can’t load dependencies asynchronously but can include AMD modules in their build workflow, are, for example:

- [Webpack](/_glossary/WEBPACK.md)
- [Rollup](http://rollupjs.org/)
- [StealJS](http://stealjs.com/)
','<h1 id="amd">AMD</h1>
<p><a href="https://github.com/amdjs/amdjs-api/wiki/AMD">AMD</a> stands for Asynchronous Module Definition. It is an alternative to <a href="/_glossary/COMMONJS.md">CommonJS (CJS)</a> specification.</p>
<p>The API specifies a mechanism for defining modules such that the module and its dependencies can be asynchronously loaded. This is particularly well suited for the browser environment where synchronous loading of modules incurs performance, usability, debugging, and cross-domain access problems.</p>
<p>AMD libraries expose a global <code>define</code> function whose footprint is</p>
<pre><code class="lang-js">define(modulename?,[dependencyA?, dependencyB?, …], function (objectA, objectB, …) {
...
    var myExportedObj = function() { … }
    return myExportedObj;

});
</code></pre>
<p>Where</p>
<ul>
<li><code>modulename</code> is an optional string parameter to explicitly declare the id of the current module</li>
<li><code>dependencyA</code>, <code>dependencyB</code> and so on, are the dependencies for the current module</li>
<li><code>function(objectA, objectB) {...}</code> is a factory whose arguments are the exported objects of each dependency.</li>
<li><code>myExportedObj</code> an optional return value (since a module might be just adding methods to an existing object) but, if declared, it would be this module’s exported object, which other modules would get if they list <code>modulename</code> among their dependencies.</li>
</ul>
<p>Aside from the global <code>define</code> function, an AMD compliant library must have a <code>define.amd</code> property whose value is an object. Checking for the existence of both <code>define</code> and <code>define.amd</code> in the global scope allows any script to verify it is being called from an AMD loader.</p>
<p>Examples of libraries providing AMD loading capabilities are:</p>
<ul>
<li><a href="/_glossary/REQUIREJS.md">RequireJS</a> written by Mozilla’s <a href="https://github.com/jrburke/">James Burke</a>. One of the first ones to become widely used and still the most popular. It provides a limited interoperability with <a href="/_glossary/COMMONJS.md">CommonJS</a> modules too.</li>
<li><a href="https://github.com/cujojs/curl">CurlJS</a> part of the <a href="http://cujojs.com/">CujoJS Framework</a>. CurlJS is less popular than RequireJS and is receiving only maintenance updates, no new features since 2014.</li>
<li><a href="https://github.com/requirejs/alameda">Alameda</a> also made by James Burke, it’s like RequireJS but using promises to manage the completion events.</li>
<li><a href="https://github.com/requirejs/cajon">Cajon</a> also made by James Burke, it’s like a decorator for RequireJS that replaces the <code>load</code> method to fetch dependencies through <a href="/_glossary/AJAX.md">AJAX</a> calls.</li>
<li><a href="https://github.com/systemjs/systemjs">SystemJS</a> by <a href="https://github.com/guybedford">Guy Bedford</a> who, until a couple of years ago, was one of the most active plugin developers for RequireJS. SystemJS can load AMD, CommonJS and <a href="/_glossary/ECMASCRIPT.md">ES6</a> modules seamlessly and is mostly used in combination with <a href="http://jspm.io/">jspm</a>, which acts as a dependency manager (not unlike <a href="/_glossary/BOWER.md">Bower</a>) leveraging in Github and <a href="/_glossary/NPM.md">npm</a>.</li>
</ul>
<p>All these libraries allow for the developer to preview a project without any build step, requesting the dependencies asynchronously. There’s usually an optional (but reccomended) build or bundling step for production deploys, in order to minify the code and minimize the number of requests in order to enhance load times. Allegedly, the coming of <a href="https://http2.github.io/">HTTP2</a> support in browsers and webservers should eliminate the need for extra requests when loading dependencies asynchronously, thus eliminating the need of a build step.</p>
<p>Other libraries that can’t load dependencies asynchronously but can include AMD modules in their build workflow, are, for example:</p>
<ul>
<li><a href="/_glossary/WEBPACK.md">Webpack</a></li>
<li><a href="http://rollupjs.org/">Rollup</a></li>
<li><a href="http://stealjs.com/">StealJS</a></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/AMD.md','#JS')
,('942fbaa7-c536-4e8a-ac51-7dbbfd1664b3','Ajax','a technology for asynchronous HTTP requests','

# Ajax

[Ajax](https://developer.mozilla.org/en-US/docs/AJAX) is a technique for creating seamless interactive websites via asynchronous data exchange between client and server. Ajax facilitates communication with the server via partial page updates instead of the traditional full-page refresh.
','<h1 id="ajax">Ajax</h1>
<p><a href="https://developer.mozilla.org/en-US/docs/AJAX">Ajax</a> is a technique for creating seamless interactive websites via asynchronous data exchange between client and server. Ajax facilitates communication with the server via partial page updates instead of the traditional full-page refresh.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/AJAX.md','#JS')
,('335bc655-f0b4-4068-b15e-9dd510941e8f','Apache Cordova','a popular mobile application development framework originally created by Nitobi','

# PhoneGap

[Apache Cordova](http://phonegap.com/) (formerly **PhoneGap**) is a popular mobile application development framework originally created by Nitobi. Adobe Systems purchased Nitobi in 2011, rebranded it as PhoneGap, and later released an open source version of the software called Apache Cordova. Apache Cordova enables software programmers to build applications for mobile devices using JavaScript, HTML5, and CSS3, instead of relying on platform-specific APIs like those in Android, iOS, or Windows Phone. It enables wrapping up of CSS, HTML, and JavaScript code depending upon the platform of the device. It extends the features of HTML and JavaScript to work with the device. The resulting applications are hybrid, meaning that they are neither truly native mobile application (because all layout rendering is done via Web views instead of the platform’s native UI framework) nor purely Web-based (because they are not just Web apps, but are packaged as apps for distribution and have access to native device APIs). Mixing native and hybrid code snippets has been possible since version 1.9.

The software was previously called just “PhoneGap”, then “Apache Callback”. As open-source software, Apache Cordova allows wrappers around it, such as Intel XDK or Appery.io.

PhoneGap is Adobe’s productized version and ecosystem on top of Cordova. Like PhoneGap, many other tools and frameworks are also built on top of Cordova, including Ionic, the Intel XDK, Monaca, TACO, and the Telerik Platform. These tools use Cordova, and not PhoneGap for their core tools.

Contributors to the Apache Cordova project include Adobe, IBM, Google, Microsoft, Intel, BlackBerry, Mozilla, and others.

## History

First developed at an iPhoneDevCamp event in San Francisco, PhoneGap went on to win the People’s Choice Award at O’Reilly Media’s 2009 Web 2.0 Conference, and the framework has been used to develop many apps. Apple Inc. has confirmed that the framework has its approval, even with the new 4.0 developer license agreement changes. The PhoneGap framework is used by several mobile application platforms such as Asial’s Monaca, ViziApps, Worklight, Convertigo, and appMobi as the backbone of their mobile client development engine.

Adobe officially announced the acquisition of Nitobi Software (the original developer) on October 4, 2011. Coincident with that, the PhoneGap code was contributed to the Apache Software Foundation to start a new project called Apache Cordova. The project’s original name, Apache Callback, was viewed as too generic. Then it also appears in Adobe Systems as Adobe PhoneGap and also as Adobe Phonegap Build.

Early versions of PhoneGap required an Apple computer to create iOS apps and a Windows computer to create Windows Mobile apps. After September 2012, Adobe’s PhoneGap Build service allows programmers to upload HTML, CSS, and JavaScript source code to a “cloud compiler” that generates apps for every supported platform.

## Design and rationale

The core of Apache Cordova applications use HTML5 and CSS3 for their rendering and JavaScript for their logic. HTML5 now provides access to underlying hardware such as the accelerometer, camera, and GPS. However, browser support for HTML5-based device access is not consistent across mobile browsers, particularly older versions of Android. To overcome these limitations, Apache Cordova embeds HTML5 code inside a native WebView on the device, using a foreign function interface to access the native resources of the device.

Apache Cordova can be extended with native plug-ins that allow for developers to add functionality that can be called from JavaScript, allowing for direct communication between the native layer and the HTML5 page. Apache Cordova includes basic plugins that allow access to the device’s accelerometer, camera, microphone, compass, file system, and more.

However, the use of Web-based technologies leads some Apache Cordova applications to run slower than native applications with similar functionality. Adobe Systems warns that applications may be rejected by Apple for being too slow or not feeling “native” enough (having appearance and functionality consistent with what users have come to expect on the platform). This can be an issue for some Apache Cordova applications.

## Supported platforms

As of January 2016, Apache Cordova currently supports development for the operating systems Apple iOS, BlackBerry, Google Android, LG webOS, Microsoft Windows Phone (7 and 8), Nokia Symbian OS, Tizen (SDK 2.x), Bada, Firefox OS, and Ubuntu Touch. The table below is a list of supported features for each operating system.

| Feature | iPhone | Android | Windows Phone | BlackBerry OS | Bada | Symbian | Tizen |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Accelerometer | Yes | Yes | Yes | 5.0+ | Yes | Yes | Yes |
| Camera | Yes | Yes | Yes | 5.0+ | Yes | Yes | Yes |
| Compass | 3GS+ | Yes | Yes | 10+ | Yes | **N/A** | Yes |
| Contacts | Yes | Yes | Yes | 5.0+ | Yes | Yes | Yes |
| File | Yes | Yes | Yes | 5.0+ | Yes | **N/A** | Yes |
| Geolocation | Yes | Yes | Yes | Yes | Yes | Yes | Yes |
| Media | Yes | Yes | Yes | 10+ | **N/A** | **N/A** | Yes |
| Network | Yes | Yes | Yes | Yes | Yes | Yes | Yes |
| Notification | Yes | Yes | Yes | Yes | Yes | Yes | Yes |
| Storage | Yes | Yes | Yes | 5.0+ | **N/A** | Yes | Yes |

----------

*Source:*

- [Apache Cordova](https://en.wikipedia.org/wiki/Apache_Cordova)*. From Wikipedia, the free encyclopedia*
','<h1 id="phonegap">PhoneGap</h1>
<p><a href="http://phonegap.com/">Apache Cordova</a> (formerly <strong>PhoneGap</strong>) is a popular mobile application development framework originally created by Nitobi. Adobe Systems purchased Nitobi in 2011, rebranded it as PhoneGap, and later released an open source version of the software called Apache Cordova. Apache Cordova enables software programmers to build applications for mobile devices using JavaScript, HTML5, and CSS3, instead of relying on platform-specific APIs like those in Android, iOS, or Windows Phone. It enables wrapping up of CSS, HTML, and JavaScript code depending upon the platform of the device. It extends the features of HTML and JavaScript to work with the device. The resulting applications are hybrid, meaning that they are neither truly native mobile application (because all layout rendering is done via Web views instead of the platform’s native UI framework) nor purely Web-based (because they are not just Web apps, but are packaged as apps for distribution and have access to native device APIs). Mixing native and hybrid code snippets has been possible since version 1.9.</p>
<p>The software was previously called just “PhoneGap”, then “Apache Callback”. As open-source software, Apache Cordova allows wrappers around it, such as Intel XDK or Appery.io.</p>
<p>PhoneGap is Adobe’s productized version and ecosystem on top of Cordova. Like PhoneGap, many other tools and frameworks are also built on top of Cordova, including Ionic, the Intel XDK, Monaca, TACO, and the Telerik Platform. These tools use Cordova, and not PhoneGap for their core tools.</p>
<p>Contributors to the Apache Cordova project include Adobe, IBM, Google, Microsoft, Intel, BlackBerry, Mozilla, and others.</p>
<h2 id="history">History</h2>
<p>First developed at an iPhoneDevCamp event in San Francisco, PhoneGap went on to win the People’s Choice Award at O’Reilly Media’s 2009 Web 2.0 Conference, and the framework has been used to develop many apps. Apple Inc. has confirmed that the framework has its approval, even with the new 4.0 developer license agreement changes. The PhoneGap framework is used by several mobile application platforms such as Asial’s Monaca, ViziApps, Worklight, Convertigo, and appMobi as the backbone of their mobile client development engine.</p>
<p>Adobe officially announced the acquisition of Nitobi Software (the original developer) on October 4, 2011. Coincident with that, the PhoneGap code was contributed to the Apache Software Foundation to start a new project called Apache Cordova. The project’s original name, Apache Callback, was viewed as too generic. Then it also appears in Adobe Systems as Adobe PhoneGap and also as Adobe Phonegap Build.</p>
<p>Early versions of PhoneGap required an Apple computer to create iOS apps and a Windows computer to create Windows Mobile apps. After September 2012, Adobe’s PhoneGap Build service allows programmers to upload HTML, CSS, and JavaScript source code to a “cloud compiler” that generates apps for every supported platform.</p>
<h2 id="design-and-rationale">Design and rationale</h2>
<p>The core of Apache Cordova applications use HTML5 and CSS3 for their rendering and JavaScript for their logic. HTML5 now provides access to underlying hardware such as the accelerometer, camera, and GPS. However, browser support for HTML5-based device access is not consistent across mobile browsers, particularly older versions of Android. To overcome these limitations, Apache Cordova embeds HTML5 code inside a native WebView on the device, using a foreign function interface to access the native resources of the device.</p>
<p>Apache Cordova can be extended with native plug-ins that allow for developers to add functionality that can be called from JavaScript, allowing for direct communication between the native layer and the HTML5 page. Apache Cordova includes basic plugins that allow access to the device’s accelerometer, camera, microphone, compass, file system, and more.</p>
<p>However, the use of Web-based technologies leads some Apache Cordova applications to run slower than native applications with similar functionality. Adobe Systems warns that applications may be rejected by Apple for being too slow or not feeling “native” enough (having appearance and functionality consistent with what users have come to expect on the platform). This can be an issue for some Apache Cordova applications.</p>
<h2 id="supported-platforms">Supported platforms</h2>
<p>As of January 2016, Apache Cordova currently supports development for the operating systems Apple iOS, BlackBerry, Google Android, LG webOS, Microsoft Windows Phone (7 and 8), Nokia Symbian OS, Tizen (SDK 2.x), Bada, Firefox OS, and Ubuntu Touch. The table below is a list of supported features for each operating system.</p>
<table>
<thead>
<tr>
<th>Feature</th>
<th>iPhone</th>
<th>Android</th>
<th>Windows Phone</th>
<th>BlackBerry OS</th>
<th>Bada</th>
<th>Symbian</th>
<th>Tizen</th>
</tr>
</thead>
<tbody>
<tr>
<td>Accelerometer</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>5.0+</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
</tr>
<tr>
<td>Camera</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>5.0+</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
</tr>
<tr>
<td>Compass</td>
<td>3GS+</td>
<td>Yes</td>
<td>Yes</td>
<td>10+</td>
<td>Yes</td>
<td><strong>N/A</strong></td>
<td>Yes</td>
</tr>
<tr>
<td>Contacts</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>5.0+</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
</tr>
<tr>
<td>File</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>5.0+</td>
<td>Yes</td>
<td><strong>N/A</strong></td>
<td>Yes</td>
</tr>
<tr>
<td>Geolocation</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
</tr>
<tr>
<td>Media</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>10+</td>
<td><strong>N/A</strong></td>
<td><strong>N/A</strong></td>
<td>Yes</td>
</tr>
<tr>
<td>Network</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
</tr>
<tr>
<td>Notification</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
</tr>
<tr>
<td>Storage</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>5.0+</td>
<td><strong>N/A</strong></td>
<td>Yes</td>
<td>Yes</td>
</tr>
</tbody>
</table>
<hr>
<p><em>Source:</em></p>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Apache_Cordova">Apache Cordova</a><em>. From Wikipedia, the free encyclopedia</em></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/APACHECORDOVA.md','#MOBILE')
,('7d83bf44-4c9b-4cce-b5db-063b1a9b6d05','Backbone','a structural framework for dynamic web apps','

# Backbone

[Backbone.js](http://backbonejs.org/) is a framework giving structure to web applications by providing models with key-value binding and custom events, collections with a rich API of enumerable functions, views with declarative event handling, and connects it all to existing APIs over a RESTful [JSON](/_glossary/JSON.md) interface.
','<h1 id="backbone">Backbone</h1>
<p><a href="http://backbonejs.org/">Backbone.js</a> is a framework giving structure to web applications by providing models with key-value binding and custom events, collections with a rich API of enumerable functions, views with declarative event handling, and connects it all to existing APIs over a RESTful <a href="/_glossary/JSON.md">JSON</a> interface.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/BACKBONE.md','#PWA')
,('8f3b5c64-3770-495f-a749-089225b715de','Bower','a package manager for front-end dependencies','

# Bower

[Bower](http://bower.io/) is a package manager for front-end dependencies. It takes care of hunting, finding, downloading, saving these dependencies and keeping track of them in a manifest file called `bower.json`. Bower uses a flat dependency tree, requiring only one version for each package, reducing page load to a minimum.
','<h1 id="bower">Bower</h1>
<p><a href="http://bower.io/">Bower</a> is a package manager for front-end dependencies. It takes care of hunting, finding, downloading, saving these dependencies and keeping track of them in a manifest file called <code>bower.json</code>. Bower uses a flat dependency tree, requiring only one version for each package, reducing page load to a minimum.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/BOWER.md','#JS')
,('29567694-003d-4140-8029-f41086aa4ec7','Browserify','a tool making possible to use the `require` function from Node.js within the browser','

# Browserify

[Browserify](http://browserify.org/) is a tool that allows you to use the [require](https://nodejs.org/api/modules.html) [Node.js](/_glossary/NODEJS.md) function while working for the browser by bundling up all the required dependencies. 

The idea behind Browserify is to make it possible to use existing libraries from [npm](/_glossary/NPM.md) even when writing code for the client side. To allow this, it goes through the code, request the required dependencies, then create a single file containing everything: both the dependencies and the code using them.
','<h1 id="browserify">Browserify</h1>
<p><a href="http://browserify.org/">Browserify</a> is a tool that allows you to use the <a href="https://nodejs.org/api/modules.html">require</a> <a href="/_glossary/NODEJS.md">Node.js</a> function while working for the browser by bundling up all the required dependencies. </p>
<p>The idea behind Browserify is to make it possible to use existing libraries from <a href="/_glossary/NPM.md">npm</a> even when writing code for the client side. To allow this, it goes through the code, request the required dependencies, then create a single file containing everything: both the dependencies and the code using them.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/BROWSERIFY.md','#JS')
,('ab67642a-bcf8-484c-a937-960ec0b2ba35','Closure','a way of referencing variables from a child function while retaining their value even if it changes in the parent function','

# Closure

A closure is function that closes over its environment. It has access to the state of the environment, but the variables inside the closure are private.

Example:

```js
(function (){
  var scopeVar = ''Hello'';

  (function closure(){
    var closureVar = '' World'';
    console.log(scopeVar + closureVar);    
  })();
})();
```

`scopeVar` is accessible inside the outer and the inner function, but `closureVar` is only accessible inside the inner function.
','<h1 id="closure">Closure</h1>
<p>A closure is function that closes over its environment. It has access to the state of the environment, but the variables inside the closure are private.</p>
<p>Example:</p>
<pre><code class="lang-js">(function (){
  var scopeVar = &#39;Hello&#39;;

  (function closure(){
    var closureVar = &#39; World&#39;;
    console.log(scopeVar + closureVar);    
  })();
})();
</code></pre>
<p><code>scopeVar</code> is accessible inside the outer and the inner function, but <code>closureVar</code> is only accessible inside the inner function.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/CLOSURE.md','#OTHER')
,('fbe1b61c-c68b-4c04-9796-2379c2a9d89f','Coffeescript','a language that compiles into JavaScript','

# CoffeeScript

[CoffeeScript](http://coffeescript.org/) is a little language that compiles into JavaScript. It is an attempt to expose the good parts of JavaScript in a simple way and friendly syntax, the golden rule being: “It’s just JavaScript”.

The code compiles one-to-one into the equivalent JavaScript, and there is no interpretation at runtime. The compiled output is readable and pretty-printed, will work in every JavaScript runtime, and tends to run as fast or faster than the equivalent handwritten JavaScript.
','<h1 id="coffeescript">CoffeeScript</h1>
<p><a href="http://coffeescript.org/">CoffeeScript</a> is a little language that compiles into JavaScript. It is an attempt to expose the good parts of JavaScript in a simple way and friendly syntax, the golden rule being: “It’s just JavaScript”.</p>
<p>The code compiles one-to-one into the equivalent JavaScript, and there is no interpretation at runtime. The compiled output is readable and pretty-printed, will work in every JavaScript runtime, and tends to run as fast or faster than the equivalent handwritten JavaScript.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/COFFEESCRIPT.md','#JS')
,('bb17382d-ee6a-4a7e-9be7-343de78af713','CORS','a way for a server to make things accessible to pages hosted on other domains','

# CORS

[CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS) stands for Cross Origin Resource sharing. It’s a way for a server to allow pages hosted on other domains (technically other origins) to make http requests to it.

A web page can usually embed images, scripts, video, audio, etc. from any location it wants. However, web fonts and [AJAX](/_glossary/AJAX.md) requests can usually only make requests to the same origin the web page is served from, because of the [same-origin policy](https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy). CORS allows a server to mark [resources](https://en.wikipedia.org/wiki/Web_resource) as shared with other origins, by sending an `Access-Control-Allow-Origin` [header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers) in response to an [OPTIONS](http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9.2) request from the browser.

For information on how to set this up on your server, refer to [this document](http://enable-cors.org/server.html).
','<h1 id="cors">CORS</h1>
<p><a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS">CORS</a> stands for Cross Origin Resource sharing. It’s a way for a server to allow pages hosted on other domains (technically other origins) to make http requests to it.</p>
<p>A web page can usually embed images, scripts, video, audio, etc. from any location it wants. However, web fonts and <a href="/_glossary/AJAX.md">AJAX</a> requests can usually only make requests to the same origin the web page is served from, because of the <a href="https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy">same-origin policy</a>. CORS allows a server to mark <a href="https://en.wikipedia.org/wiki/Web_resource">resources</a> as shared with other origins, by sending an <code>Access-Control-Allow-Origin</code> <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers">header</a> in response to an <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9.2">OPTIONS</a> request from the browser.</p>
<p>For information on how to set this up on your server, refer to <a href="http://enable-cors.org/server.html">this document</a>.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/CORS.md','#JS')
,('0802b5cc-fa08-4b1b-8302-df6b88d40b19','Design Patterns','a general reusable solution to a commonly occurring problem within a given context in software design','

# Design Patterns

In software engineering, a [design pattern](https://en.wikipedia.org/wiki/Software_design_pattern) is a general reusable solution to a commonly occurring problem within a given context in software design. A design pattern is not a finished design that can be transformed directly into source or machine code. It is a description or template for how to solve a problem that can be used in many different situations. Patterns are formalized best practices that the programmer can use to solve common problems when designing an application or system. Object-oriented design patterns typically show relationships and interactions between classes or objects, without specifying the final application classes or objects that are involved. Patterns that imply mutable state may be unsuited for functional programming languages, some patterns can be rendered unnecessary in languages that have built-in support for solving the problem they are trying to solve, and object-oriented patterns are not necessarily suitable for non-object-oriented languages.

Design patterns may be viewed as a structured approach to computer programming intermediate between the levels of a programming paradigm and a concrete algorithm.

## Types

Design patterns reside in the domain of modules and interconnections. At a higher level there are architectural patterns which are larger in scope, usually describing an overall pattern followed by an entire system.

There are many types of design patterns, for instance:

- **Algorithm strategy patterns** addressing concerns related to high-level strategies describing how to exploit application characteristics on a computing platform.
- **Computational design patterns** addressing concerns related to key computation identification.
- **Execution patterns** which address issues related to lower-level support of application execution, including strategies for executing streams of tasks and for the definition of building blocks to support task synchronization.
- **Implementation strategy patterns** addressing concerns related to implementing source code to support
 1. program organization, and
 2. the common data structures specific to parallel programming.
- **Structural design patterns** addressing concerns related to global structures of applications being developed.

## History

Patterns originated as an architectural concept by [Christopher Alexander](https://en.wikipedia.org/wiki/Christopher_Alexander) (1977/79). In 1987, [Kent Beck](https://en.wikipedia.org/wiki/Kent_Beck) and [Ward Cunningham](https://en.wikipedia.org/wiki/Ward_Cunningham) began experimenting with the idea of applying patterns to programming – specifically pattern languages – and presented their results at the [OOPSLA](https://en.wikipedia.org/wiki/OOPSLA) conference that year. In the following years, Beck, Cunningham and others followed up on this work.

Design patterns gained popularity in computer science after the book [Design Patterns: Elements of Reusable Object-Oriented Software](https://en.wikipedia.org/wiki/Design_Patterns_(book)) was published in 1994 by the so-called “Gang of Four” (Gamma et al.), which is frequently abbreviated as “GoF”. That same year, the first Pattern Languages of Programming Conference was held and the following year, the Portland Pattern Repository was set up for documentation of design patterns. The scope of the term remains a matter of dispute. Notable books in the design pattern genre include:

- [Gamma, Erich](https://en.wikipedia.org/wiki/Erich_Gamma); [Helm, Richard](https://en.wikipedia.org/wiki/Richard_Helm); [Johnson, Ralph](https://en.wikipedia.org/wiki/Ralph_Johnson_(computer_scientist)); [Vlissides, John](https://en.wikipedia.org/wiki/John_Vlissides) (1995). [Design Patterns: Elements of Reusable Object-Oriented Software](https://en.wikipedia.org/wiki/Design_Patterns_(book)). Addison-Wesley. ISBN 0-201-63361-2.
- [Brinch Hansen, Per](https://en.wikipedia.org/wiki/Per_Brinch_Hansen) (1995). *Studies in Computational Science: Parallel Programming Paradigms.* Prentice Hall. ISBN 0-13-439324-4.
- Buschmann, Frank; Meunier, Regine; Rohnert, Hans; Sommerlad, Peter (1996). *Pattern-Oriented Software Architecture, Volume 1: A System of Patterns.* John Wiley & Sons. ISBN 0-471-95869-7.
- [Schmidt, Douglas C.](https://en.wikipedia.org/wiki/Douglas_C._Schmidt); Stal, Michael; Rohnert, Hans; Buschmann, Frank (2000). *Pattern-Oriented Software Architecture, Volume 2: Patterns for Concurrent and Networked Objects.* John Wiley & Sons. ISBN 0-471-60695-2.
- [Fowler, Martin](https://en.wikipedia.org/wiki/Martin_Fowler) (2002). *Patterns of Enterprise Application Architecture.* Addison-Wesley. ISBN 978-0-321-12742-6.
- Hohpe, Gregor; Woolf, Bobby (2003). [Enterprise Integration Patterns: Designing, Building, and Deploying Messaging Solutions.](https://en.wikipedia.org/wiki/Enterprise_Integration_Patterns) Addison-Wesley. ISBN 0-321-20068-3.
- Freeman, Eric T; Robson, Elisabeth; Bates, Bert; [Sierra, Kathy](https://en.wikipedia.org/wiki/Kathy_Sierra) (2004). *Head First Design Patterns.* O’Reilly Media. ISBN 0-596-00712-4.

Although design patterns have been applied practically for a long time, formalization of the concept of design patterns languished for several years.

## Practice

Design patterns can speed up the development process by providing tested, proven development paradigms. Effective software design requires considering issues that may not become visible until later in the implementation. Reusing design patterns helps to prevent subtle issues that can cause major problems, and it also improves code readability for coders and architects who are familiar with the patterns.

In order to achieve flexibility, design patterns usually introduce additional levels of indirection, which in some cases may complicate the resulting designs and hurt application performance.

By definition, a pattern must be programmed anew into each application that uses it. Since some authors see this as a step backward from software reuse as provided by components, researchers have worked to turn patterns into components. Meyer and Arnout were able to provide full or partial componentization of two-thirds of the patterns they attempted.

Software design techniques are difficult to apply to a broader range of problems. Design patterns provide general solutions, documented in a format that does not require specifics tied to a particular problem.

## Classification and list

Design patterns were originally grouped into the categories: *creational patterns*, *structural patterns*, and *behavioral patterns*, and described using the concepts of delegation, aggregation, and consultation. For further background on object-oriented design, see coupling and cohesion, inheritance, interface, and polymorphism. Another classification has also introduced the notion of architectural design pattern that may be applied at the architecture level of the software such as the Model–View–Controller pattern.

### Creational patterns

| Name | Description |
| --- | --- |
| [Abstract factory](https://en.wikipedia.org/wiki/Abstract_factory_pattern) | Provide an interface for creating families of related or dependent objects without specifying their concrete classes. |
| [Builder](https://en.wikipedia.org/wiki/Builder_pattern) | Separate the construction of a complex object from its representation, allowing the same construction process to create various representations. |
| [Factory method](/_glossary/FACTORY_PATTERN.md) | Define an interface for creating a single object, but let subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses (dependency injection). |
| [Lazy initialization](https://en.wikipedia.org/wiki/Lazy_initialization) | Tactic of delaying the creation of an object, the calculation of a value, or some other expensive process until the first time it is needed. This pattern appears in the GoF catalog as “virtual proxy”, an implementation strategy for the Proxy pattern. |
| [Multiton](https://en.wikipedia.org/wiki/Multiton_pattern) | Ensure a class has only named instances, and provide a global point of access to them. |
| [Object pool](https://en.wikipedia.org/wiki/Object_pool_pattern) | Avoid expensive acquisition and release of resources by recycling objects that are no longer in use. Can be considered a generalisation of connection pool and thread pool patterns. |
| [Prototype](/_glossary/PROTOTYPE_PATTERN.md) | Specify the kinds of objects to create using a prototypical instance, and create new objects by copying this prototype. |
| [Resource acquisition is initialization](https://en.wikipedia.org/wiki/Resource_Acquisition_Is_Initialization) | Ensure that resources are properly released by tying them to the lifespan of suitable objects. |
| [Singleton](/_glossary/SINGLETON_PATTERN.md) | Ensure a class has only one instance, and provide a global point of access to it. |

### Structural patterns

| Name | Description |
| --- | --- |
| [Adapter](https://en.wikipedia.org/wiki/Adapter_pattern) or Wrapper or Translator | Convert the interface of a class into another interface clients expect. An adapter lets classes work together that could not otherwise because of incompatible interfaces. The enterprise integration pattern equivalent is the translator. |
| [Bridge](https://en.wikipedia.org/wiki/Bridge_pattern) | Decouple an abstraction from its implementation allowing the two to vary independently. |
| [Composite](https://en.wikipedia.org/wiki/Composite_pattern) | 	Compose objects into tree structures to represent part-whole hierarchies. Composite lets clients treat individual objects and compositions of objects uniformly. |
| [Decorator](https://en.wikipedia.org/wiki/Decorator_pattern) | 	Attach additional responsibilities to an object dynamically keeping the same interface. Decorators provide a flexible alternative to subclassing for extending functionality. |
| [Facade](/_glossary/FACADE_PATTERN.md) | Provide a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use. |
| [Flyweight](https://en.wikipedia.org/wiki/Flyweight_pattern) | Use sharing to support large numbers of similar objects efficiently. |
| [Front controller](https://en.wikipedia.org/wiki/Front_controller) | The pattern relates to the design of Web applications. It provides a centralized entry point for handling requests. |
| [Marker](https://en.wikipedia.org/wiki/Marker_interface_pattern) | Empty interface to associate metadata with a class. |
| [Module](/_glossary/MODULE_PATTERN.md) | 	Group several related elements, such as classes, singletons, methods, globally used, into a single conceptual entity. |
| [Proxy](https://en.wikipedia.org/wiki/Proxy_pattern) | Provide a surrogate or placeholder for another object to control access to it. |
| [Twin](https://en.wikipedia.org/wiki/Twin_pattern) | Twin allows modeling of multiple inheritance in programming languages that do not support this feature. |

### Behavioural patterns

| Name | Description |
| --- | --- |
| [Blackboard](https://en.wikipedia.org/wiki/Blackboard_design_pattern) | Artificial intelligence pattern for combining disparate sources of data (see blackboard system) |
| [Chain of responsibility](https://en.wikipedia.org/wiki/Chain_of_responsibility_pattern) | Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it. |
| [Command](https://en.wikipedia.org/wiki/Command_pattern) | Encapsulate a request as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support undoable operations. |
| [Interpreter](https://en.wikipedia.org/wiki/Interpreter_pattern) | Given a language, define a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language. |
| [Iterator](https://en.wikipedia.org/wiki/Iterator_pattern) | Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation. |
| [Mediator](/_glossary/MEDIATOR_PATTERN.md) | Define an object that encapsulates how a set of objects interact. Mediator promotes loose coupling by keeping objects from referring to each other explicitly, and it lets you vary their interaction independently. |
| [Memento](https://en.wikipedia.org/wiki/Memento_pattern) | Without violating encapsulation, capture and externalize an object’s internal state allowing the object to be restored to this state later. |
| [Null object](https://en.wikipedia.org/wiki/Null_Object_pattern) | Avoid null references by providing a default object. |
| [Observer](/_glossary/OBSERVER_PATTERN.md) or [Publish/subscribe](https://en.wikipedia.org/wiki/Publish/subscribe) | Define a one-to-many dependency between objects where a state change in one object results in all its dependents being notified and updated automatically. |
| [Servant](https://en.wikipedia.org/wiki/Design_pattern_Servant) | Define common functionality for a group of classes. |
| [Specification](https://en.wikipedia.org/wiki/Specification_pattern) | Recombinable business logic in a Boolean fashion. |
| [State](https://en.wikipedia.org/wiki/State_pattern) | Allow an object to alter its behavior when its internal state changes. The object will appear to change its class. |
| [Strategy](https://en.wikipedia.org/wiki/Strategy_pattern) | Define a family of algorithms, encapsulate each one, and make them interchangeable. Strategy lets the algorithm vary independently from clients that use it. |
| [Template method](https://en.wikipedia.org/wiki/Template_method_pattern) | Define the skeleton of an algorithm in an operation, deferring some steps to subclasses. Template method lets subclasses redefine certain steps of an algorithm without changing the algorithm’s structure. |
| [Visitor](https://en.wikipedia.org/wiki/Visitor_pattern) | Represent an operation to be performed on the elements of an object structure. Visitor lets you define a new operation without changing the classes of the elements on which it operates. |

### Concurrency patterns

| Name | Description |
| --- | --- |
| [Active Object](https://en.wikipedia.org/wiki/Active_object) | Decouples method execution from method invocation that reside in their own thread of control. The goal is to introduce concurrency, by using asynchronous method invocation and a scheduler for handling requests. |
| [Balking](https://en.wikipedia.org/wiki/Balking_pattern) | Only execute an action on an object when the object is in a particular state. |
| [Binding properties](https://en.wikipedia.org/wiki/Binding_properties_pattern) | Combining multiple observers to force properties in different objects to be synchronized or coordinated in some way. |
| [Block chain](https://en.wikipedia.org/wiki/Block_chain_(database)) | Decentralized way to store data and agree on ways of processing it in a Merkle tree, optionally using Digital signature for any individual contributions. |
| [Double-checked locking](https://en.wikipedia.org/wiki/Double_checked_locking_pattern) | Reduce the overhead of acquiring a lock by first testing the locking criterion (the “lock hint”) in an unsafe manner; only if that succeeds does the actual locking logic proceed. Can be unsafe when implemented in some language/hardware combinations. It can therefore sometimes be considered an anti-pattern. |
| [Event-based asynchronous](https://en.wikipedia.org/wiki/Event-Based_Asynchronous_Pattern) | Addresses problems with the asynchronous pattern that occur in multithreaded programs. |
| [Guarded suspension](https://en.wikipedia.org/wiki/Guarded_suspension) | 	Manages operations that require both a lock to be acquired and a precondition to be satisfied before the operation can be executed. |
| [Join](https://en.wikipedia.org/wiki/Join-pattern) | Join-pattern provides a way to write concurrent, parallel and distributed programs by message passing. Compared to the use of threads and locks, this is a high-level programming model. |
| [Lock](https://en.wikipedia.org/wiki/Lock_(computer_science)) | One thread puts a “lock” on a resource, preventing other threads from accessing or modifying it. |
| [Messaging design pattern (MDP)](https://en.wikipedia.org/wiki/Messaging_pattern) | Allows the interchange of information (i.e. messages) between components and applications. |
| [Monitor object](https://en.wikipedia.org/wiki/Monitor_(synchronization)) | 	An object whose methods are subject to mutual exclusion, thus preventing multiple objects from erroneously trying to use it at the same time. |
| [Reactor](https://en.wikipedia.org/wiki/Reactor_pattern) | A reactor object provides an asynchronous interface to resources that must be handled synchronously. |
| [Read-write lock](https://en.wikipedia.org/wiki/Read/write_lock_pattern) | Allows concurrent read access to an object, but requires exclusive access for write operations. |
| [Scheduler](https://en.wikipedia.org/wiki/Scheduler_pattern) | Explicitly control when threads may execute single-threaded code. |
| [Thread pool](https://en.wikipedia.org/wiki/Thread_pool_pattern) | 	A number of threads are created to perform a number of tasks, which are usually organized in a queue. Typically, there are many more tasks than threads. Can be considered a special case of the object pool pattern. |
| [Thread-specific storage](https://en.wikipedia.org/wiki/Thread-Specific_Storage) | Static or “global” memory local to a thread. |

## Documentation

The documentation for a design pattern describes the context in which the pattern is used, the forces within the context that the pattern seeks to resolve, and the suggested solution. There is no single, standard format for documenting design patterns. Rather, a variety of different formats have been used by different pattern authors. However, according to Martin Fowler, certain pattern forms have become more well-known than others, and consequently become common starting points for new pattern-writing efforts. One example of a commonly used documentation format is the one used by Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides (collectively known as the “Gang of Four”, or GoF for short) in their book Design Patterns. It contains the following sections:

- **Pattern Name and Classification**: A descriptive and unique name that helps in identifying and referring to the pattern.
- **Intent**: A description of the goal behind the pattern and the reason for using it.
- **Also Known As**: Other names for the pattern.
- **Motivation (Forces)**: A scenario consisting of a problem and a context in which this pattern can be used.
- **Applicability**: Situations in which this pattern is usable; the context for the pattern.
- **Structure**: A graphical representation of the pattern. Class diagrams and Interaction diagrams may be used for this purpose.
- **Participants**: A listing of the classes and objects used in the pattern and their roles in the design.
- **Collaboration**: A description of how classes and objects used in the pattern interact with each other.
- **Consequences**: A description of the results, side effects, and trade offs caused by using the pattern.
- **Implementation**: A description of an implementation of the pattern; the solution part of the pattern.
- **Sample Code**: An illustration of how the pattern can be used in a programming language.
- **Known Uses**: Examples of real usages of the pattern.
- **Related Patterns**: Other patterns that have some relationship with the pattern; discussion of the differences between the pattern and similar patterns.

----------

*Source:*
- [Software design pattern](https://en.wikipedia.org/wiki/Software_design_pattern)*. From Wikipedia, the free encyclopedia.*
','<h1 id="design-patterns">Design Patterns</h1>
<p>In software engineering, a <a href="https://en.wikipedia.org/wiki/Software_design_pattern">design pattern</a> is a general reusable solution to a commonly occurring problem within a given context in software design. A design pattern is not a finished design that can be transformed directly into source or machine code. It is a description or template for how to solve a problem that can be used in many different situations. Patterns are formalized best practices that the programmer can use to solve common problems when designing an application or system. Object-oriented design patterns typically show relationships and interactions between classes or objects, without specifying the final application classes or objects that are involved. Patterns that imply mutable state may be unsuited for functional programming languages, some patterns can be rendered unnecessary in languages that have built-in support for solving the problem they are trying to solve, and object-oriented patterns are not necessarily suitable for non-object-oriented languages.</p>
<p>Design patterns may be viewed as a structured approach to computer programming intermediate between the levels of a programming paradigm and a concrete algorithm.</p>
<h2 id="types">Types</h2>
<p>Design patterns reside in the domain of modules and interconnections. At a higher level there are architectural patterns which are larger in scope, usually describing an overall pattern followed by an entire system.</p>
<p>There are many types of design patterns, for instance:</p>
<ul>
<li><strong>Algorithm strategy patterns</strong> addressing concerns related to high-level strategies describing how to exploit application characteristics on a computing platform.</li>
<li><strong>Computational design patterns</strong> addressing concerns related to key computation identification.</li>
<li><strong>Execution patterns</strong> which address issues related to lower-level support of application execution, including strategies for executing streams of tasks and for the definition of building blocks to support task synchronization.</li>
<li><strong>Implementation strategy patterns</strong> addressing concerns related to implementing source code to support<ol>
<li>program organization, and</li>
<li>the common data structures specific to parallel programming.</li>
</ol>
</li>
<li><strong>Structural design patterns</strong> addressing concerns related to global structures of applications being developed.</li>
</ul>
<h2 id="history">History</h2>
<p>Patterns originated as an architectural concept by <a href="https://en.wikipedia.org/wiki/Christopher_Alexander">Christopher Alexander</a> (1977/79). In 1987, <a href="https://en.wikipedia.org/wiki/Kent_Beck">Kent Beck</a> and <a href="https://en.wikipedia.org/wiki/Ward_Cunningham">Ward Cunningham</a> began experimenting with the idea of applying patterns to programming – specifically pattern languages – and presented their results at the <a href="https://en.wikipedia.org/wiki/OOPSLA">OOPSLA</a> conference that year. In the following years, Beck, Cunningham and others followed up on this work.</p>
<p>Design patterns gained popularity in computer science after the book <a href="https://en.wikipedia.org/wiki/Design_Patterns_(book">Design Patterns: Elements of Reusable Object-Oriented Software</a>) was published in 1994 by the so-called “Gang of Four” (Gamma et al.), which is frequently abbreviated as “GoF”. That same year, the first Pattern Languages of Programming Conference was held and the following year, the Portland Pattern Repository was set up for documentation of design patterns. The scope of the term remains a matter of dispute. Notable books in the design pattern genre include:</p>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Erich_Gamma">Gamma, Erich</a>; <a href="https://en.wikipedia.org/wiki/Richard_Helm">Helm, Richard</a>; <a href="https://en.wikipedia.org/wiki/Ralph_Johnson_(computer_scientist">Johnson, Ralph</a>); <a href="https://en.wikipedia.org/wiki/John_Vlissides">Vlissides, John</a> (1995). <a href="https://en.wikipedia.org/wiki/Design_Patterns_(book">Design Patterns: Elements of Reusable Object-Oriented Software</a>). Addison-Wesley. ISBN 0-201-63361-2.</li>
<li><a href="https://en.wikipedia.org/wiki/Per_Brinch_Hansen">Brinch Hansen, Per</a> (1995). <em>Studies in Computational Science: Parallel Programming Paradigms.</em> Prentice Hall. ISBN 0-13-439324-4.</li>
<li>Buschmann, Frank; Meunier, Regine; Rohnert, Hans; Sommerlad, Peter (1996). <em>Pattern-Oriented Software Architecture, Volume 1: A System of Patterns.</em> John Wiley &amp; Sons. ISBN 0-471-95869-7.</li>
<li><a href="https://en.wikipedia.org/wiki/Douglas_C._Schmidt">Schmidt, Douglas C.</a>; Stal, Michael; Rohnert, Hans; Buschmann, Frank (2000). <em>Pattern-Oriented Software Architecture, Volume 2: Patterns for Concurrent and Networked Objects.</em> John Wiley &amp; Sons. ISBN 0-471-60695-2.</li>
<li><a href="https://en.wikipedia.org/wiki/Martin_Fowler">Fowler, Martin</a> (2002). <em>Patterns of Enterprise Application Architecture.</em> Addison-Wesley. ISBN 978-0-321-12742-6.</li>
<li>Hohpe, Gregor; Woolf, Bobby (2003). <a href="https://en.wikipedia.org/wiki/Enterprise_Integration_Patterns">Enterprise Integration Patterns: Designing, Building, and Deploying Messaging Solutions.</a> Addison-Wesley. ISBN 0-321-20068-3.</li>
<li>Freeman, Eric T; Robson, Elisabeth; Bates, Bert; <a href="https://en.wikipedia.org/wiki/Kathy_Sierra">Sierra, Kathy</a> (2004). <em>Head First Design Patterns.</em> O’Reilly Media. ISBN 0-596-00712-4.</li>
</ul>
<p>Although design patterns have been applied practically for a long time, formalization of the concept of design patterns languished for several years.</p>
<h2 id="practice">Practice</h2>
<p>Design patterns can speed up the development process by providing tested, proven development paradigms. Effective software design requires considering issues that may not become visible until later in the implementation. Reusing design patterns helps to prevent subtle issues that can cause major problems, and it also improves code readability for coders and architects who are familiar with the patterns.</p>
<p>In order to achieve flexibility, design patterns usually introduce additional levels of indirection, which in some cases may complicate the resulting designs and hurt application performance.</p>
<p>By definition, a pattern must be programmed anew into each application that uses it. Since some authors see this as a step backward from software reuse as provided by components, researchers have worked to turn patterns into components. Meyer and Arnout were able to provide full or partial componentization of two-thirds of the patterns they attempted.</p>
<p>Software design techniques are difficult to apply to a broader range of problems. Design patterns provide general solutions, documented in a format that does not require specifics tied to a particular problem.</p>
<h2 id="classification-and-list">Classification and list</h2>
<p>Design patterns were originally grouped into the categories: <em>creational patterns</em>, <em>structural patterns</em>, and <em>behavioral patterns</em>, and described using the concepts of delegation, aggregation, and consultation. For further background on object-oriented design, see coupling and cohesion, inheritance, interface, and polymorphism. Another classification has also introduced the notion of architectural design pattern that may be applied at the architecture level of the software such as the Model–View–Controller pattern.</p>
<h3 id="creational-patterns">Creational patterns</h3>
<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Abstract_factory_pattern">Abstract factory</a></td>
<td>Provide an interface for creating families of related or dependent objects without specifying their concrete classes.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Builder_pattern">Builder</a></td>
<td>Separate the construction of a complex object from its representation, allowing the same construction process to create various representations.</td>
</tr>
<tr>
<td><a href="/_glossary/FACTORY_PATTERN.md">Factory method</a></td>
<td>Define an interface for creating a single object, but let subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses (dependency injection).</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Lazy_initialization">Lazy initialization</a></td>
<td>Tactic of delaying the creation of an object, the calculation of a value, or some other expensive process until the first time it is needed. This pattern appears in the GoF catalog as “virtual proxy”, an implementation strategy for the Proxy pattern.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Multiton_pattern">Multiton</a></td>
<td>Ensure a class has only named instances, and provide a global point of access to them.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Object_pool_pattern">Object pool</a></td>
<td>Avoid expensive acquisition and release of resources by recycling objects that are no longer in use. Can be considered a generalisation of connection pool and thread pool patterns.</td>
</tr>
<tr>
<td><a href="/_glossary/PROTOTYPE_PATTERN.md">Prototype</a></td>
<td>Specify the kinds of objects to create using a prototypical instance, and create new objects by copying this prototype.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Resource_Acquisition_Is_Initialization">Resource acquisition is initialization</a></td>
<td>Ensure that resources are properly released by tying them to the lifespan of suitable objects.</td>
</tr>
<tr>
<td><a href="/_glossary/SINGLETON_PATTERN.md">Singleton</a></td>
<td>Ensure a class has only one instance, and provide a global point of access to it.</td>
</tr>
</tbody>
</table>
<h3 id="structural-patterns">Structural patterns</h3>
<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Adapter_pattern">Adapter</a> or Wrapper or Translator</td>
<td>Convert the interface of a class into another interface clients expect. An adapter lets classes work together that could not otherwise because of incompatible interfaces. The enterprise integration pattern equivalent is the translator.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Bridge_pattern">Bridge</a></td>
<td>Decouple an abstraction from its implementation allowing the two to vary independently.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Composite_pattern">Composite</a></td>
<td>Compose objects into tree structures to represent part-whole hierarchies. Composite lets clients treat individual objects and compositions of objects uniformly.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Decorator_pattern">Decorator</a></td>
<td>Attach additional responsibilities to an object dynamically keeping the same interface. Decorators provide a flexible alternative to subclassing for extending functionality.</td>
</tr>
<tr>
<td><a href="/_glossary/FACADE_PATTERN.md">Facade</a></td>
<td>Provide a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Flyweight_pattern">Flyweight</a></td>
<td>Use sharing to support large numbers of similar objects efficiently.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Front_controller">Front controller</a></td>
<td>The pattern relates to the design of Web applications. It provides a centralized entry point for handling requests.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Marker_interface_pattern">Marker</a></td>
<td>Empty interface to associate metadata with a class.</td>
</tr>
<tr>
<td><a href="/_glossary/MODULE_PATTERN.md">Module</a></td>
<td>Group several related elements, such as classes, singletons, methods, globally used, into a single conceptual entity.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Proxy_pattern">Proxy</a></td>
<td>Provide a surrogate or placeholder for another object to control access to it.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Twin_pattern">Twin</a></td>
<td>Twin allows modeling of multiple inheritance in programming languages that do not support this feature.</td>
</tr>
</tbody>
</table>
<h3 id="behavioural-patterns">Behavioural patterns</h3>
<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Blackboard_design_pattern">Blackboard</a></td>
<td>Artificial intelligence pattern for combining disparate sources of data (see blackboard system)</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Chain_of_responsibility_pattern">Chain of responsibility</a></td>
<td>Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Command_pattern">Command</a></td>
<td>Encapsulate a request as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support undoable operations.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Interpreter_pattern">Interpreter</a></td>
<td>Given a language, define a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Iterator_pattern">Iterator</a></td>
<td>Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation.</td>
</tr>
<tr>
<td><a href="/_glossary/MEDIATOR_PATTERN.md">Mediator</a></td>
<td>Define an object that encapsulates how a set of objects interact. Mediator promotes loose coupling by keeping objects from referring to each other explicitly, and it lets you vary their interaction independently.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Memento_pattern">Memento</a></td>
<td>Without violating encapsulation, capture and externalize an object’s internal state allowing the object to be restored to this state later.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Null_Object_pattern">Null object</a></td>
<td>Avoid null references by providing a default object.</td>
</tr>
<tr>
<td><a href="/_glossary/OBSERVER_PATTERN.md">Observer</a> or <a href="https://en.wikipedia.org/wiki/Publish/subscribe">Publish/subscribe</a></td>
<td>Define a one-to-many dependency between objects where a state change in one object results in all its dependents being notified and updated automatically.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Design_pattern_Servant">Servant</a></td>
<td>Define common functionality for a group of classes.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Specification_pattern">Specification</a></td>
<td>Recombinable business logic in a Boolean fashion.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/State_pattern">State</a></td>
<td>Allow an object to alter its behavior when its internal state changes. The object will appear to change its class.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Strategy_pattern">Strategy</a></td>
<td>Define a family of algorithms, encapsulate each one, and make them interchangeable. Strategy lets the algorithm vary independently from clients that use it.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Template_method_pattern">Template method</a></td>
<td>Define the skeleton of an algorithm in an operation, deferring some steps to subclasses. Template method lets subclasses redefine certain steps of an algorithm without changing the algorithm’s structure.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Visitor_pattern">Visitor</a></td>
<td>Represent an operation to be performed on the elements of an object structure. Visitor lets you define a new operation without changing the classes of the elements on which it operates.</td>
</tr>
</tbody>
</table>
<h3 id="concurrency-patterns">Concurrency patterns</h3>
<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Active_object">Active Object</a></td>
<td>Decouples method execution from method invocation that reside in their own thread of control. The goal is to introduce concurrency, by using asynchronous method invocation and a scheduler for handling requests.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Balking_pattern">Balking</a></td>
<td>Only execute an action on an object when the object is in a particular state.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Binding_properties_pattern">Binding properties</a></td>
<td>Combining multiple observers to force properties in different objects to be synchronized or coordinated in some way.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Block_chain_(database">Block chain</a>)</td>
<td>Decentralized way to store data and agree on ways of processing it in a Merkle tree, optionally using Digital signature for any individual contributions.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Double_checked_locking_pattern">Double-checked locking</a></td>
<td>Reduce the overhead of acquiring a lock by first testing the locking criterion (the “lock hint”) in an unsafe manner; only if that succeeds does the actual locking logic proceed. Can be unsafe when implemented in some language/hardware combinations. It can therefore sometimes be considered an anti-pattern.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Event-Based_Asynchronous_Pattern">Event-based asynchronous</a></td>
<td>Addresses problems with the asynchronous pattern that occur in multithreaded programs.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Guarded_suspension">Guarded suspension</a></td>
<td>Manages operations that require both a lock to be acquired and a precondition to be satisfied before the operation can be executed.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Join-pattern">Join</a></td>
<td>Join-pattern provides a way to write concurrent, parallel and distributed programs by message passing. Compared to the use of threads and locks, this is a high-level programming model.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Lock_(computer_science">Lock</a>)</td>
<td>One thread puts a “lock” on a resource, preventing other threads from accessing or modifying it.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Messaging_pattern">Messaging design pattern (MDP)</a></td>
<td>Allows the interchange of information (i.e. messages) between components and applications.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Monitor_(synchronization">Monitor object</a>)</td>
<td>An object whose methods are subject to mutual exclusion, thus preventing multiple objects from erroneously trying to use it at the same time.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Reactor_pattern">Reactor</a></td>
<td>A reactor object provides an asynchronous interface to resources that must be handled synchronously.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Read/write_lock_pattern">Read-write lock</a></td>
<td>Allows concurrent read access to an object, but requires exclusive access for write operations.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Scheduler_pattern">Scheduler</a></td>
<td>Explicitly control when threads may execute single-threaded code.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Thread_pool_pattern">Thread pool</a></td>
<td>A number of threads are created to perform a number of tasks, which are usually organized in a queue. Typically, there are many more tasks than threads. Can be considered a special case of the object pool pattern.</td>
</tr>
<tr>
<td><a href="https://en.wikipedia.org/wiki/Thread-Specific_Storage">Thread-specific storage</a></td>
<td>Static or “global” memory local to a thread.</td>
</tr>
</tbody>
</table>
<h2 id="documentation">Documentation</h2>
<p>The documentation for a design pattern describes the context in which the pattern is used, the forces within the context that the pattern seeks to resolve, and the suggested solution. There is no single, standard format for documenting design patterns. Rather, a variety of different formats have been used by different pattern authors. However, according to Martin Fowler, certain pattern forms have become more well-known than others, and consequently become common starting points for new pattern-writing efforts. One example of a commonly used documentation format is the one used by Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides (collectively known as the “Gang of Four”, or GoF for short) in their book Design Patterns. It contains the following sections:</p>
<ul>
<li><strong>Pattern Name and Classification</strong>: A descriptive and unique name that helps in identifying and referring to the pattern.</li>
<li><strong>Intent</strong>: A description of the goal behind the pattern and the reason for using it.</li>
<li><strong>Also Known As</strong>: Other names for the pattern.</li>
<li><strong>Motivation (Forces)</strong>: A scenario consisting of a problem and a context in which this pattern can be used.</li>
<li><strong>Applicability</strong>: Situations in which this pattern is usable; the context for the pattern.</li>
<li><strong>Structure</strong>: A graphical representation of the pattern. Class diagrams and Interaction diagrams may be used for this purpose.</li>
<li><strong>Participants</strong>: A listing of the classes and objects used in the pattern and their roles in the design.</li>
<li><strong>Collaboration</strong>: A description of how classes and objects used in the pattern interact with each other.</li>
<li><strong>Consequences</strong>: A description of the results, side effects, and trade offs caused by using the pattern.</li>
<li><strong>Implementation</strong>: A description of an implementation of the pattern; the solution part of the pattern.</li>
<li><strong>Sample Code</strong>: An illustration of how the pattern can be used in a programming language.</li>
<li><strong>Known Uses</strong>: Examples of real usages of the pattern.</li>
<li><strong>Related Patterns</strong>: Other patterns that have some relationship with the pattern; discussion of the differences between the pattern and similar patterns.</li>
</ul>
<hr>
<p><em>Source:</em></p>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Software_design_pattern">Software design pattern</a><em>. From Wikipedia, the free encyclopedia.</em></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/DESIGN_PATTERNS.md','#OTHER')
;
INSERT INTO articles.articles (id,"name",description,markdown,html,url,tag) VALUES 
('e0659b7f-e4aa-4111-8091-d5f96f8d39b9','Chakra','a JavaScript engine developed by Microsoft for its Edge browser which could also be used with Node.js instead of V8.','

# Chakra

Chakra is a JavaScript engine that powers Microsoft Edge and Windows applications written in HTML/CSS/JS.

Chakra is open-sourced as [ChakraCore](https://github.com/Microsoft/ChakraCore) and can [optionally be used with Node.js](https://github.com/nodejs/node-chakracore) instead of [V8](/_glossary/V8.md).
','<h1 id="chakra">Chakra</h1>
<p>Chakra is a JavaScript engine that powers Microsoft Edge and Windows applications written in HTML/CSS/JS.</p>
<p>Chakra is open-sourced as <a href="https://github.com/Microsoft/ChakraCore">ChakraCore</a> and can <a href="https://github.com/nodejs/node-chakracore">optionally be used with Node.js</a> instead of <a href="/_glossary/V8.md">V8</a>.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/CHAKRA.md','#JS')
,('c312536a-fc9a-4409-9b68-c1105f41ed6f','Closure Compiler','a JavaScript checker and optimizer','

# Closure Compiler

The [Closure Compiler](https://developers.google.com/closure/compiler/) is a tool for making JavaScript download and run faster. It is a true compiler for JavaScript. Instead of compiling from a source language to machine code, it compiles from JavaScript to better JavaScript. It parses your JavaScript, analyzes it, removes dead code and rewrites and minimizes what’s left. It also checks syntax, variable references, and types, and warns about common JavaScript pitfalls.

## Usage

*Closure-compiler requires java to be installed and in the path.*

The compiler package now includes build tool plugins for [Grunt](/_glossary/GRUNT.md) and [Gulp](/_glossary/GULP.md).

### Installation

```sh
npm install --save google-closure-compiler
```

### Configuration

The compiler has a large number of flags. The best documentation for the flags can be found by running the `--help` command of the `compiler.jar` found inside the `node_modules/google-closure-compiler` folder:

```sh
java -jar compiler.jar --help
```

### Specifying Options

Both the grunt and gulp tasks take options objects. The option parameters map directly to the compiler flags without the leading `--` characters.

Values are either strings or booleans. Options which have multiple values can be arrays.

```js
{
  js: [''/file-one.js'', ''/file-two.js''],
  compilation_level: ''ADVANCED'',
  js_output_file: ''out.js'',
  debug: true
}
```

For advanced usages, the options may be specified as an array of strings. These values include the `--` characters and are directly passed to the compiler in the order specified:

```js
[
  ''--js'', ''/file-one.js'',
  ''--js'', ''/file-two.js'',
  ''--compilation_level'', ''ADVANCED'',
  ''--js_output_file'', ''out.js'',
  ''--debug''
]
```

When an array of flags is passed, the input files should not be specified via the build tools, but rather as compilation flags directly.

Some shells (particularly windows) try to do expansion on globs rather than passing the string on to the compiler. To prevent this it is necessary to quote certain arguments:

```js
{
  js: ''"my/quoted/glob/**.js"'',
  compilation_level: ''ADVANCED'',
  js_output_file: ''out.js'',
  debug: true
}
```

## Using the Grunt Task

Include the plugin in your `Gruntfile.js`:

```js
require(''google-closure-compiler'').grunt(grunt);
// The load-grunt-tasks plugin won’t automatically load closure-compiler
```
 
Task targets, files and options may be specified according to the grunt [Configuring tasks](http://gruntjs.com/configuring-tasks) guide.

### Basic Configuration Example:

```js
require(''google-closure-compiler'').grunt(grunt);
 
// Project configuration. 
grunt.initConfig({
  ''closure-compiler'': {
    my_target: {
      files: {
        ''dest/output.min.js'': [''src/js/**/*.js'']
      },
      options: {
        compilation_level: ''SIMPLE'',
        language_in: ''ECMASCRIPT5_STRICT'',
        create_source_map: ''dest/output.min.js.map'',
        output_wrapper: ''(function(){\n%output%\n}).call(this)\n//# sourceMappingURL=output.min.js.map''
      }
    }
  }
});
```

## Using the Gulp Plugin

The gulp plugin supports piping multiple files through the compiler.

Options are a direct match to the compiler flags without the leading `--`.

### Basic Configuration Example:

```js
var closureCompiler = require(''google-closure-compiler'').gulp();
 
gulp.task(''js-compile'', function () {
  return gulp.src(''./src/js/**/*.js'', { base: ''./'' })
    .pipe(closureCompiler({
      compilation_level: ''SIMPLE'',
      warning_level: ''VERBOSE'',
      language_in: ''ECMASCRIPT6_STRICT'',
      language_out: ''ECMASCRIPT5_STRICT'',
      output_wrapper: ''(function(){\n%output%\n}).call(this)'',
      js_output_file: ''output.min.js''
    }))
    .pipe(gulp.dest(''./dist/js''));
});
```

----------

*Source:*

- [Google Closure Compiler](https://github.com/google/closure-compiler)*. GitHub repo.*
','<h1 id="closure-compiler">Closure Compiler</h1>
<p>The <a href="https://developers.google.com/closure/compiler/">Closure Compiler</a> is a tool for making JavaScript download and run faster. It is a true compiler for JavaScript. Instead of compiling from a source language to machine code, it compiles from JavaScript to better JavaScript. It parses your JavaScript, analyzes it, removes dead code and rewrites and minimizes what’s left. It also checks syntax, variable references, and types, and warns about common JavaScript pitfalls.</p>
<h2 id="usage">Usage</h2>
<p><em>Closure-compiler requires java to be installed and in the path.</em></p>
<p>The compiler package now includes build tool plugins for <a href="/_glossary/GRUNT.md">Grunt</a> and <a href="/_glossary/GULP.md">Gulp</a>.</p>
<h3 id="installation">Installation</h3>
<pre><code class="lang-sh">npm install --save google-closure-compiler
</code></pre>
<h3 id="configuration">Configuration</h3>
<p>The compiler has a large number of flags. The best documentation for the flags can be found by running the <code>--help</code> command of the <code>compiler.jar</code> found inside the <code>node_modules/google-closure-compiler</code> folder:</p>
<pre><code class="lang-sh">java -jar compiler.jar --help
</code></pre>
<h3 id="specifying-options">Specifying Options</h3>
<p>Both the grunt and gulp tasks take options objects. The option parameters map directly to the compiler flags without the leading <code>--</code> characters.</p>
<p>Values are either strings or booleans. Options which have multiple values can be arrays.</p>
<pre><code class="lang-js">{
  js: [&#39;/file-one.js&#39;, &#39;/file-two.js&#39;],
  compilation_level: &#39;ADVANCED&#39;,
  js_output_file: &#39;out.js&#39;,
  debug: true
}
</code></pre>
<p>For advanced usages, the options may be specified as an array of strings. These values include the <code>--</code> characters and are directly passed to the compiler in the order specified:</p>
<pre><code class="lang-js">[
  &#39;--js&#39;, &#39;/file-one.js&#39;,
  &#39;--js&#39;, &#39;/file-two.js&#39;,
  &#39;--compilation_level&#39;, &#39;ADVANCED&#39;,
  &#39;--js_output_file&#39;, &#39;out.js&#39;,
  &#39;--debug&#39;
]
</code></pre>
<p>When an array of flags is passed, the input files should not be specified via the build tools, but rather as compilation flags directly.</p>
<p>Some shells (particularly windows) try to do expansion on globs rather than passing the string on to the compiler. To prevent this it is necessary to quote certain arguments:</p>
<pre><code class="lang-js">{
  js: &#39;&quot;my/quoted/glob/**.js&quot;&#39;,
  compilation_level: &#39;ADVANCED&#39;,
  js_output_file: &#39;out.js&#39;,
  debug: true
}
</code></pre>
<h2 id="using-the-grunt-task">Using the Grunt Task</h2>
<p>Include the plugin in your <code>Gruntfile.js</code>:</p>
<pre><code class="lang-js">require(&#39;google-closure-compiler&#39;).grunt(grunt);
// The load-grunt-tasks plugin won’t automatically load closure-compiler
</code></pre>
<p>Task targets, files and options may be specified according to the grunt <a href="http://gruntjs.com/configuring-tasks">Configuring tasks</a> guide.</p>
<h3 id="basic-configuration-example-">Basic Configuration Example:</h3>
<pre><code class="lang-js">require(&#39;google-closure-compiler&#39;).grunt(grunt);

// Project configuration. 
grunt.initConfig({
  &#39;closure-compiler&#39;: {
    my_target: {
      files: {
        &#39;dest/output.min.js&#39;: [&#39;src/js/**/*.js&#39;]
      },
      options: {
        compilation_level: &#39;SIMPLE&#39;,
        language_in: &#39;ECMASCRIPT5_STRICT&#39;,
        create_source_map: &#39;dest/output.min.js.map&#39;,
        output_wrapper: &#39;(function(){\n%output%\n}).call(this)\n//# sourceMappingURL=output.min.js.map&#39;
      }
    }
  }
});
</code></pre>
<h2 id="using-the-gulp-plugin">Using the Gulp Plugin</h2>
<p>The gulp plugin supports piping multiple files through the compiler.</p>
<p>Options are a direct match to the compiler flags without the leading <code>--</code>.</p>
<h3 id="basic-configuration-example-">Basic Configuration Example:</h3>
<pre><code class="lang-js">var closureCompiler = require(&#39;google-closure-compiler&#39;).gulp();

gulp.task(&#39;js-compile&#39;, function () {
  return gulp.src(&#39;./src/js/**/*.js&#39;, { base: &#39;./&#39; })
    .pipe(closureCompiler({
      compilation_level: &#39;SIMPLE&#39;,
      warning_level: &#39;VERBOSE&#39;,
      language_in: &#39;ECMASCRIPT6_STRICT&#39;,
      language_out: &#39;ECMASCRIPT5_STRICT&#39;,
      output_wrapper: &#39;(function(){\n%output%\n}).call(this)&#39;,
      js_output_file: &#39;output.min.js&#39;
    }))
    .pipe(gulp.dest(&#39;./dist/js&#39;));
});
</code></pre>
<hr>
<p><em>Source:</em></p>
<ul>
<li><a href="https://github.com/google/closure-compiler">Google Closure Compiler</a><em>. GitHub repo.</em></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/CLOSURE_COMPILER.md','#JS')
,('6e7d98f4-7745-4d9e-8557-c6d654000fe2','Electron','a framework based on Node.js lets you write cross-platform desktop applications using JS, HTML and CSS','

# Electron

[Electron](https://github.com/atom/electron) is a framework lets you write cross-platform desktop applications using JavaScript, HTML and CSS. It is based on Node.js and Chromium and is used in the Atom editor.
','<h1 id="electron">Electron</h1>
<p><a href="https://github.com/atom/electron">Electron</a> is a framework lets you write cross-platform desktop applications using JavaScript, HTML and CSS. It is based on Node.js and Chromium and is used in the Atom editor.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/ELECTRON.md','#NODE')
,('dd613d7d-350b-4fec-8ec7-6051ba5b4a60','Facade Pattern','a software design pattern commonly used with object-oriented programming. The name is by analogy to an architectural facade','

# Facade Pattern

The [Facade Pattern](https://en.wikipedia.org/wiki/Facade_pattern) (**or façade pattern**) is a software design pattern commonly used with *object-oriented programming*. The name is by analogy to an architectural facade.

A facade is an object that provides a simplified interface to a larger body of code, such as a class library. A facade can:

- make a software library easier to use, understand and test, since the facade has convenient methods for common tasks;
- make the library more readable, for the same reason;
- reduce dependencies of outside code on the inner workings of a library, since most code uses the facade, thus allowing more flexibility in developing the system;
- wrap a poorly designed collection of APIs with a single well-designed API.

The Facade design pattern is often used when a system is very complex or difficult to understand because the system has a large number of interdependent classes or its source code is unavailable. This pattern hides the complexities of the larger system and provides a simpler interface to the client. It typically involves a single wrapper class which contains a set of members required by client. These members access the system on behalf of the facade client and hide the implementation details.

## Usage

A Facade is used when an easier or simpler interface to an underlying object is desired. Alternatively, an [adapter](https://en.wikipedia.org/wiki/Adapter_pattern) can be used when the wrapper must respect a particular interface and must support polymorphic behavior. A [decorator](https://en.wikipedia.org/wiki/Decorator_pattern) makes it possible to add or alter behavior of an interface at run-time.

| Pattern | Intent |
|---|---|
| Adapter | Converts one interface to another so that it matches what the client is expecting |
| Decorator | Dynamically adds responsibility to the interface by wrapping the original code |
| Facade | Provides a simplified interface |

The facade pattern is typically used when:

- a simple interface is required to access a complex system;
- the abstractions and implementations of a subsystem are tightly coupled;
- need an entry point to each level of layered software; or
- a system is very complex or difficult to understand.

## Structure

![Example of Facade design pattern in UML](https://upload.wikimedia.org/wikipedia/en/5/57/Example_of_Facade_design_pattern_in_UML.png)

**Facade**: The facade class abstracts Packages 1, 2, and 3 from the rest of the application.
**Clients**: The objects are using the Facade Pattern to access resources from the Packages.

## Example

This is an abstract example of how a client (“you”) interacts with a facade (the “computer”) to a complex system (internal computer parts, like CPU and HardDrive).

```js
/* Complex parts */

class CPU {
  freeze() { /* code here */ }
  jump(position) { /* code here */ }
  execute() { /* code here */ }
}

class Memory {
  load(position, data) { /* code here */ }
}

class HardDrive {
  read(lba, size) { /* code here */ }
}

/* Facade */

class ComputerFacade {
  constructor() {
    this.processor = new CPU();
    this.ram = new Memory();
    this.hd = new HardDrive();
  }

  start() {
    this.processor.freeze();
    this.ram.load(this.BOOT_ADDRESS, this.hd.read(this.BOOT_SECTOR, this.SECTOR_SIZE));
    this.processor.jump(this.BOOT_ADDRESS);
    this.processor.execute();
  }
}

/* Client */

let computer = new ComputerFacade();
computer.start();
```

*Source: [Facade pattern](https://en.wikipedia.org/wiki/Facade_pattern). Wikipedia®*
','<h1 id="facade-pattern">Facade Pattern</h1>
<p>The <a href="https://en.wikipedia.org/wiki/Facade_pattern">Facade Pattern</a> (<strong>or façade pattern</strong>) is a software design pattern commonly used with <em>object-oriented programming</em>. The name is by analogy to an architectural facade.</p>
<p>A facade is an object that provides a simplified interface to a larger body of code, such as a class library. A facade can:</p>
<ul>
<li>make a software library easier to use, understand and test, since the facade has convenient methods for common tasks;</li>
<li>make the library more readable, for the same reason;</li>
<li>reduce dependencies of outside code on the inner workings of a library, since most code uses the facade, thus allowing more flexibility in developing the system;</li>
<li>wrap a poorly designed collection of APIs with a single well-designed API.</li>
</ul>
<p>The Facade design pattern is often used when a system is very complex or difficult to understand because the system has a large number of interdependent classes or its source code is unavailable. This pattern hides the complexities of the larger system and provides a simpler interface to the client. It typically involves a single wrapper class which contains a set of members required by client. These members access the system on behalf of the facade client and hide the implementation details.</p>
<h2 id="usage">Usage</h2>
<p>A Facade is used when an easier or simpler interface to an underlying object is desired. Alternatively, an <a href="https://en.wikipedia.org/wiki/Adapter_pattern">adapter</a> can be used when the wrapper must respect a particular interface and must support polymorphic behavior. A <a href="https://en.wikipedia.org/wiki/Decorator_pattern">decorator</a> makes it possible to add or alter behavior of an interface at run-time.</p>
<table>
<thead>
<tr>
<th>Pattern</th>
<th>Intent</th>
</tr>
</thead>
<tbody>
<tr>
<td>Adapter</td>
<td>Converts one interface to another so that it matches what the client is expecting</td>
</tr>
<tr>
<td>Decorator</td>
<td>Dynamically adds responsibility to the interface by wrapping the original code</td>
</tr>
<tr>
<td>Facade</td>
<td>Provides a simplified interface</td>
</tr>
</tbody>
</table>
<p>The facade pattern is typically used when:</p>
<ul>
<li>a simple interface is required to access a complex system;</li>
<li>the abstractions and implementations of a subsystem are tightly coupled;</li>
<li>need an entry point to each level of layered software; or</li>
<li>a system is very complex or difficult to understand.</li>
</ul>
<h2 id="structure">Structure</h2>
<p><img src="https://upload.wikimedia.org/wikipedia/en/5/57/Example_of_Facade_design_pattern_in_UML.png" alt="Example of Facade design pattern in UML"></p>
<p><strong>Facade</strong>: The facade class abstracts Packages 1, 2, and 3 from the rest of the application.
<strong>Clients</strong>: The objects are using the Facade Pattern to access resources from the Packages.</p>
<h2 id="example">Example</h2>
<p>This is an abstract example of how a client (“you”) interacts with a facade (the “computer”) to a complex system (internal computer parts, like CPU and HardDrive).</p>
<pre><code class="lang-js">/* Complex parts */

class CPU {
  freeze() { /* code here */ }
  jump(position) { /* code here */ }
  execute() { /* code here */ }
}

class Memory {
  load(position, data) { /* code here */ }
}

class HardDrive {
  read(lba, size) { /* code here */ }
}

/* Facade */

class ComputerFacade {
  constructor() {
    this.processor = new CPU();
    this.ram = new Memory();
    this.hd = new HardDrive();
  }

  start() {
    this.processor.freeze();
    this.ram.load(this.BOOT_ADDRESS, this.hd.read(this.BOOT_SECTOR, this.SECTOR_SIZE));
    this.processor.jump(this.BOOT_ADDRESS);
    this.processor.execute();
  }
}

/* Client */

let computer = new ComputerFacade();
computer.start();
</code></pre>
<p><em>Source: <a href="https://en.wikipedia.org/wiki/Facade_pattern">Facade pattern</a>. Wikipedia®</em></p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/FACADE_PATTERN.md','#OTHER')
,('41ef3451-1c04-44bd-a34c-f1dc0edc66ed','Flux','an application structure focusing on improved data flow','

# Flux

[Flux](https://facebook.github.io/flux/) is an application structure that is developed and used at Facebook to complement [React](/_glossary/REACT.md)’s one-way data flow. With Flux, application state and logic are contained in stores.
','<h1 id="flux">Flux</h1>
<p><a href="https://facebook.github.io/flux/">Flux</a> is an application structure that is developed and used at Facebook to complement <a href="/_glossary/REACT.md">React</a>’s one-way data flow. With Flux, application state and logic are contained in stores.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/FLUX.md','#OTHER')
,('6b7f85e1-3173-4b44-8544-1f198fdce016','Jasmine','a testing framework for BDD (Behaviour-Driven Development)','

# Jasmine

[Jasmine](http://jasmine.github.io/) is a BDD framework for testing JavaScript code. It does not depend on any other JavaScript frameworks. It does not require a DOM. 

Jasmine is developed by [Pivotal Labs](http://pivotal.io/labs), and has many features like [Spies](http://jasmine.github.io/2.0/introduction.html#section-Spies) built in.  

It also has support for mocking [AJAX](http://jasmine.github.io/2.0/ajax.html).
','<h1 id="jasmine">Jasmine</h1>
<p><a href="http://jasmine.github.io/">Jasmine</a> is a BDD framework for testing JavaScript code. It does not depend on any other JavaScript frameworks. It does not require a DOM. </p>
<p>Jasmine is developed by <a href="http://pivotal.io/labs">Pivotal Labs</a>, and has many features like <a href="http://jasmine.github.io/2.0/introduction.html#section-Spies">Spies</a> built in.  </p>
<p>It also has support for mocking <a href="http://jasmine.github.io/2.0/ajax.html">AJAX</a>.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/JASMINE.md','#TEST')
,('2a5d66aa-52cd-4cb8-b729-8fedda20ff78','JSCS','a JavaScript code linter','

# JSCS

[JSCS — JavaScript Code Style](http://jscs.info/) is different from the others in that it doesn’t do anything unless you give it a configuration file or tell it to use a preset. You can download configurations from their website, so it’s not a big problem, and it has a number of presets, such as the [jQuery](/_glossary/JQUERY.md) coding style preset and the Google preset. JSCS is a code style checker. This means it only catches issues related to code formatting, and not potential bugs or errors.
','<h1 id="jscs">JSCS</h1>
<p><a href="http://jscs.info/">JSCS — JavaScript Code Style</a> is different from the others in that it doesn’t do anything unless you give it a configuration file or tell it to use a preset. You can download configurations from their website, so it’s not a big problem, and it has a number of presets, such as the <a href="/_glossary/JQUERY.md">jQuery</a> coding style preset and the Google preset. JSCS is a code style checker. This means it only catches issues related to code formatting, and not potential bugs or errors.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/JSCS.md','#JS')
,('1ef1b87b-c2e4-4b31-961c-d7b891bdddf3','CommonJS','a project with the goal of specifying an ecosystem for JavaScript outside the browser (for example, on the server or for native desktop applications)','

# CommonJS

**CommonJS** is a project with the goal of specifying an ecosystem for JavaScript outside the browser (for example, on the server or for native desktop applications).

Server side JavaScript has been around for a long time, and potentially offers some unique and interesting advantages over other languages because the same language is spoken by both client and server.

Unfortunately, though, server side JavaScript is very fragmented. A script that accesses files can’t be used without modification on both rhino and [V8](/_glossary/V8.md). Spidermonkey and JavaScriptCore can’t both load in additional modules in the same way. A JavaScript web framework is very much tied to its interpreter and is often forced to create a bunch of APIs that Python, Ruby and Java programmers take for granted.

The goal for this project is to create a standard library that will ultimately allow web developers to choose among any number of web frameworks and tools and run that code on the platform that makes the most sense for their application.

## History

The project was started by Mozilla engineer Kevin Dangoor in January 2009 and initially named **ServerJS**.

> What I’m describing here is not a technical problem. It’s a matter of people getting together and making a decision to step forward and start building up something bigger and cooler together.
> — Kevin Dangoor

In August 2009, the project was renamed **CommonJS** to show the broader applicability of the APIs. Specifications are created and approved in an open process. A specification is only considered final after it has been finished by multiple implementations. **CommonJS** is not affiliated with the [ECMA](/_glossary/ECMASCRIPT.md) International group TC39 working on ECMAScript, but some members of TC39 participate in the project.

In May 2013, Isaac Z. Schlueter, the author of [npm](/_glossary/NPM.md), the package manager for [Node.js](/_glossary/NODEJS.md), said **CommonJS** is being made obsolete by Node.js, and is avoided by the core Node.js developers.

## Example usage

As an example, `foo.js` loads the module `circle.js` in the same directory.

The contents of `foo.js`:

```js
const circle = require(''./circle.js'');
console.log(`The area of a circle of radius 4 is ${circle.area(4)}`);
```

The contents of `circle.js`:

```js
const PI = Math.PI;

exports.area = function (r) {
  return PI * r * r;
};

exports.circumference = function (r) {
  return 2 * PI * r;
};
```

The module `circle.js` has exported the functions `area(..)` and `circumference(..)`. To add functions and objects to the root of your module, you can add them to the special `exports` object.

Variables local to the module will be private, as though the module was wrapped in a function. In this example the variable `PI` is private to `circle.js`.

If you want the root of your module’s export to be a function (such as a constructor) or if you want to export a complete object in one assignment instead of building it one property at a time, assign it to `module.exports` instead of `exports`.

Below, `bar.js` makes use of the square module, which exports a constructor:

```js
const square = require(''./square.js'');
var mySquare = square(2);
console.log(`The area of my square is ${mySquare.area()}`);
```

The `square` module is defined in `square.js`:

```js
// Assigning to exports will not modify module, must use module.exports
module.exports = function (width) {
  return {
    area: function () {
      return (width * width);
    }
  };
}
```

The module system is implemented in the `require(''module'')` module.

*This section was taken from [Node.js documentation site](https://nodejs.org/docs/latest/api/modules.html).*
','<h1 id="commonjs">CommonJS</h1>
<p><strong>CommonJS</strong> is a project with the goal of specifying an ecosystem for JavaScript outside the browser (for example, on the server or for native desktop applications).</p>
<p>Server side JavaScript has been around for a long time, and potentially offers some unique and interesting advantages over other languages because the same language is spoken by both client and server.</p>
<p>Unfortunately, though, server side JavaScript is very fragmented. A script that accesses files can’t be used without modification on both rhino and <a href="/_glossary/V8.md">V8</a>. Spidermonkey and JavaScriptCore can’t both load in additional modules in the same way. A JavaScript web framework is very much tied to its interpreter and is often forced to create a bunch of APIs that Python, Ruby and Java programmers take for granted.</p>
<p>The goal for this project is to create a standard library that will ultimately allow web developers to choose among any number of web frameworks and tools and run that code on the platform that makes the most sense for their application.</p>
<h2 id="history">History</h2>
<p>The project was started by Mozilla engineer Kevin Dangoor in January 2009 and initially named <strong>ServerJS</strong>.</p>
<blockquote>
<p>What I’m describing here is not a technical problem. It’s a matter of people getting together and making a decision to step forward and start building up something bigger and cooler together.
— Kevin Dangoor</p>
</blockquote>
<p>In August 2009, the project was renamed <strong>CommonJS</strong> to show the broader applicability of the APIs. Specifications are created and approved in an open process. A specification is only considered final after it has been finished by multiple implementations. <strong>CommonJS</strong> is not affiliated with the <a href="/_glossary/ECMASCRIPT.md">ECMA</a> International group TC39 working on ECMAScript, but some members of TC39 participate in the project.</p>
<p>In May 2013, Isaac Z. Schlueter, the author of <a href="/_glossary/NPM.md">npm</a>, the package manager for <a href="/_glossary/NODEJS.md">Node.js</a>, said <strong>CommonJS</strong> is being made obsolete by Node.js, and is avoided by the core Node.js developers.</p>
<h2 id="example-usage">Example usage</h2>
<p>As an example, <code>foo.js</code> loads the module <code>circle.js</code> in the same directory.</p>
<p>The contents of <code>foo.js</code>:</p>
<pre><code class="lang-js">const circle = require(&#39;./circle.js&#39;);
console.log(`The area of a circle of radius 4 is ${circle.area(4)}`);
</code></pre>
<p>The contents of <code>circle.js</code>:</p>
<pre><code class="lang-js">const PI = Math.PI;

exports.area = function (r) {
  return PI * r * r;
};

exports.circumference = function (r) {
  return 2 * PI * r;
};
</code></pre>
<p>The module <code>circle.js</code> has exported the functions <code>area(..)</code> and <code>circumference(..)</code>. To add functions and objects to the root of your module, you can add them to the special <code>exports</code> object.</p>
<p>Variables local to the module will be private, as though the module was wrapped in a function. In this example the variable <code>PI</code> is private to <code>circle.js</code>.</p>
<p>If you want the root of your module’s export to be a function (such as a constructor) or if you want to export a complete object in one assignment instead of building it one property at a time, assign it to <code>module.exports</code> instead of <code>exports</code>.</p>
<p>Below, <code>bar.js</code> makes use of the square module, which exports a constructor:</p>
<pre><code class="lang-js">const square = require(&#39;./square.js&#39;);
var mySquare = square(2);
console.log(`The area of my square is ${mySquare.area()}`);
</code></pre>
<p>The <code>square</code> module is defined in <code>square.js</code>:</p>
<pre><code class="lang-js">// Assigning to exports will not modify module, must use module.exports
module.exports = function (width) {
  return {
    area: function () {
      return (width * width);
    }
  };
}
</code></pre>
<p>The module system is implemented in the <code>require(&#39;module&#39;)</code> module.</p>
<p><em>This section was taken from <a href="https://nodejs.org/docs/latest/api/modules.html">Node.js documentation site</a>.</em></p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/COMMONJS.md','#OTHER')
,('495d497e-a742-472f-98b5-38210200dccd','CouchDB','a NoSQL database with JavaScript as query language and HTTP as API','

# CouchDB

[Apache CouchDB](http://couchdb.apache.org/), commonly referred to as CouchDB, is an open source database that focuses on ease of use and on being “a database that completely embraces the web”.

It is a document-oriented NoSQL database that uses [JSON](/_glossary/JSON.md) to store data, JavaScript as its query language using MapReduce, and HTTP for an API.

CouchDB was first released in 2005 and later became an Apache project in 2008.
','<h1 id="couchdb">CouchDB</h1>
<p><a href="http://couchdb.apache.org/">Apache CouchDB</a>, commonly referred to as CouchDB, is an open source database that focuses on ease of use and on being “a database that completely embraces the web”.</p>
<p>It is a document-oriented NoSQL database that uses <a href="/_glossary/JSON.md">JSON</a> to store data, JavaScript as its query language using MapReduce, and HTTP for an API.</p>
<p>CouchDB was first released in 2005 and later became an Apache project in 2008.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/COUCHDB.md','#NOSQL')
,('7e8adda4-96e5-4b1d-b9b3-f7dc76f5921f','Enzyme','a JavaScript Testing utility for React developed by AirBnB that makes it easier to assert, manipulate, and traverse React components’ output.','

# Enzyme

[Enzyme](https://github.com/airbnb/enzyme) is a JavaScript Testing utility for React developed by AirBnB that makes it easier to assert, manipulate, and traverse React components’ output. 
','<h1 id="enzyme">Enzyme</h1>
<p><a href="https://github.com/airbnb/enzyme">Enzyme</a> is a JavaScript Testing utility for React developed by AirBnB that makes it easier to assert, manipulate, and traverse React components’ output. </p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/ENZYME.md','#JS')
;
INSERT INTO articles.articles (id,"name",description,markdown,html,url,tag) VALUES 
('5f062f76-649e-47d7-9b8c-52a95490ded5','Four','a framework to develop 3D content for the web','

# Four

[Four](https://github.com/allotrop3/four) is a high level graphics API based on WebGL 1.0 for developing 3D content for the web. It lets you avoid the burden of repetition and complexity to speed up and simplify the development while exposing the flexibility of the [WebGL](/_glossary/WEBGL.md) API.

Here are an [introduction](http://www.sitepoint.com/introducing-four-webgl-easier/) and a [demo](http://allotrop3.github.io/four/).
','<h1 id="four">Four</h1>
<p><a href="https://github.com/allotrop3/four">Four</a> is a high level graphics API based on WebGL 1.0 for developing 3D content for the web. It lets you avoid the burden of repetition and complexity to speed up and simplify the development while exposing the flexibility of the <a href="/_glossary/WEBGL.md">WebGL</a> API.</p>
<p>Here are an <a href="http://www.sitepoint.com/introducing-four-webgl-easier/">introduction</a> and a <a href="http://allotrop3.github.io/four/">demo</a>.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/FOUR.md','#JS')
,('96e9f1d1-c9c9-46de-bad5-285831d2e07b','JSHint','a JavaScript code linter','

# JSHint

[JSHint](http://jshint.com/) was created as a more configurable version of [JSLint](/_glossary/JSLINT.md) (of which it is a fork). You can configure every rule, and put them into a configuration file, which makes JSHint easy to use in bigger projects. JSHint also has good documentation for each of the rules, so you know exactly what they do.
','<h1 id="jshint">JSHint</h1>
<p><a href="http://jshint.com/">JSHint</a> was created as a more configurable version of <a href="/_glossary/JSLINT.md">JSLint</a> (of which it is a fork). You can configure every rule, and put them into a configuration file, which makes JSHint easy to use in bigger projects. JSHint also has good documentation for each of the rules, so you know exactly what they do.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/JSHINT.md','#JS')
,('e4ec93ca-14ba-4f81-9383-1240cc9012a1','JSX','an XML-like syntax extension to JavaScript','

# JSX

[JSX](https://facebook.github.io/jsx/) is an XML-like syntax extension to JavaScript. It allows developers to write HTML directly in JS but needs to be transpiled before it can be used in the browser. JSX is developed at Facebook and mostly used to complement [React](/_glossary/REACT.md).
','<h1 id="jsx">JSX</h1>
<p><a href="https://facebook.github.io/jsx/">JSX</a> is an XML-like syntax extension to JavaScript. It allows developers to write HTML directly in JS but needs to be transpiled before it can be used in the browser. JSX is developed at Facebook and mostly used to complement <a href="/_glossary/REACT.md">React</a>.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/JSX.md','#JS')
,('426e15ef-2d3d-42ba-bdf1-32dcc90b1746','Currying','the process to transform a function with multiple parameters into a chain of functions of one parameter','

# Currying

Currying is the technique of translating the evaluation of a function that takes N arguments into evaluating a sequence of N functions, each with a single argument.

This process is done by calling the function with one parameter, and return a new function with the parameter already bound inside a [closure](/_glossary/CLOSURE.md).

For example, let’s say we have an `add` function that takes two parameters `a` and `b`:

```js
// The native function definition would be to have a and b as parameters:
add(3, 5)

// After currying the function, we can then apply it like so:
curryAdd(3)(5)
```

This is an interesting technique allowing to *partially call* a function, leaving the rest of the call for later.

For instance, with our previous `curryAdd` function:

```js
var add3 = curryAdd(3);
var add10 = curryAdd(10);

// Then we can call
add3(5) // => 8
add10(5) // => 15
```

[Lodash](/_glossary/LODASH.md), [Wu](https://fitzgen.github.io/wu.js/#curryable) and [Ramda](/_glossary/RAMDA.md) are 3 of the many libraries that provide currying.

## Currying with Javascript Libraries

Most Javascript libraries don''t stick to this pure definition of currying, and instead mix in a bit of partial application. What this means is that they allow you to call the curried functions with more than one argument at a time. As you give it arguments, it will continue returning new curried functions until you''ve given it all the arguments it expects, at which point it will apply them to the function. It''s really auto-curried partial application.

Thus, the following are equivalent:

```js
foo(1)(2)(3)(4)(5);
foo(1, 2, 3, 4, 5);
foo(1)(2, 3, 4, 5);
foo(1, 2)(3)(4, 5);
```

It''s "syntactic sugar" that most libraries use, and for them the end result is the same as when you call `foo(1)(2)(3)(4)(5)`.
','<h1 id="currying">Currying</h1>
<p>Currying is the technique of translating the evaluation of a function that takes N arguments into evaluating a sequence of N functions, each with a single argument.</p>
<p>This process is done by calling the function with one parameter, and return a new function with the parameter already bound inside a <a href="/_glossary/CLOSURE.md">closure</a>.</p>
<p>For example, let’s say we have an <code>add</code> function that takes two parameters <code>a</code> and <code>b</code>:</p>
<pre><code class="lang-js">// The native function definition would be to have a and b as parameters:
add(3, 5)

// After currying the function, we can then apply it like so:
curryAdd(3)(5)
</code></pre>
<p>This is an interesting technique allowing to <em>partially call</em> a function, leaving the rest of the call for later.</p>
<p>For instance, with our previous <code>curryAdd</code> function:</p>
<pre><code class="lang-js">var add3 = curryAdd(3);
var add10 = curryAdd(10);

// Then we can call
add3(5) // =&gt; 8
add10(5) // =&gt; 15
</code></pre>
<p><a href="/_glossary/LODASH.md">Lodash</a>, <a href="https://fitzgen.github.io/wu.js/#curryable">Wu</a> and <a href="/_glossary/RAMDA.md">Ramda</a> are 3 of the many libraries that provide currying.</p>
<h2 id="currying-with-javascript-libraries">Currying with Javascript Libraries</h2>
<p>Most Javascript libraries don&#39;t stick to this pure definition of currying, and instead mix in a bit of partial application. What this means is that they allow you to call the curried functions with more than one argument at a time. As you give it arguments, it will continue returning new curried functions until you&#39;ve given it all the arguments it expects, at which point it will apply them to the function. It&#39;s really auto-curried partial application.</p>
<p>Thus, the following are equivalent:</p>
<pre><code class="lang-js">foo(1)(2)(3)(4)(5);
foo(1, 2, 3, 4, 5);
foo(1)(2, 3, 4, 5);
foo(1, 2)(3)(4, 5);
</code></pre>
<p>It&#39;s &quot;syntactic sugar&quot; that most libraries use, and for them the end result is the same as when you call <code>foo(1)(2)(3)(4)(5)</code>.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/CURRYING.md','#OTHER')
,('d90d2b7b-a46c-4617-8d8e-de30d1ab5a3f','Express','a fast, un-opinionated, minimalist web framework for Node.js','

# Express

[Express](http://expressjs.com/en/index.html) is a fast, un-opinionated, minimalist web framework for [Node.js](/_glossary/NODEJS.md). Express provides a thin layer of fundamental web application features, without obscuring Node.js features that developers already know and like. The myriad of HTTP utility methods and middleware provided by Express makes creating a robust API quick and easy.
','<h1 id="express">Express</h1>
<p><a href="http://expressjs.com/en/index.html">Express</a> is a fast, un-opinionated, minimalist web framework for <a href="/_glossary/NODEJS.md">Node.js</a>. Express provides a thin layer of fundamental web application features, without obscuring Node.js features that developers already know and like. The myriad of HTTP utility methods and middleware provided by Express makes creating a robust API quick and easy.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/EXPRESS.md','#JS')
,('ff10fbcd-7a5d-42f3-86fb-1f170e424aee','Grunt','a task runner aiming at automating tedious and possibly complex tasks','

# Grunt

[Grunt](http://gruntjs.com/) is a task runner aiming at automating tedious and possibly complex tasks. The idea behind Grunt (and its peer [Gulp](/_glossary/GULP.md)) is to define tasks that perform (usually file-based) actions. These tasks can then be run through the command line or as part of another build step.
','<h1 id="grunt">Grunt</h1>
<p><a href="http://gruntjs.com/">Grunt</a> is a task runner aiming at automating tedious and possibly complex tasks. The idea behind Grunt (and its peer <a href="/_glossary/GULP.md">Gulp</a>) is to define tasks that perform (usually file-based) actions. These tasks can then be run through the command line or as part of another build step.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/GRUNT.md','#JS')
,('c65fb1fa-ef21-4101-8035-0201f3a3819e','Hapi','a Node JS framework for writing services and more','

# Hapi

[Hapi](http://hapijs.com/) is a simple to use configuration-centric framework with built-in support for input validation, caching, authentication, and other essential facilities for building web and services applications. Hapi enables developers to focus on writing reusable application logic in a highly modular and prescriptive approach.
','<h1 id="hapi">Hapi</h1>
<p><a href="http://hapijs.com/">Hapi</a> is a simple to use configuration-centric framework with built-in support for input validation, caching, authentication, and other essential facilities for building web and services applications. Hapi enables developers to focus on writing reusable application logic in a highly modular and prescriptive approach.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/HAPI.md','#JS')
,('ef57eb81-5ef1-48ba-a730-9720ecc63fdc','JSLint','a JavaScript code linter','

# JSLint

[JSLint](http://www.jslint.com/) is a static analysis “code quality” tool for JavaScript.The downsides are that JSLint is not configurable or extensible. You can’t disable many features at all, and some of them lack documentation.
','<h1 id="jslint">JSLint</h1>
<p><a href="http://www.jslint.com/">JSLint</a> is a static analysis “code quality” tool for JavaScript.The downsides are that JSLint is not configurable or extensible. You can’t disable many features at all, and some of them lack documentation.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/JSLINT.md','#JS')
,('e3ba0899-3a38-40bb-bfd3-beb0e006da00','Mediator Pattern','an object that encapsulates how a set of objects interact','

# Mediator Pattern

In software engineering, the [mediator pattern](https://en.wikipedia.org/wiki/Mediator_pattern) defines an object that encapsulates how a set of objects interact. This pattern is considered to be a behavioral pattern due to the way it can alter the program’s running behavior.

Usually a program is made up of a large number of classes. So the logic and computation is distributed among these classes. However, as more classes are developed in a program, especially during maintenance and/or refactoring, the problem of communication between these classes may become more complex. This makes the program harder to read and maintain. Furthermore, it can become difficult to change the program, since any change may affect code in several other classes.

With the **mediator pattern**, communication between objects is encapsulated with a **mediator** object. Objects no longer communicate directly with each other, but instead communicate through the mediator. This reduces the dependencies between communicating objects, thereby lowering the coupling.

## Definition

The essence of the Mediator Pattern is to “define an object that encapsulates how a set of objects interact.” It promotes loose coupling by keeping objects from referring to each other explicitly, and it allows their interaction to be varied independently. Client classes can use the mediator to send messages to other clients, and can receive messages from other clients via an event on the mediator class.

## Structure

![Mediator Pattern structure](http://www.dofactory.com/images/diagrams/javascript/javascript-mediator.jpg)

The objects participating in this pattern are:

- **Mediator** - In sample code: `Chatroom`
  - defines an interface for communicating with `Colleague` objects
  - maintains references to `Colleague` objects
  - manages central control over operations
- **Colleagues** - In sample code: `Participants`
 - objects that are being mediated by the `Mediator`
 - each instance maintains a reference to the `Mediator`

## Example

In the example code we have four participants that are joining in a chat session by registering with a Chatroom (the Mediator). Each participant is represented by a Participant object. Participants send messages to each other and the Chatroom handles the routing.

This example is simple, but other complex rules could have been added, such as a “junk filter” to protect participants from receiving junk messages.

The log function is a helper which collects and displays results.

```js
class Participant {
  constructor(name) {
    this.name = name;
    this.chatroom = null;
  }

  send(message, to) {
    this.chatroom.send(message, this, to);
  }

  receive(message, from) {
    log.add(from.name + " to " + this.name + ": " + message);
  }
}
 
let Chatroom = function() {
  let participants = {};

  return { 
    register: function(participant) {
      participants[participant.name] = participant;
      participant.chatroom = this;
    },
  
    send: function(message, from, to) {
      if (to) {                      // single message
        to.receive(message, from);    
      } else {                       // broadcast message
        for (let key in participants) {   
          if (participants[key] !== from) {
            participants[key].receive(message, from);
          }
        }
      }
    }
  };
};

// log helper
log = (function() {
    let log = '''';

    return {
        add: msg => { log += msg + ''\n''; },
        show: () => { alert(log); log = ''''; }
    }
})();
 
function run() {
  let yoko = new Participant(''Yoko''),
      john = new Participant(''John''),
      paul = new Participant(''Paul''),
      ringo = new Participant(''Ringo''),
      chatroom = new Chatroom(),

  chatroom.register(yoko);
  chatroom.register(john);
  chatroom.register(paul);
  chatroom.register(ringo);

  yoko.send(''All you need is love.'');
  yoko.send(''I love you John.'');
  john.send(''Hey, no need to broadcast'', yoko);
  paul.send(''Ha, I heard that!'');
  ringo.send(''Paul, what do you think?'', paul);

  log.show();
}

run();
```

----------

*Source:*

- [Mediator pattern](https://en.wikipedia.org/wiki/Mediator_pattern)*. From Wikipedia, the free encyclopedia.*
- [Mediator](http://www.dofactory.com/javascript/mediator-design-pattern)*. Mediator JavaScript Design Pattern with examples.*
','<h1 id="mediator-pattern">Mediator Pattern</h1>
<p>In software engineering, the <a href="https://en.wikipedia.org/wiki/Mediator_pattern">mediator pattern</a> defines an object that encapsulates how a set of objects interact. This pattern is considered to be a behavioral pattern due to the way it can alter the program’s running behavior.</p>
<p>Usually a program is made up of a large number of classes. So the logic and computation is distributed among these classes. However, as more classes are developed in a program, especially during maintenance and/or refactoring, the problem of communication between these classes may become more complex. This makes the program harder to read and maintain. Furthermore, it can become difficult to change the program, since any change may affect code in several other classes.</p>
<p>With the <strong>mediator pattern</strong>, communication between objects is encapsulated with a <strong>mediator</strong> object. Objects no longer communicate directly with each other, but instead communicate through the mediator. This reduces the dependencies between communicating objects, thereby lowering the coupling.</p>
<h2 id="definition">Definition</h2>
<p>The essence of the Mediator Pattern is to “define an object that encapsulates how a set of objects interact.” It promotes loose coupling by keeping objects from referring to each other explicitly, and it allows their interaction to be varied independently. Client classes can use the mediator to send messages to other clients, and can receive messages from other clients via an event on the mediator class.</p>
<h2 id="structure">Structure</h2>
<p><img src="http://www.dofactory.com/images/diagrams/javascript/javascript-mediator.jpg" alt="Mediator Pattern structure"></p>
<p>The objects participating in this pattern are:</p>
<ul>
<li><strong>Mediator</strong> - In sample code: <code>Chatroom</code><ul>
<li>defines an interface for communicating with <code>Colleague</code> objects</li>
<li>maintains references to <code>Colleague</code> objects</li>
<li>manages central control over operations</li>
</ul>
</li>
<li><strong>Colleagues</strong> - In sample code: <code>Participants</code><ul>
<li>objects that are being mediated by the <code>Mediator</code></li>
<li>each instance maintains a reference to the <code>Mediator</code></li>
</ul>
</li>
</ul>
<h2 id="example">Example</h2>
<p>In the example code we have four participants that are joining in a chat session by registering with a Chatroom (the Mediator). Each participant is represented by a Participant object. Participants send messages to each other and the Chatroom handles the routing.</p>
<p>This example is simple, but other complex rules could have been added, such as a “junk filter” to protect participants from receiving junk messages.</p>
<p>The log function is a helper which collects and displays results.</p>
<pre><code class="lang-js">class Participant {
  constructor(name) {
    this.name = name;
    this.chatroom = null;
  }

  send(message, to) {
    this.chatroom.send(message, this, to);
  }

  receive(message, from) {
    log.add(from.name + &quot; to &quot; + this.name + &quot;: &quot; + message);
  }
}

let Chatroom = function() {
  let participants = {};

  return { 
    register: function(participant) {
      participants[participant.name] = participant;
      participant.chatroom = this;
    },

    send: function(message, from, to) {
      if (to) {                      // single message
        to.receive(message, from);    
      } else {                       // broadcast message
        for (let key in participants) {   
          if (participants[key] !== from) {
            participants[key].receive(message, from);
          }
        }
      }
    }
  };
};

// log helper
log = (function() {
    let log = &#39;&#39;;

    return {
        add: msg =&gt; { log += msg + &#39;\n&#39;; },
        show: () =&gt; { alert(log); log = &#39;&#39;; }
    }
})();

function run() {
  let yoko = new Participant(&#39;Yoko&#39;),
      john = new Participant(&#39;John&#39;),
      paul = new Participant(&#39;Paul&#39;),
      ringo = new Participant(&#39;Ringo&#39;),
      chatroom = new Chatroom(),

  chatroom.register(yoko);
  chatroom.register(john);
  chatroom.register(paul);
  chatroom.register(ringo);

  yoko.send(&#39;All you need is love.&#39;);
  yoko.send(&#39;I love you John.&#39;);
  john.send(&#39;Hey, no need to broadcast&#39;, yoko);
  paul.send(&#39;Ha, I heard that!&#39;);
  ringo.send(&#39;Paul, what do you think?&#39;, paul);

  log.show();
}

run();
</code></pre>
<hr>
<p><em>Source:</em></p>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Mediator_pattern">Mediator pattern</a><em>. From Wikipedia, the free encyclopedia.</em></li>
<li><a href="http://www.dofactory.com/javascript/mediator-design-pattern">Mediator</a><em>. Mediator JavaScript Design Pattern with examples.</em></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/MEDIATOR_PATTERN.md','#OTHER')
,('32935f8c-ec44-4f1f-84d0-47d7f4b34859','MongoDB','a Javascript NoSQL database','

# MongoDB

[MongoDB](https://www.mongodb.org/) is a fast, reliable and performant Javascript-powered **NoSQL** database. It uses the concept of **Documents** which is a sort of [JSON](/_glossary/JSON.md)-like data model (called **BSON** for Binary Simple Object Model), making querying faster and easier.

The main advantage over traditional MySQL databases is the flexibility offered by the Document Model to achieve simpler and faster integration.
','<h1 id="mongodb">MongoDB</h1>
<p><a href="https://www.mongodb.org/">MongoDB</a> is a fast, reliable and performant Javascript-powered <strong>NoSQL</strong> database. It uses the concept of <strong>Documents</strong> which is a sort of <a href="/_glossary/JSON.md">JSON</a>-like data model (called <strong>BSON</strong> for Binary Simple Object Model), making querying faster and easier.</p>
<p>The main advantage over traditional MySQL databases is the flexibility offered by the Document Model to achieve simpler and faster integration.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/MONGODB.md','#NOSQL')
;
INSERT INTO articles.articles (id,"name",description,markdown,html,url,tag) VALUES 
('62d42bb2-d91f-4582-babb-869453bb4a2e','ESLint','a JavaScript code linter','

# ESLint

[ESLint](http://eslint.org/) is the most recent out of the JavaScript linters out there. It was designed to be easily extensible, comes with a large number of custom rules, and is easy to install more in the form of plugins. It gives concise output, but includes the rule name by default so you always know which rules are causing the error messages.

There are two very popular ready to use configuration for ESLint: [standard](https://github.com/feross/standard) (no semicolons) and [semistandard](https://github.com/Flet/semistandard).
','<h1 id="eslint">ESLint</h1>
<p><a href="http://eslint.org/">ESLint</a> is the most recent out of the JavaScript linters out there. It was designed to be easily extensible, comes with a large number of custom rules, and is easy to install more in the form of plugins. It gives concise output, but includes the rule name by default so you always know which rules are causing the error messages.</p>
<p>There are two very popular ready to use configuration for ESLint: <a href="https://github.com/feross/standard">standard</a> (no semicolons) and <a href="https://github.com/Flet/semistandard">semistandard</a>.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/ESLINT.md','#JS')
,('6992a694-18c2-4cdb-bb1a-32464e6a44dd','Falcor','a JavaScript library for efficient data fetching','

# Falcor

[Falcor](https://netflix.github.io/falcor/) is a JavaScript library for efficient data fetching.

### One Model Everywhere

Falcor lets you represent all your remote data sources as a single domain model via a virtual [JSON](/_glossary/JSON.md) graph. You code the same way no matter where the data is, whether in memory on the client or over the network on the server.

### The Data is the API

A JavaScript-like path syntax makes it easy to access as much or as little data as you want, when you want it. You retrieve your data using familiar JavaScript operations like get, set, and call. If you know your data, you know your API.

### Bind to the Cloud

Falcor automatically traverses references in your graph and makes requests as needed. Falcor transparently handles all network communications, opportunistically batching and de-duping requests.

## Getting Started

You can check out a working example server for a Netflix-like application [here](http://github.com/netflix/falcor-express-demo) right now. Alternately you can go through this barebones tutorial in which we use the Falcor Router to create a Virtual JSON resource. In this tutorial we will use Falcor’s express middleware to serve the Virtual JSON resource on an application server at the URL /model.json. We will also host a static web page on the same server which retrieves data from the Virtual JSON resource.

### Creating a Virtual JSON Resource

In this example we will use the Falcor Router to build a Virtual JSON resource on an app server and host it at `/model.json`. The JSON resource will contain the following contents:

```json
{
  "greeting": "Hello World"
}
```

Normally Routers retrieve the data for their Virtual JSON resource from backend datastores or other web services on-demand. However in this simple tutorial the Router will simply return static data for a single key.

First we create a folder for our application server.

```sh
mkdir falcor-app-server
cd falcor-app-server
npm init
```

Now we install the falcor Router.

```sh
npm install falcor-router --save
```

Then install express and falcor-express. Support for [restify](https://github.com/netflix/falcor-restify), and [Hapi](https://github.com/netflix/falcor-hapi) is also available.

```sh
npm install express --save
npm install falcor-express --save
```

Now we create an `index.js` file with the following contents:

```js
// index.js
var falcorExpress = require(''falcor-express'');
var Router = require(''falcor-router'');
var express = require(''express'');
var app = express();

app.use(''/model.json'', falcorExpress.dataSourceRoute(function (req, res) {
  // create a Virtual JSON resource with single key (“greeting”)
  return new Router([
    {
      // match a request for the key “greeting”
      route: ''greeting'',
      // respond with a PathValue with the value of “Hello World”
      get: function () {
        return {
          path: [''greeting''],
          value: ''Hello World''
        };
      }
    }
  ]);
}));

// serve static files from current directory
app.use(express.static(__dirname + ''/''));

var server = app.listen(3000);
```

Now we run the server, which will listen on port 3000 for requests for `/model.json`.

```sh
node index.js
```

### Retrieving Data from the Virtual JSON resource

Now that we’ve built a simple virtual JSON document with a single read-only key “greeting”, we will create a test web page and retrieve this key from the server.

Now create an index.html file with the following contents:

```html
<!-- index.html -->
<html>
  <head>
    <!-- Do _not_  rely on this URL in production. Use only during development.  -->
    <script src="//netflix.github.io/falcor/build/falcor.browser.js"></script>
    <script>
      var model = new falcor.Model({
        source: new falcor.HttpDataSource(''/model.json'')
      });

      // retrieve the “greeting” key from the root of the Virtual JSON resource
      model
        .get(''greeting'')
        .then(function (response) {
          document.write(response.json.greeting);
        });
    </script>
  </head>
  <body>
  </body>
</html>
```

Now visit http://localhost:3000/index.html and you should see the message retrieved from the server:

![“Hello world” demo from Falcor rendering in a browser](http://netflix.github.io/falcor/starter/helloworld.png)

*This section was taken from [Falcor documentation site](http://netflix.github.io/falcor/).*
','<h1 id="falcor">Falcor</h1>
<p><a href="https://netflix.github.io/falcor/">Falcor</a> is a JavaScript library for efficient data fetching.</p>
<h3 id="one-model-everywhere">One Model Everywhere</h3>
<p>Falcor lets you represent all your remote data sources as a single domain model via a virtual <a href="/_glossary/JSON.md">JSON</a> graph. You code the same way no matter where the data is, whether in memory on the client or over the network on the server.</p>
<h3 id="the-data-is-the-api">The Data is the API</h3>
<p>A JavaScript-like path syntax makes it easy to access as much or as little data as you want, when you want it. You retrieve your data using familiar JavaScript operations like get, set, and call. If you know your data, you know your API.</p>
<h3 id="bind-to-the-cloud">Bind to the Cloud</h3>
<p>Falcor automatically traverses references in your graph and makes requests as needed. Falcor transparently handles all network communications, opportunistically batching and de-duping requests.</p>
<h2 id="getting-started">Getting Started</h2>
<p>You can check out a working example server for a Netflix-like application <a href="http://github.com/netflix/falcor-express-demo">here</a> right now. Alternately you can go through this barebones tutorial in which we use the Falcor Router to create a Virtual JSON resource. In this tutorial we will use Falcor’s express middleware to serve the Virtual JSON resource on an application server at the URL /model.json. We will also host a static web page on the same server which retrieves data from the Virtual JSON resource.</p>
<h3 id="creating-a-virtual-json-resource">Creating a Virtual JSON Resource</h3>
<p>In this example we will use the Falcor Router to build a Virtual JSON resource on an app server and host it at <code>/model.json</code>. The JSON resource will contain the following contents:</p>
<pre><code class="lang-json">{
  &quot;greeting&quot;: &quot;Hello World&quot;
}
</code></pre>
<p>Normally Routers retrieve the data for their Virtual JSON resource from backend datastores or other web services on-demand. However in this simple tutorial the Router will simply return static data for a single key.</p>
<p>First we create a folder for our application server.</p>
<pre><code class="lang-sh">mkdir falcor-app-server
cd falcor-app-server
npm init
</code></pre>
<p>Now we install the falcor Router.</p>
<pre><code class="lang-sh">npm install falcor-router --save
</code></pre>
<p>Then install express and falcor-express. Support for <a href="https://github.com/netflix/falcor-restify">restify</a>, and <a href="https://github.com/netflix/falcor-hapi">Hapi</a> is also available.</p>
<pre><code class="lang-sh">npm install express --save
npm install falcor-express --save
</code></pre>
<p>Now we create an <code>index.js</code> file with the following contents:</p>
<pre><code class="lang-js">// index.js
var falcorExpress = require(&#39;falcor-express&#39;);
var Router = require(&#39;falcor-router&#39;);
var express = require(&#39;express&#39;);
var app = express();

app.use(&#39;/model.json&#39;, falcorExpress.dataSourceRoute(function (req, res) {
  // create a Virtual JSON resource with single key (“greeting”)
  return new Router([
    {
      // match a request for the key “greeting”
      route: &#39;greeting&#39;,
      // respond with a PathValue with the value of “Hello World”
      get: function () {
        return {
          path: [&#39;greeting&#39;],
          value: &#39;Hello World&#39;
        };
      }
    }
  ]);
}));

// serve static files from current directory
app.use(express.static(__dirname + &#39;/&#39;));

var server = app.listen(3000);
</code></pre>
<p>Now we run the server, which will listen on port 3000 for requests for <code>/model.json</code>.</p>
<pre><code class="lang-sh">node index.js
</code></pre>
<h3 id="retrieving-data-from-the-virtual-json-resource">Retrieving Data from the Virtual JSON resource</h3>
<p>Now that we’ve built a simple virtual JSON document with a single read-only key “greeting”, we will create a test web page and retrieve this key from the server.</p>
<p>Now create an index.html file with the following contents:</p>
<pre><code class="lang-html">&lt;!-- index.html --&gt;
&lt;html&gt;
  &lt;head&gt;
    &lt;!-- Do _not_  rely on this URL in production. Use only during development.  --&gt;
    &lt;script src=&quot;//netflix.github.io/falcor/build/falcor.browser.js&quot;&gt;&lt;/script&gt;
    &lt;script&gt;
      var model = new falcor.Model({
        source: new falcor.HttpDataSource(&#39;/model.json&#39;)
      });

      // retrieve the “greeting” key from the root of the Virtual JSON resource
      model
        .get(&#39;greeting&#39;)
        .then(function (response) {
          document.write(response.json.greeting);
        });
    &lt;/script&gt;
  &lt;/head&gt;
  &lt;body&gt;
  &lt;/body&gt;
&lt;/html&gt;
</code></pre>
<p>Now visit <a href="http://localhost:3000/index.html">http://localhost:3000/index.html</a> and you should see the message retrieved from the server:</p>
<p><img src="http://netflix.github.io/falcor/starter/helloworld.png" alt="“Hello world” demo from Falcor rendering in a browser"></p>
<p><em>This section was taken from <a href="http://netflix.github.io/falcor/">Falcor documentation site</a>.</em></p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/FALCOR.md','#JS')
,('c4c263bc-a67e-4ce7-8c6f-6ca9bac8212a','Hoisting','an action performed by the JavaScript interpreter that moves function and variable declarations to the top of their containing scope','

# Hoisting

[“Hoisting”](http://www.adequatelygood.com/JavaScript-Scoping-and-Hoisting.html) is an action performed by the JavaScript interpreter that moves function declarations of the form `function foo() {}`, and variable declarations of the form `var foo;` to the top of their containing scope. During this process, only the actual declarations are moved; any value assignments are left in the place where they were written.
','<h1 id="hoisting">Hoisting</h1>
<p><a href="http://www.adequatelygood.com/JavaScript-Scoping-and-Hoisting.html">“Hoisting”</a> is an action performed by the JavaScript interpreter that moves function declarations of the form <code>function foo() {}</code>, and variable declarations of the form <code>var foo;</code> to the top of their containing scope. During this process, only the actual declarations are moved; any value assignments are left in the place where they were written.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/HOISTING.md','#OTHER')
,('ac25eb51-760f-4c21-a458-24b7e473a41f','Jest ','A unit testing framework','

# Jest

[Jest](https://facebook.github.io/jest/) is a unit testing framework.

* **Easy setup**: Complete and easy to set-up JavaScript testing solution. Works out of the box for any React project.
* **Instant feedback**: Fast interactive watch mode runs only test files related to changed files and is optimized to give signal quickly.
* **Snapshot testing**: Capture snapshots of React trees or other serializable values to simplify testing and to analyze how state changes over time.

## Philosophies

One of Jest’s philosophies is to provide an integrated “zero-configuration” experience. We observed that when engineers are provided with ready-to-use tools, they end up writing more tests, which in turn results in more stable and healthy codebases.
','<h1 id="jest">Jest</h1>
<p><a href="https://facebook.github.io/jest/">Jest</a> is a unit testing framework.</p>
<ul>
<li><strong>Easy setup</strong>: Complete and easy to set-up JavaScript testing solution. Works out of the box for any React project.</li>
<li><strong>Instant feedback</strong>: Fast interactive watch mode runs only test files related to changed files and is optimized to give signal quickly.</li>
<li><strong>Snapshot testing</strong>: Capture snapshots of React trees or other serializable values to simplify testing and to analyze how state changes over time.</li>
</ul>
<h2 id="philosophies">Philosophies</h2>
<p>One of Jest’s philosophies is to provide an integrated “zero-configuration” experience. We observed that when engineers are provided with ready-to-use tools, they end up writing more tests, which in turn results in more stable and healthy codebases.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/JEST.md','#TEST')
,('ab02445b-d3b9-489e-af10-62aa68402f02','JSON-LD','JSON for Linked Data','

# JSON-LD 

[JSON-LD (JSON for Linked Data)](http://json-ld.org/) is a lightweight Linked Data format. It is easy for humans to read and write. It is based on the already successful JSON format and provides a way to help [JSON](/_glossary/JSON.md) data interoperate at Web-scale. JSON-LD is an ideal data format for programming environments, REST Web services, and unstructured databases such as [CouchDB](/_glossary/COUCHDB.md) and [MongoDB](/_glossary/MONGODB.md). 
','<h1 id="json-ld">JSON-LD</h1>
<p><a href="http://json-ld.org/">JSON-LD (JSON for Linked Data)</a> is a lightweight Linked Data format. It is easy for humans to read and write. It is based on the already successful JSON format and provides a way to help <a href="/_glossary/JSON.md">JSON</a> data interoperate at Web-scale. JSON-LD is an ideal data format for programming environments, REST Web services, and unstructured databases such as <a href="/_glossary/COUCHDB.md">CouchDB</a> and <a href="/_glossary/MONGODB.md">MongoDB</a>. </p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/JSON-LD.md','#JS')
,('3e443836-ffaa-45ef-b044-3639ef8a3cf5','LocalForage','a fast and simple storage library for JavaScript','

# localForage

**Offline storage, improved.**

[localForage](https://mozilla.github.io/localForage/#localforage) is a JavaScript library that improves the offline experience of your web app by using an asynchronous data store with a simple, `localStorage`-like API. It allows developers to store many types of data instead of just strings.

localForage includes a localStorage-backed fallback store for browsers with no IndexedDB or WebSQL support. Asynchronous storage is available in the current versions of all major browsers: Chrome, Firefox, Internet Explorer, and Safari (including Safari Mobile).

**localForage offers a callback API as well as support for the** [ES6 Promises API](/_glossary/PROMISE.md), so you can use whichever you prefer.

## Installation

To use localForage, [download the latest release](https://github.com/mozilla/localForage/releases) or install with npm:

```sh
npm install localforage
```

or bower:

```sh
bower install localforage
```

Then simply include the JS file and start using localForage:

```html
<script src="localforage.js"></script>.
```

You don’t need to run any init method or wait for any `onready` events.

## How to use localForage

### Callbacks

Because localForage uses async storage, it has an async API. It’s otherwise exactly the same as the [localStorage API](https://hacks.mozilla.org/2009/06/localstorage/).

```js
// In localStorage, we would do:
var obj = { value: ''hello world'' };
localStorage.setItem(''key'', JSON.stringify(obj));
alert(obj.value);

// With localForage, we use callbacks:
localforage.setItem(''key'', obj, function(err, result) {
  alert(result.value);
});
```

Similarly, please don’t expect a return value from calls to `localforage.getItem()`. Instead, use a callback:

```js
// Synchronous; slower!
var value = JSON.parse(localStorage.getItem(''key''));
alert(value);

// Async, fast, and non-blocking!
localforage.getItem(''key'', function(err, value) { alert(value) });
```

Callbacks in localForage are Node-style (error argument first) since version `0.9.3`. This means if you’re using callbacks, your code should look like this:

```js
// Use err as your first argument.
localforage.getItem(''key'', function(err, value) {
  if (err) {
    console.error(''Oh noes!'');
  } else {
    alert(value);
  }
});
```

You can store any type in localForage; you aren’t limited to strings like in localStorage. Even if localStorage is your storage backend, localForage automatically does `JSON.parse()` and `JSON.stringify()` when getting/setting values.

### Promises

Promises are pretty cool! If you’d rather use promises than callbacks, localForage supports that too:

```js
function doSomethingElse(value) {
  console.log(value);
}

// With localForage, we allow promises:
localforage.setItem(''key'', ''value'').then(doSomethingElse);
```

When using Promises, `err` is **not** the first argument passed to a function. Instead, you handle an error with the rejection part of the Promise:

```js
// A full setItem() call with Promises.
localforage.setItem(''key'', ''value'').then(function(value) {
  alert(value + '' was set!'');
}, function(error) {
  console.error(error);
});
```

localForage relies on native [ES6 Promises](/_glossary/PROMISE.md), but [ships with an awesome polyfill](https://github.com/jakearchibald/es6-promise) for browsers that don’t support ES6 Promises yet.

### Storing Blobs, TypedArrays, and other JS objects

localForage supports storing all native JS objects that can be serialized to JSON, as well as ArrayBuffers, Blobs, and TypedArrays. Check the [API docs](https://mozilla.github.io/localForage/#setitem) for a full list of types supported by localForage.

All types are supported in every storage backend, though storage limits in localStorage make storing many large Blobs impossible.

### Configuration

You can set database information with the `config()` method. Available options are `driver`, `name`, `storeName`, `version`, `size`, and `description`.

Example:

```js
localforage.config({
  driver      : localforage.WEBSQL, // Force WebSQL; same as using setDriver()
  name        : ''myApp'',
  version     : 1.0,
  size        : 4980736, // Size of database, in bytes. WebSQL-only for now.
  storeName   : ''keyvaluepairs'', // Should be alphanumeric, with underscores.
  description : ''some description''
});
```

**Note**: you must call `config()` before you interact with your data. This means calling `config()` before using `getItem()`, `setItem()`, `removeItem()`, `clear()`, `key()`, `keys()` or `length()`.

### Multiple instances

You can create multiple instances of localForage that point to different stores using `createInstance`. All the configuration options used by [`config`](https://github.com/mozilla/localForage#configuration) are supported.

```js
var store = localforage.createInstance({
  name: ''nameHere''
});

var otherStore = localforage.createInstance({
  name: ''otherName''
});

// Setting the key on one of these doesn’t affect the other.
store.setItem(''key'', ''value'');
otherStore.setItem(''key'', ''value2'');
```

### RequireJS

You can use localForage with [RequireJS](/_glossary/REQUIREJS.md):

```js
define([''localforage''], function(localforage) {
  // As a callback:
  localforage.setItem(''mykey'', ''myvalue'', console.log);

  // With a Promise:
  localforage.setItem(''mykey'', ''myvalue'').then(console.log);
});
```

### Browserify and Webpack

localForage 1.3+ works with both Browserify and Webpack. If you’re using an earlier version of localForage and are having issues with Browserify or Webpack, please upgrade to 1.3.0 or above.

If you’re using localForage in your own build system (e.g. browserify or webpack) make sure you have the [required plugins and transformers](https://github.com/mozilla/localForage/blob/master/package.json#L24) installed (e.g. `$ npm install --save-dev babel-plugin-system-import-transformer`).

### Framework Support

If you use a framework listed, ther’s a localForage storage driver for the models in your framework so you can store data offline with localForage. We have drivers for the following frameworks:

- [AngularJS](https://github.com/ocombe/angular-localForage)
- [Backbone](https://github.com/mozilla/localForage-backbone)
- [Ember](https://github.com/genkgo/ember-localforage-adapter)

### Custom Drivers

You can create your own driver if you want; see the [`defineDriver`](https://mozilla.github.io/localForage/#definedriver) API docs.

There is a [list of custom drivers on the wiki](https://github.com/mozilla/localForage/wiki/Custom-Drivers).

----------

*Source:*

- [mozilla/localForage](https://github.com/mozilla/localForage)*. Official GitHub repo.*
- [localForage API Reference](https://mozilla.github.io/localForage/)*.*
','<h1 id="localforage">localForage</h1>
<p><strong>Offline storage, improved.</strong></p>
<p><a href="https://mozilla.github.io/localForage/#localforage">localForage</a> is a JavaScript library that improves the offline experience of your web app by using an asynchronous data store with a simple, <code>localStorage</code>-like API. It allows developers to store many types of data instead of just strings.</p>
<p>localForage includes a localStorage-backed fallback store for browsers with no IndexedDB or WebSQL support. Asynchronous storage is available in the current versions of all major browsers: Chrome, Firefox, Internet Explorer, and Safari (including Safari Mobile).</p>
<p><strong>localForage offers a callback API as well as support for the</strong> <a href="/_glossary/PROMISE.md">ES6 Promises API</a>, so you can use whichever you prefer.</p>
<h2 id="installation">Installation</h2>
<p>To use localForage, <a href="https://github.com/mozilla/localForage/releases">download the latest release</a> or install with npm:</p>
<pre><code class="lang-sh">npm install localforage
</code></pre>
<p>or bower:</p>
<pre><code class="lang-sh">bower install localforage
</code></pre>
<p>Then simply include the JS file and start using localForage:</p>
<pre><code class="lang-html">&lt;script src=&quot;localforage.js&quot;&gt;&lt;/script&gt;.
</code></pre>
<p>You don’t need to run any init method or wait for any <code>onready</code> events.</p>
<h2 id="how-to-use-localforage">How to use localForage</h2>
<h3 id="callbacks">Callbacks</h3>
<p>Because localForage uses async storage, it has an async API. It’s otherwise exactly the same as the <a href="https://hacks.mozilla.org/2009/06/localstorage/">localStorage API</a>.</p>
<pre><code class="lang-js">// In localStorage, we would do:
var obj = { value: &#39;hello world&#39; };
localStorage.setItem(&#39;key&#39;, JSON.stringify(obj));
alert(obj.value);

// With localForage, we use callbacks:
localforage.setItem(&#39;key&#39;, obj, function(err, result) {
  alert(result.value);
});
</code></pre>
<p>Similarly, please don’t expect a return value from calls to <code>localforage.getItem()</code>. Instead, use a callback:</p>
<pre><code class="lang-js">// Synchronous; slower!
var value = JSON.parse(localStorage.getItem(&#39;key&#39;));
alert(value);

// Async, fast, and non-blocking!
localforage.getItem(&#39;key&#39;, function(err, value) { alert(value) });
</code></pre>
<p>Callbacks in localForage are Node-style (error argument first) since version <code>0.9.3</code>. This means if you’re using callbacks, your code should look like this:</p>
<pre><code class="lang-js">// Use err as your first argument.
localforage.getItem(&#39;key&#39;, function(err, value) {
  if (err) {
    console.error(&#39;Oh noes!&#39;);
  } else {
    alert(value);
  }
});
</code></pre>
<p>You can store any type in localForage; you aren’t limited to strings like in localStorage. Even if localStorage is your storage backend, localForage automatically does <code>JSON.parse()</code> and <code>JSON.stringify()</code> when getting/setting values.</p>
<h3 id="promises">Promises</h3>
<p>Promises are pretty cool! If you’d rather use promises than callbacks, localForage supports that too:</p>
<pre><code class="lang-js">function doSomethingElse(value) {
  console.log(value);
}

// With localForage, we allow promises:
localforage.setItem(&#39;key&#39;, &#39;value&#39;).then(doSomethingElse);
</code></pre>
<p>When using Promises, <code>err</code> is <strong>not</strong> the first argument passed to a function. Instead, you handle an error with the rejection part of the Promise:</p>
<pre><code class="lang-js">// A full setItem() call with Promises.
localforage.setItem(&#39;key&#39;, &#39;value&#39;).then(function(value) {
  alert(value + &#39; was set!&#39;);
}, function(error) {
  console.error(error);
});
</code></pre>
<p>localForage relies on native <a href="/_glossary/PROMISE.md">ES6 Promises</a>, but <a href="https://github.com/jakearchibald/es6-promise">ships with an awesome polyfill</a> for browsers that don’t support ES6 Promises yet.</p>
<h3 id="storing-blobs-typedarrays-and-other-js-objects">Storing Blobs, TypedArrays, and other JS objects</h3>
<p>localForage supports storing all native JS objects that can be serialized to JSON, as well as ArrayBuffers, Blobs, and TypedArrays. Check the <a href="https://mozilla.github.io/localForage/#setitem">API docs</a> for a full list of types supported by localForage.</p>
<p>All types are supported in every storage backend, though storage limits in localStorage make storing many large Blobs impossible.</p>
<h3 id="configuration">Configuration</h3>
<p>You can set database information with the <code>config()</code> method. Available options are <code>driver</code>, <code>name</code>, <code>storeName</code>, <code>version</code>, <code>size</code>, and <code>description</code>.</p>
<p>Example:</p>
<pre><code class="lang-js">localforage.config({
  driver      : localforage.WEBSQL, // Force WebSQL; same as using setDriver()
  name        : &#39;myApp&#39;,
  version     : 1.0,
  size        : 4980736, // Size of database, in bytes. WebSQL-only for now.
  storeName   : &#39;keyvaluepairs&#39;, // Should be alphanumeric, with underscores.
  description : &#39;some description&#39;
});
</code></pre>
<p><strong>Note</strong>: you must call <code>config()</code> before you interact with your data. This means calling <code>config()</code> before using <code>getItem()</code>, <code>setItem()</code>, <code>removeItem()</code>, <code>clear()</code>, <code>key()</code>, <code>keys()</code> or <code>length()</code>.</p>
<h3 id="multiple-instances">Multiple instances</h3>
<p>You can create multiple instances of localForage that point to different stores using <code>createInstance</code>. All the configuration options used by <a href="https://github.com/mozilla/localForage#configuration"><code>config</code></a> are supported.</p>
<pre><code class="lang-js">var store = localforage.createInstance({
  name: &#39;nameHere&#39;
});

var otherStore = localforage.createInstance({
  name: &#39;otherName&#39;
});

// Setting the key on one of these doesn’t affect the other.
store.setItem(&#39;key&#39;, &#39;value&#39;);
otherStore.setItem(&#39;key&#39;, &#39;value2&#39;);
</code></pre>
<h3 id="requirejs">RequireJS</h3>
<p>You can use localForage with <a href="/_glossary/REQUIREJS.md">RequireJS</a>:</p>
<pre><code class="lang-js">define([&#39;localforage&#39;], function(localforage) {
  // As a callback:
  localforage.setItem(&#39;mykey&#39;, &#39;myvalue&#39;, console.log);

  // With a Promise:
  localforage.setItem(&#39;mykey&#39;, &#39;myvalue&#39;).then(console.log);
});
</code></pre>
<h3 id="browserify-and-webpack">Browserify and Webpack</h3>
<p>localForage 1.3+ works with both Browserify and Webpack. If you’re using an earlier version of localForage and are having issues with Browserify or Webpack, please upgrade to 1.3.0 or above.</p>
<p>If you’re using localForage in your own build system (e.g. browserify or webpack) make sure you have the <a href="https://github.com/mozilla/localForage/blob/master/package.json#L24">required plugins and transformers</a> installed (e.g. <code>$ npm install --save-dev babel-plugin-system-import-transformer</code>).</p>
<h3 id="framework-support">Framework Support</h3>
<p>If you use a framework listed, ther’s a localForage storage driver for the models in your framework so you can store data offline with localForage. We have drivers for the following frameworks:</p>
<ul>
<li><a href="https://github.com/ocombe/angular-localForage">AngularJS</a></li>
<li><a href="https://github.com/mozilla/localForage-backbone">Backbone</a></li>
<li><a href="https://github.com/genkgo/ember-localforage-adapter">Ember</a></li>
</ul>
<h3 id="custom-drivers">Custom Drivers</h3>
<p>You can create your own driver if you want; see the <a href="https://mozilla.github.io/localForage/#definedriver"><code>defineDriver</code></a> API docs.</p>
<p>There is a <a href="https://github.com/mozilla/localForage/wiki/Custom-Drivers">list of custom drivers on the wiki</a>.</p>
<hr>
<p><em>Source:</em></p>
<ul>
<li><a href="https://github.com/mozilla/localForage">mozilla/localForage</a><em>. Official GitHub repo.</em></li>
<li><a href="https://mozilla.github.io/localForage/">localForage API Reference</a><em>.</em></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/LOCALFORAGE.md','#OTHER')
,('95b92bf1-e057-4f5c-889a-1c0da866bc7f','Metalsmith','a simple, pluggable static site generator','

# Metalsmith

[Metalsmith](http://metalsmith.io/) is an abstraction for manipulating a directory of files. To put it simply, it is a static site generator.

Metalsmith, at its core, takes files in a source directory, perform operations on them via plugins, and writes those files into a destination directory. Plugins can do virtually anything: create new files, filter out files, modify files based on some logic, etc (note this means that plugin order does matter; transformations done by one plugin can be seen and used by following plugins, making the process a modular build pipeline). The entire ecosystem of plugins is what makes Metalsmith so flexible.

','<h1 id="metalsmith">Metalsmith</h1>
<p><a href="http://metalsmith.io/">Metalsmith</a> is an abstraction for manipulating a directory of files. To put it simply, it is a static site generator.</p>
<p>Metalsmith, at its core, takes files in a source directory, perform operations on them via plugins, and writes those files into a destination directory. Plugins can do virtually anything: create new files, filter out files, modify files based on some logic, etc (note this means that plugin order does matter; transformations done by one plugin can be seen and used by following plugins, making the process a modular build pipeline). The entire ecosystem of plugins is what makes Metalsmith so flexible.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/METALSMITH.md','#OTHER')
,('ac926f05-52cf-48bd-a541-ae74aa2b22cd','Mocha','an extensible testing framework for TDD (Test-Driven Development) or BDD (Behaviour-Driven Development)','

# Mocha

[Mocha](https://mochajs.org/) is an extensible, open-source JavaScript testing framework that runs in [Node.js](/_glossary/NODEJS.md) or the browser. It supports both TDD and BDD by allowing you to use any assertion library, such as [expect.js](https://github.com/Automattic/expect.js), [should.js](https://github.com/shouldjs/should.js), and [Chai](/_glossary/CHAI.md).

Mocha supports spies, stubs and mocks through libraries, such as [Sinon](https://github.com/sinonjs/sinon).

Mocha supports testing both synchronous and asynchronous code, including [promises](http://www.sitepoint.com/promises-in-javascript-unit-tests-the-definitive-guide/).
','<h1 id="mocha">Mocha</h1>
<p><a href="https://mochajs.org/">Mocha</a> is an extensible, open-source JavaScript testing framework that runs in <a href="/_glossary/NODEJS.md">Node.js</a> or the browser. It supports both TDD and BDD by allowing you to use any assertion library, such as <a href="https://github.com/Automattic/expect.js">expect.js</a>, <a href="https://github.com/shouldjs/should.js">should.js</a>, and <a href="/_glossary/CHAI.md">Chai</a>.</p>
<p>Mocha supports spies, stubs and mocks through libraries, such as <a href="https://github.com/sinonjs/sinon">Sinon</a>.</p>
<p>Mocha supports testing both synchronous and asynchronous code, including <a href="http://www.sitepoint.com/promises-in-javascript-unit-tests-the-definitive-guide/">promises</a>.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/MOCHA.md','#TEST')
,('674185b0-feb1-4666-97cf-94049aec1373','Node.js','a cross-platform runtime environment for developing server-side applications built on V8 engine','

# Node.js

[Node.js](https://nodejs.org/en/) is an open-source, cross-platform runtime environment for developing server-side web applications built on Chrome’s [V8](/_glossary/V8.md) JavaScript engine. These applications are written in JavaScript and can be run within the Node.js runtime.

Node.js uses an event-driven, non-blocking I/O (input/output) model that makes it lightweight and efficient as well as optimized for real-time web applications’ throughput and scalability.

Its work is hosted and supported by the [Node.js Foundation](https://nodejs.org/en/foundation/), a collaborative project at Linux Foundation.
','<h1 id="node-js">Node.js</h1>
<p><a href="https://nodejs.org/en/">Node.js</a> is an open-source, cross-platform runtime environment for developing server-side web applications built on Chrome’s <a href="/_glossary/V8.md">V8</a> JavaScript engine. These applications are written in JavaScript and can be run within the Node.js runtime.</p>
<p>Node.js uses an event-driven, non-blocking I/O (input/output) model that makes it lightweight and efficient as well as optimized for real-time web applications’ throughput and scalability.</p>
<p>Its work is hosted and supported by the <a href="https://nodejs.org/en/foundation/">Node.js Foundation</a>, a collaborative project at Linux Foundation.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/NODEJS.md','#JS')
,('586b4a02-229b-4b6f-a0c8-00c357ff131e','Module Pattern','a design pattern used to implement the concept of software modules, defined by modular programming, in a programming language with incomplete direct support for the concept','

# Module Pattern

In software engineering, the [module pattern](https://en.wikipedia.org/wiki/Module_pattern) is a design pattern used to implement the concept of software modules, defined by modular programming, in a programming language with incomplete direct support for the concept.

This pattern can be implemented in several ways depending on the host programming language, such as the singleton design pattern, object-oriented static members in a class and procedural global functions.

## Structure

The module software design pattern provides the features and syntactic structure defined by the modular programming paradigm to programming languages that have incomplete support for the concept.

![Module Pattern structure](https://upload.wikimedia.org/wikipedia/commons/7/73/Module-software-design-pattern.png)

## Concept

In software development, source code can be organized into components that accomplish a particular function or contain everything necessary to accomplish a particular task. Modular programming is one of those approaches.

The concept of a “module” is not fully supported in many common programming languages.

## Features

In order to consider that a Singleton or any group of related code implements this pattern, the following features must be supplied:

- A portion of the code must have global or public access and be designed for use as global/public code. Additional private or protected code can be executed by the main public code.
- A module must have an initializer function that is equivalent to, or complementary to an object constructor method. This feature is not supported by regular namespaces.
- A module must have a finalizer function that is equivalent to, or complementary to an object destructor method. This feature is not supported by regular namespaces.
- Supporting members may require initialization/finalization code that is executed by the module’s initializer/finalizer function.
- Most members are functions that perform operations on elements external to the class, provided as arguments by calling functions. Such functions are “utilities”, “tools” or “libraries”.

## Example

JavaScript does not have built-in support for modules, but the community has created impressive work-arounds. The two most popular standards are:

- [CommonJS Modules](/_glossary/COMMONJS.md): The dominant implementation of this standard is in Node.js ([Node.js](/_glossary/NODEJS.md) modules have a few features that go beyond CommonJS). Characteristics:
  - Compact syntax
  - Designed for synchronous loading
  - Main use: server
- [AMD](/_glossary/AMD.md): The most popular implementation of this standard is [RequireJS](/_glossary/REQUIREJS.md). Characteristics:
  - Slightly more complicated syntax, enabling AMD to work without eval() (or a compilation step)
  - Designed for asynchronous loading
  - Main use: browsers

In the middle of 2015, [TC39](https://github.com/tc39) have accepted the new standard **ECMAScript 2015** (ES6) which supports built-in modules through the new syntax.

#### CommonJS example

##### Definition

```js
// helper/MathHelper.js
module.exports = {
  add: function(left, right) {
    return left + right;
  },

  times: function(left, right) {
    return left * right;
  }
}
```

##### Implementation

```js
// program.js
var mathHelper = require(''./helper/MathHelper'');

console.log(mathHelper.add(5, 8)); // 13
console.log(mathHelper.times(3, 4)); // 12
```

#### AMD example

##### Definition

```js
// helper/MathHelper.js
define(function() {
  return {
    add: function(left, right) {
      return left + right;
    },

    times: function(left, right) {
      return left * right;
    }
  }
});
```

##### Implementation

```js
// program.js
requirejs([''helper/MathHelper''], function(matHelper) {
  console.log(mathHelper.add(5, 8)); // 13
  console.log(mathHelper.times(3, 4)); // 12
});
```

#### ES6 example

##### Definition

```js
// helper/MathHelper.js
export function add(left, right) {
  return left + right;
}

export function times(left, right) {
  return left * right;
}
```

##### Implementation

```js
// program.js
import { add, times } from ''./helper/MathHelper'';

console.log(add(5, 8)); // 13
console.log(times(3, 4)); // 12
```

## Module as a design pattern

The Module pattern can be considered a creational pattern and a structural pattern. It manages the creation and organization of other elements, and groups them as the structural pattern does.

An object that applies this pattern can provide the equivalent of a namespace, providing the initialization and finalization process of a static class or a class with static members with cleaner, more concise syntax and semantics.

It supports specific cases where a class or object can be considered structured, procedural data. And, vice versa, migrate structured, procedural data, and considered as object-oriented.

----------

*Source:*

- [Module pattern](https://en.wikipedia.org/wiki/Module_pattern)*. From Wikipedia, the free encyclopedia*
- [ECMAScript 6 modules: the final syntax](http://www.2ality.com/2014/09/es6-modules-final.html)*. ②ality – JavaScript and more*
','<h1 id="module-pattern">Module Pattern</h1>
<p>In software engineering, the <a href="https://en.wikipedia.org/wiki/Module_pattern">module pattern</a> is a design pattern used to implement the concept of software modules, defined by modular programming, in a programming language with incomplete direct support for the concept.</p>
<p>This pattern can be implemented in several ways depending on the host programming language, such as the singleton design pattern, object-oriented static members in a class and procedural global functions.</p>
<h2 id="structure">Structure</h2>
<p>The module software design pattern provides the features and syntactic structure defined by the modular programming paradigm to programming languages that have incomplete support for the concept.</p>
<p><img src="https://upload.wikimedia.org/wikipedia/commons/7/73/Module-software-design-pattern.png" alt="Module Pattern structure"></p>
<h2 id="concept">Concept</h2>
<p>In software development, source code can be organized into components that accomplish a particular function or contain everything necessary to accomplish a particular task. Modular programming is one of those approaches.</p>
<p>The concept of a “module” is not fully supported in many common programming languages.</p>
<h2 id="features">Features</h2>
<p>In order to consider that a Singleton or any group of related code implements this pattern, the following features must be supplied:</p>
<ul>
<li>A portion of the code must have global or public access and be designed for use as global/public code. Additional private or protected code can be executed by the main public code.</li>
<li>A module must have an initializer function that is equivalent to, or complementary to an object constructor method. This feature is not supported by regular namespaces.</li>
<li>A module must have a finalizer function that is equivalent to, or complementary to an object destructor method. This feature is not supported by regular namespaces.</li>
<li>Supporting members may require initialization/finalization code that is executed by the module’s initializer/finalizer function.</li>
<li>Most members are functions that perform operations on elements external to the class, provided as arguments by calling functions. Such functions are “utilities”, “tools” or “libraries”.</li>
</ul>
<h2 id="example">Example</h2>
<p>JavaScript does not have built-in support for modules, but the community has created impressive work-arounds. The two most popular standards are:</p>
<ul>
<li><a href="/_glossary/COMMONJS.md">CommonJS Modules</a>: The dominant implementation of this standard is in Node.js (<a href="/_glossary/NODEJS.md">Node.js</a> modules have a few features that go beyond CommonJS). Characteristics:<ul>
<li>Compact syntax</li>
<li>Designed for synchronous loading</li>
<li>Main use: server</li>
</ul>
</li>
<li><a href="/_glossary/AMD.md">AMD</a>: The most popular implementation of this standard is <a href="/_glossary/REQUIREJS.md">RequireJS</a>. Characteristics:<ul>
<li>Slightly more complicated syntax, enabling AMD to work without eval() (or a compilation step)</li>
<li>Designed for asynchronous loading</li>
<li>Main use: browsers</li>
</ul>
</li>
</ul>
<p>In the middle of 2015, <a href="https://github.com/tc39">TC39</a> have accepted the new standard <strong>ECMAScript 2015</strong> (ES6) which supports built-in modules through the new syntax.</p>
<h4 id="commonjs-example">CommonJS example</h4>
<h5 id="definition">Definition</h5>
<pre><code class="lang-js">// helper/MathHelper.js
module.exports = {
  add: function(left, right) {
    return left + right;
  },

  times: function(left, right) {
    return left * right;
  }
}
</code></pre>
<h5 id="implementation">Implementation</h5>
<pre><code class="lang-js">// program.js
var mathHelper = require(&#39;./helper/MathHelper&#39;);

console.log(mathHelper.add(5, 8)); // 13
console.log(mathHelper.times(3, 4)); // 12
</code></pre>
<h4 id="amd-example">AMD example</h4>
<h5 id="definition">Definition</h5>
<pre><code class="lang-js">// helper/MathHelper.js
define(function() {
  return {
    add: function(left, right) {
      return left + right;
    },

    times: function(left, right) {
      return left * right;
    }
  }
});
</code></pre>
<h5 id="implementation">Implementation</h5>
<pre><code class="lang-js">// program.js
requirejs([&#39;helper/MathHelper&#39;], function(matHelper) {
  console.log(mathHelper.add(5, 8)); // 13
  console.log(mathHelper.times(3, 4)); // 12
});
</code></pre>
<h4 id="es6-example">ES6 example</h4>
<h5 id="definition">Definition</h5>
<pre><code class="lang-js">// helper/MathHelper.js
export function add(left, right) {
  return left + right;
}

export function times(left, right) {
  return left * right;
}
</code></pre>
<h5 id="implementation">Implementation</h5>
<pre><code class="lang-js">// program.js
import { add, times } from &#39;./helper/MathHelper&#39;;

console.log(add(5, 8)); // 13
console.log(times(3, 4)); // 12
</code></pre>
<h2 id="module-as-a-design-pattern">Module as a design pattern</h2>
<p>The Module pattern can be considered a creational pattern and a structural pattern. It manages the creation and organization of other elements, and groups them as the structural pattern does.</p>
<p>An object that applies this pattern can provide the equivalent of a namespace, providing the initialization and finalization process of a static class or a class with static members with cleaner, more concise syntax and semantics.</p>
<p>It supports specific cases where a class or object can be considered structured, procedural data. And, vice versa, migrate structured, procedural data, and considered as object-oriented.</p>
<hr>
<p><em>Source:</em></p>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Module_pattern">Module pattern</a><em>. From Wikipedia, the free encyclopedia</em></li>
<li><a href="http://www.2ality.com/2014/09/es6-modules-final.html">ECMAScript 6 modules: the final syntax</a><em>. ②ality – JavaScript and more</em></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/MODULE_PATTERN.md','#OTHER')
;
INSERT INTO articles.articles (id,"name",description,markdown,html,url,tag) VALUES 
('003b395c-73b4-4d46-a808-0b38e4affe6e','NightwatchJS','a framework for browser automated testing','

# NightwatchJS

[NightwatchJS](http://nightwatchjs.org/) is an extensible, open-source JavaScript testing framework that runs in [Node.js](/_glossary/NODEJS.md). It has clean syntax, a built-in test runner, support for Cloud providers such as SauceLabs or BrowserStack, continuous integration such as Teamcity, Jenkins etc. NightwatchJS also supports CSS and XPath selectors.
','<h1 id="nightwatchjs">NightwatchJS</h1>
<p><a href="http://nightwatchjs.org/">NightwatchJS</a> is an extensible, open-source JavaScript testing framework that runs in <a href="/_glossary/NODEJS.md">Node.js</a>. It has clean syntax, a built-in test runner, support for Cloud providers such as SauceLabs or BrowserStack, continuous integration such as Teamcity, Jenkins etc. NightwatchJS also supports CSS and XPath selectors.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/NIGHTWATCHJS.md','#JS')
,('a33336c3-87f4-45e3-aa66-8d687e59b0ad','Passport.js','a simple authentication middleware','

# Passport.js

[Passport.js](http://passportjs.org/) is a simple authentication middleware for Node.js that is express compatible.

It focuses primarily on authentication requests through a comprehensive list of strategies including username and password credentials, OAuth (Facebook, Twitter, Google+) and SAML. These strategies are packaged as individual modules to prevent unnecessary dependencies. 

Passport is also designed to be flexible as it does not mount route and database independent. The API is simple: you provide Passport a request to authenticate, and it provides hooks to control what occurs when authentication succeeds or fails.','<h1 id="passport-js">Passport.js</h1>
<p><a href="http://passportjs.org/">Passport.js</a> is a simple authentication middleware for Node.js that is express compatible.</p>
<p>It focuses primarily on authentication requests through a comprehensive list of strategies including username and password credentials, OAuth (Facebook, Twitter, Google+) and SAML. These strategies are packaged as individual modules to prevent unnecessary dependencies. </p>
<p>Passport is also designed to be flexible as it does not mount route and database independent. The API is simple: you provide Passport a request to authenticate, and it provides hooks to control what occurs when authentication succeeds or fails.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/PASSPORTJS.md','#JS')
,('513f926e-f3d6-464b-969d-b081bd6518b5','Prototype','a JavaScript framework that aims to ease development of dynamic web applications. It offers a familiar class-style OO framework, extensive Ajax support, higher-order programming constructs, and easy DOM manipulation','

# Prototype

The [Prototype](http://prototypejs.org/) JavaScript Framework is a JavaScript framework created by Sam Stephenson in February 2005 as part of the foundation for [AJAX](/_glossary/AJAX.md) support in Ruby on Rails. It is implemented as a single file of JavaScript code, usually named prototype.js. Prototype is distributed standalone, but also as part of larger projects, such as Ruby on Rails, script.aculo.us and Rico.

## Features

Prototype provides various functions for developing JavaScript applications. The features range from programming shortcuts to major functions for dealing with [XHR](/_glossary/XHR.md).

Prototype also provides library functions to support classes and class-based objects, something the JavaScript language lacks. In JavaScript, object creation is prototype-based instead: an object creating function can have a prototype property, and any object assigned to that property will be used as a prototype for the objects created with that function. The Prototype framework is not to be confused with this language feature.

## Sample utility functions

#### The `$()` function

The **dollar function**, `$()`, can be used as shorthand for the `getElementById` function. To refer to an element in the [DOM](/_glossary/DOM.md) of an HTML page, the usual function identifying an element is:

```js
document.getElementById(''id_of_element'').style.color = ''#ffffff'';
```

The `$()` function reduces the code to:

```js
$(''id_of_element'').setStyle({ color: ''#ffffff'' });
```

The `$()` function can also receive an element as parameter and will return, as in the previous example, a prototype extended object.

```js
var domElement = document.getElementById(''id_of_element'');  // Usual object reference returned
var prototypeEnhancedDomElement = $(domElement);            // Prototype extended object reference
```

#### The `$F()` function

Building on the `$()` function: the `$F()` function returns the value of the requested form element. For a ‘text’ input, the function will return the data contained in the element. For a ‘select’ input element, the function will return the currently selected value.

```js
$F(''id_of_input_element'')
```

#### The `$$()` function

The dollar dollar function is Prototype’s *CSS Selector Engine*. It returns all matching elements, following the same rules as a selector in a CSS stylesheet. For example, if you want to get all `<a>` elements with the class “pulsate”, you would use the following:

```js
$$(''a.pulsate'')
```

This returns a collection of elements. If you are using the script.aculo.us extension of the core Prototype library, you can apply the “pulsate” (blink) effect as follows:

```js
$$(''a.pulsate'').each(Effect.Pulsate);
```

#### The Ajax object

In an effort to reduce the amount of code needed to run a cross-browser `XMLHttpRequest` function, Prototype provides the `Ajax` object to abstract the different browsers. It has two main methods: `Ajax.Request()` and `Ajax.Updater()`. There are two forms of the `Ajax` object. `Ajax.Request` returns the raw XML output from an AJAX call, while the `Ajax.Updater` will inject the return inside a specified DOM object. The `Ajax.Request` below finds the current values of two HTML form input elements, issues an HTTP POST request to the server with those element name/value pairs, and runs a custom function (called `showResponse` below) when the HTTP response is received from the server:

```js
new Ajax.Request(''http://localhost/server_script'', {
  parameters: {
    value1: $F(''form_element_id_1''),
    value2: $F(''form_element_id_2'')
  },
  onSuccess: showResponse,
  onFailure: showError
});
```

## Object-oriented programming

Prototype also adds support for more traditional object-oriented programming. The `Class.create()` method is used to create a new class. A class is then assigned a `prototype` which acts as a blueprint for instances of the class.

```js
var FirstClass = Class.create( {
  // The initialize method serves as a constructor
  initialize: function () {
    this.data = ''Hello World'';
  }
});
```

Extending another class:

```js
Ajax.Request = Class.create( Ajax.Base, { 
  // Override the initialize method
  initialize: function(url, options) { 
    this.transport = Ajax.getTransport(); 
    this.setOptions(options); 
    this.request(url); 
  }, 
  // ...more methods add ... 
});
```

The framework function `Object.extend(dest, src)` takes two objects as parameters and copies the properties of the second object to the first one simulating inheritance. The combined object is also returned as a result from the function. As in the example above, the first parameter usually creates the base object, while the second is an anonymous object used solely for defining additional properties. The entire sub-class declaration happens within the parentheses of the function call.

----------

*Source:*

- [Prototype JavaScript Framework](https://en.wikipedia.org/wiki/Prototype_JavaScript_Framework)*. From Wikipedia, the free encyclopedia.*
- [Prototype JavaScript framework: a foundation for ambitious web applications](http://prototypejs.org/)*. Official site.*
- [Prototype JavaScript framework](https://github.com/sstephenson/prototype)*. Github.*
','<h1 id="prototype">Prototype</h1>
<p>The <a href="http://prototypejs.org/">Prototype</a> JavaScript Framework is a JavaScript framework created by Sam Stephenson in February 2005 as part of the foundation for <a href="/_glossary/AJAX.md">AJAX</a> support in Ruby on Rails. It is implemented as a single file of JavaScript code, usually named prototype.js. Prototype is distributed standalone, but also as part of larger projects, such as Ruby on Rails, script.aculo.us and Rico.</p>
<h2 id="features">Features</h2>
<p>Prototype provides various functions for developing JavaScript applications. The features range from programming shortcuts to major functions for dealing with <a href="/_glossary/XHR.md">XHR</a>.</p>
<p>Prototype also provides library functions to support classes and class-based objects, something the JavaScript language lacks. In JavaScript, object creation is prototype-based instead: an object creating function can have a prototype property, and any object assigned to that property will be used as a prototype for the objects created with that function. The Prototype framework is not to be confused with this language feature.</p>
<h2 id="sample-utility-functions">Sample utility functions</h2>
<h4 id="the-function">The <code>$()</code> function</h4>
<p>The <strong>dollar function</strong>, <code>$()</code>, can be used as shorthand for the <code>getElementById</code> function. To refer to an element in the <a href="/_glossary/DOM.md">DOM</a> of an HTML page, the usual function identifying an element is:</p>
<pre><code class="lang-js">document.getElementById(&#39;id_of_element&#39;).style.color = &#39;#ffffff&#39;;
</code></pre>
<p>The <code>$()</code> function reduces the code to:</p>
<pre><code class="lang-js">$(&#39;id_of_element&#39;).setStyle({ color: &#39;#ffffff&#39; });
</code></pre>
<p>The <code>$()</code> function can also receive an element as parameter and will return, as in the previous example, a prototype extended object.</p>
<pre><code class="lang-js">var domElement = document.getElementById(&#39;id_of_element&#39;);  // Usual object reference returned
var prototypeEnhancedDomElement = $(domElement);            // Prototype extended object reference
</code></pre>
<h4 id="the-f-function">The <code>$F()</code> function</h4>
<p>Building on the <code>$()</code> function: the <code>$F()</code> function returns the value of the requested form element. For a ‘text’ input, the function will return the data contained in the element. For a ‘select’ input element, the function will return the currently selected value.</p>
<pre><code class="lang-js">$F(&#39;id_of_input_element&#39;)
</code></pre>
<h4 id="the-function">The <code>$$()</code> function</h4>
<p>The dollar dollar function is Prototype’s <em>CSS Selector Engine</em>. It returns all matching elements, following the same rules as a selector in a CSS stylesheet. For example, if you want to get all <code>&lt;a&gt;</code> elements with the class “pulsate”, you would use the following:</p>
<pre><code class="lang-js">$$(&#39;a.pulsate&#39;)
</code></pre>
<p>This returns a collection of elements. If you are using the script.aculo.us extension of the core Prototype library, you can apply the “pulsate” (blink) effect as follows:</p>
<pre><code class="lang-js">$$(&#39;a.pulsate&#39;).each(Effect.Pulsate);
</code></pre>
<h4 id="the-ajax-object">The Ajax object</h4>
<p>In an effort to reduce the amount of code needed to run a cross-browser <code>XMLHttpRequest</code> function, Prototype provides the <code>Ajax</code> object to abstract the different browsers. It has two main methods: <code>Ajax.Request()</code> and <code>Ajax.Updater()</code>. There are two forms of the <code>Ajax</code> object. <code>Ajax.Request</code> returns the raw XML output from an AJAX call, while the <code>Ajax.Updater</code> will inject the return inside a specified DOM object. The <code>Ajax.Request</code> below finds the current values of two HTML form input elements, issues an HTTP POST request to the server with those element name/value pairs, and runs a custom function (called <code>showResponse</code> below) when the HTTP response is received from the server:</p>
<pre><code class="lang-js">new Ajax.Request(&#39;http://localhost/server_script&#39;, {
  parameters: {
    value1: $F(&#39;form_element_id_1&#39;),
    value2: $F(&#39;form_element_id_2&#39;)
  },
  onSuccess: showResponse,
  onFailure: showError
});
</code></pre>
<h2 id="object-oriented-programming">Object-oriented programming</h2>
<p>Prototype also adds support for more traditional object-oriented programming. The <code>Class.create()</code> method is used to create a new class. A class is then assigned a <code>prototype</code> which acts as a blueprint for instances of the class.</p>
<pre><code class="lang-js">var FirstClass = Class.create( {
  // The initialize method serves as a constructor
  initialize: function () {
    this.data = &#39;Hello World&#39;;
  }
});
</code></pre>
<p>Extending another class:</p>
<pre><code class="lang-js">Ajax.Request = Class.create( Ajax.Base, { 
  // Override the initialize method
  initialize: function(url, options) { 
    this.transport = Ajax.getTransport(); 
    this.setOptions(options); 
    this.request(url); 
  }, 
  // ...more methods add ... 
});
</code></pre>
<p>The framework function <code>Object.extend(dest, src)</code> takes two objects as parameters and copies the properties of the second object to the first one simulating inheritance. The combined object is also returned as a result from the function. As in the example above, the first parameter usually creates the base object, while the second is an anonymous object used solely for defining additional properties. The entire sub-class declaration happens within the parentheses of the function call.</p>
<hr>
<p><em>Source:</em></p>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Prototype_JavaScript_Framework">Prototype JavaScript Framework</a><em>. From Wikipedia, the free encyclopedia.</em></li>
<li><a href="http://prototypejs.org/">Prototype JavaScript framework: a foundation for ambitious web applications</a><em>. Official site.</em></li>
<li><a href="https://github.com/sstephenson/prototype">Prototype JavaScript framework</a><em>. Github.</em></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/PROTOTYPEJS.md','#JS')
,('a4854ea9-e6a7-4418-b294-ef954f6f0a48','Revealing Module Pattern','a design pattern conceptually based on the Module Pattern. The only difference is that the *revealing module pattern* was engineered as a way to ensure that all methods and variables are kept private until they are explicitly exposed','

# Revealing Module Pattern

This pattern is the same concept as the [module pattern](/_glossary/MODULE_PATTERN.md) in that it focuses on public & private methods. The only difference is that the revealing module pattern was engineered as a way to ensure that all methods and variables are kept private until they are explicitly exposed; usually through an object literal returned by the closure from which it’s defined. Personally, I like this approach for vanilla JavaScript as it puts a clear emphasis on both the intent of the developer and the module itself.

## Advantages

- Cleaner approach for developers
- Supports private data
- Less clutter in the global namespace
- Localization of functions and variables through closures
- The syntax of our scripts are even more consistent
- Explicitly defined public methods and variables which lead to increased readability

## Disadvantages

- Private methods are unaccessible.
- Private methods and functions lose extendability since they are unaccessible (see my comment in the previous bullet point).
- It’s harder to patch public methods and variables that are referred to by something private.

## Example

```js
var MyModule = (function(window, undefined) {
  function myMethod() {
    console.log(''my method'');
  }

  function myOtherMethod() {
    console.log(''my other method'');
  }

  // explicitly return public methods when this object is instantiated
  return {
    someMethod: myMethod,
    someOtherMethod: myOtherMethod
  };
})(window);

//  example usage
MyModule.myMethod(); // undefined
MyModule.myOtherMethod(); // undefined
MyModule.someMethod(); // prints ''my method''
MyModule.someOtherMethod(); // prints ''my other method''
```

This pattern can also be implemented using a privately shared cache:

```js
var MyModule = (function(window,undefined) {
  // this object is used to store private variables and methods across multiple instantiations
  var privates = {};

  function MyModule() {
    this.myMethod = function myMethod() {
      console.log(''my method'');
    };

    this.myOtherMethod = function myOtherMethod() {
      console.log(''my other method'');
    };
  }

  return MyModule;
})(window);

// example usage
var myMod = new MyModule();
myMod.myMethod(); // prints ''my method''
myMod.myOtherMethod(); // prints ''my other method''
```

----------

*Source:*

- [The Revealing Module Pattern](https://carldanley.com/js-revealing-module-pattern/)
- [The Module Pattern](https://carldanley.com/js-module-pattern/#file-module-pattern-example-2-js-L1)
','<h1 id="revealing-module-pattern">Revealing Module Pattern</h1>
<p>This pattern is the same concept as the <a href="/_glossary/MODULE_PATTERN.md">module pattern</a> in that it focuses on public &amp; private methods. The only difference is that the revealing module pattern was engineered as a way to ensure that all methods and variables are kept private until they are explicitly exposed; usually through an object literal returned by the closure from which it’s defined. Personally, I like this approach for vanilla JavaScript as it puts a clear emphasis on both the intent of the developer and the module itself.</p>
<h2 id="advantages">Advantages</h2>
<ul>
<li>Cleaner approach for developers</li>
<li>Supports private data</li>
<li>Less clutter in the global namespace</li>
<li>Localization of functions and variables through closures</li>
<li>The syntax of our scripts are even more consistent</li>
<li>Explicitly defined public methods and variables which lead to increased readability</li>
</ul>
<h2 id="disadvantages">Disadvantages</h2>
<ul>
<li>Private methods are unaccessible.</li>
<li>Private methods and functions lose extendability since they are unaccessible (see my comment in the previous bullet point).</li>
<li>It’s harder to patch public methods and variables that are referred to by something private.</li>
</ul>
<h2 id="example">Example</h2>
<pre><code class="lang-js">var MyModule = (function(window, undefined) {
  function myMethod() {
    console.log(&#39;my method&#39;);
  }

  function myOtherMethod() {
    console.log(&#39;my other method&#39;);
  }

  // explicitly return public methods when this object is instantiated
  return {
    someMethod: myMethod,
    someOtherMethod: myOtherMethod
  };
})(window);

//  example usage
MyModule.myMethod(); // undefined
MyModule.myOtherMethod(); // undefined
MyModule.someMethod(); // prints &#39;my method&#39;
MyModule.someOtherMethod(); // prints &#39;my other method&#39;
</code></pre>
<p>This pattern can also be implemented using a privately shared cache:</p>
<pre><code class="lang-js">var MyModule = (function(window,undefined) {
  // this object is used to store private variables and methods across multiple instantiations
  var privates = {};

  function MyModule() {
    this.myMethod = function myMethod() {
      console.log(&#39;my method&#39;);
    };

    this.myOtherMethod = function myOtherMethod() {
      console.log(&#39;my other method&#39;);
    };
  }

  return MyModule;
})(window);

// example usage
var myMod = new MyModule();
myMod.myMethod(); // prints &#39;my method&#39;
myMod.myOtherMethod(); // prints &#39;my other method&#39;
</code></pre>
<hr>
<p><em>Source:</em></p>
<ul>
<li><a href="https://carldanley.com/js-revealing-module-pattern/">The Revealing Module Pattern</a></li>
<li><a href="https://carldanley.com/js-module-pattern/#file-module-pattern-example-2-js-L1">The Module Pattern</a></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/REVEALING_MODULE_PATTERN.md','#OTHER')
,('2dc7c6b6-d15c-4fb5-84e6-01de38e38b37','MooTools','a collection of JavaScript utilities designed for the intermediate to advanced JavaScript developer. It allows you to write powerful and flexible code with its elegant, well documented, and coherent APIs','

# MooTools

[MooTools](http://mootools.net/) (My Object-Oriented Tools) is a lightweight, object-oriented JavaScript framework. It is released under the free, open-source MIT License. It is used on more than 4% of all websites, and is one of the most popular JavaScript libraries.

> **MooTools** is a collection of JavaScript utilities designed for the intermediate to advanced JavaScript developer. It allows you to write powerful and flexible code with its elegant, well documented, and coherent APIs.
> 
> **MooTools** code is extensively documented and easy to read, enabling you to extend the functionality to match your requirements.
>
> — Official MooTools site.

## History

Valerio Proietti first authored the framework and released it in September 2006 taking as his inspiration [Prototype](/_glossary/PROTOTYPE.md) and Dean Edward’s [base2](http://code.google.com/p/base2/). MooTools originated from [Moo.fx](https://en.wikipedia.org/wiki/Moo.fx), a popular plug-in Proietti produced for Prototype in October 2005, which is still maintained and used.

Whereas Prototype extended—prototyped—many of JavaScript’s native String, Array, and Function objects with additional methods, Proietti desired a framework that (at the time) further extended the native Element object as well to offer greater control of the [DOM](/_glossary/DOM.md).

## Components

MooTools includes a number of components, but not all need to be loaded for each application. Some of the component categories are:

- **Core**: A collection of utility functions that all the other components require.
- **More**: An official collection of add-ons that extend the Core and provide enhanced functionality.
- **Class**: The base library for Class object instantiation.
- **Natives**: A collection of JavaScript Native Object enhancements. The Natives add functionality, compatibility, and new methods that simplify coding.
- **Element**: Contains a large number of enhancements and compatibility standardization to the HTML Element object.
- **Fx**: An advanced effects-API to animate page elements.
- **Request**: Includes [XHR](/_glossary/XHR.md) interface, Cookie, [JSON](/_glossary/JSON.md), and HTML retrieval-specific tools for developers to exploit.
- **Window**: Provides a cross-browser interface to client-specific information, such as the dimensions of the window.

## Browser compatibility

MooTools is compatible and tested with:

- Safari 3+
- Internet Explorer 6+
- Mozilla Firefox 2+
- Opera 9+
- Chrome 4+

## Benefits

MooTools provides the user with a number of advantages over native JavaScript. These include:

- An extensible and modular framework allowing developers to choose their own customized combination of components.
- MooTools follows object-oriented practices and the DRY principle.
- An advanced effects component, with optimized transitions such as easing equations used by many Flash developers.
- Enhancements to the DOM, enabling developers to easily add, modify, select, and delete DOM elements. Storing and retrieving information with Element storage is also supported.

The framework includes built-in functions for manipulation of CSS, DOM elements, native JavaScript objects, Ajax requests, DOM effects, and more. MooTools also provides a detailed, coherent API as well as a custom downloads module allowing developers to download only the modules and dependencies they need for a particular app.

## Emphasis on modularity and reusability

Every JavaScript framework has its philosophy, and MooTools is interested in taking full advantage of the flexibility and power of JavaScript in a way that emphasizes greater modularity and code reuse. MooTools accomplishes these goals in a way that is intuitive to a developer coming from a class-based inheritance language like Java with the MooTools **Class** object.

**Class** is an object of key/value pairs that can contain either properties or methods (functions). **Class** is effortlessly mixed and extended with other Class instantiations allowing for the greatest focus of MooTools: Code reuse achieved through maximizing the power of JavaScript’s prototypical inheritance, but in a **Class** object syntax more familiar to classical inheritance models.

## Object-oriented programming

MooTools contains a robust Class creation and inheritance system that resembles most classically based Object-oriented programming languages. For example, the following is MooTools’ equivalent of the examples in Wikipedia’s polymorphism page:

```js
var Animal = new Class({
  initialize: function(name) {
    this.name = name;
  }
});

var Cat = new Class({
  Extends: Animal,

  talk: function() {
    return ''Meow!'';
  }
});

var Dog = new Class({
  Extends: Animal,

  talk: function() {
    return ''Arf! Arf'';
  }
});

var animals = {
  a: new Cat(''Missy''),
  b: new Cat(''Mr. Bojangles''),
  c: new Dog(''Lassie'')
};

Object.each(animals, function(animal) {
  alert(animal.name + '': '' + animal.talk());
});
 
// alerts the following:
//
// Missy: Meow!
// Mr. Bojangles: Meow!
// Lassie: Arf! Arf!
```

----------

*Source:*

- [MooTools](https://en.wikipedia.org/wiki/MooTools)*. From Wikipedia, the free encyclopedia*
- [MooTools](http://mootools.net/)*. MooTools official site.*
','<h1 id="mootools">MooTools</h1>
<p><a href="http://mootools.net/">MooTools</a> (My Object-Oriented Tools) is a lightweight, object-oriented JavaScript framework. It is released under the free, open-source MIT License. It is used on more than 4% of all websites, and is one of the most popular JavaScript libraries.</p>
<blockquote>
<p><strong>MooTools</strong> is a collection of JavaScript utilities designed for the intermediate to advanced JavaScript developer. It allows you to write powerful and flexible code with its elegant, well documented, and coherent APIs.</p>
<p><strong>MooTools</strong> code is extensively documented and easy to read, enabling you to extend the functionality to match your requirements.</p>
<p>— Official MooTools site.</p>
</blockquote>
<h2 id="history">History</h2>
<p>Valerio Proietti first authored the framework and released it in September 2006 taking as his inspiration <a href="/_glossary/PROTOTYPE.md">Prototype</a> and Dean Edward’s <a href="http://code.google.com/p/base2/">base2</a>. MooTools originated from <a href="https://en.wikipedia.org/wiki/Moo.fx">Moo.fx</a>, a popular plug-in Proietti produced for Prototype in October 2005, which is still maintained and used.</p>
<p>Whereas Prototype extended—prototyped—many of JavaScript’s native String, Array, and Function objects with additional methods, Proietti desired a framework that (at the time) further extended the native Element object as well to offer greater control of the <a href="/_glossary/DOM.md">DOM</a>.</p>
<h2 id="components">Components</h2>
<p>MooTools includes a number of components, but not all need to be loaded for each application. Some of the component categories are:</p>
<ul>
<li><strong>Core</strong>: A collection of utility functions that all the other components require.</li>
<li><strong>More</strong>: An official collection of add-ons that extend the Core and provide enhanced functionality.</li>
<li><strong>Class</strong>: The base library for Class object instantiation.</li>
<li><strong>Natives</strong>: A collection of JavaScript Native Object enhancements. The Natives add functionality, compatibility, and new methods that simplify coding.</li>
<li><strong>Element</strong>: Contains a large number of enhancements and compatibility standardization to the HTML Element object.</li>
<li><strong>Fx</strong>: An advanced effects-API to animate page elements.</li>
<li><strong>Request</strong>: Includes <a href="/_glossary/XHR.md">XHR</a> interface, Cookie, <a href="/_glossary/JSON.md">JSON</a>, and HTML retrieval-specific tools for developers to exploit.</li>
<li><strong>Window</strong>: Provides a cross-browser interface to client-specific information, such as the dimensions of the window.</li>
</ul>
<h2 id="browser-compatibility">Browser compatibility</h2>
<p>MooTools is compatible and tested with:</p>
<ul>
<li>Safari 3+</li>
<li>Internet Explorer 6+</li>
<li>Mozilla Firefox 2+</li>
<li>Opera 9+</li>
<li>Chrome 4+</li>
</ul>
<h2 id="benefits">Benefits</h2>
<p>MooTools provides the user with a number of advantages over native JavaScript. These include:</p>
<ul>
<li>An extensible and modular framework allowing developers to choose their own customized combination of components.</li>
<li>MooTools follows object-oriented practices and the DRY principle.</li>
<li>An advanced effects component, with optimized transitions such as easing equations used by many Flash developers.</li>
<li>Enhancements to the DOM, enabling developers to easily add, modify, select, and delete DOM elements. Storing and retrieving information with Element storage is also supported.</li>
</ul>
<p>The framework includes built-in functions for manipulation of CSS, DOM elements, native JavaScript objects, Ajax requests, DOM effects, and more. MooTools also provides a detailed, coherent API as well as a custom downloads module allowing developers to download only the modules and dependencies they need for a particular app.</p>
<h2 id="emphasis-on-modularity-and-reusability">Emphasis on modularity and reusability</h2>
<p>Every JavaScript framework has its philosophy, and MooTools is interested in taking full advantage of the flexibility and power of JavaScript in a way that emphasizes greater modularity and code reuse. MooTools accomplishes these goals in a way that is intuitive to a developer coming from a class-based inheritance language like Java with the MooTools <strong>Class</strong> object.</p>
<p><strong>Class</strong> is an object of key/value pairs that can contain either properties or methods (functions). <strong>Class</strong> is effortlessly mixed and extended with other Class instantiations allowing for the greatest focus of MooTools: Code reuse achieved through maximizing the power of JavaScript’s prototypical inheritance, but in a <strong>Class</strong> object syntax more familiar to classical inheritance models.</p>
<h2 id="object-oriented-programming">Object-oriented programming</h2>
<p>MooTools contains a robust Class creation and inheritance system that resembles most classically based Object-oriented programming languages. For example, the following is MooTools’ equivalent of the examples in Wikipedia’s polymorphism page:</p>
<pre><code class="lang-js">var Animal = new Class({
  initialize: function(name) {
    this.name = name;
  }
});

var Cat = new Class({
  Extends: Animal,

  talk: function() {
    return &#39;Meow!&#39;;
  }
});

var Dog = new Class({
  Extends: Animal,

  talk: function() {
    return &#39;Arf! Arf&#39;;
  }
});

var animals = {
  a: new Cat(&#39;Missy&#39;),
  b: new Cat(&#39;Mr. Bojangles&#39;),
  c: new Dog(&#39;Lassie&#39;)
};

Object.each(animals, function(animal) {
  alert(animal.name + &#39;: &#39; + animal.talk());
});

// alerts the following:
//
// Missy: Meow!
// Mr. Bojangles: Meow!
// Lassie: Arf! Arf!
</code></pre>
<hr>
<p><em>Source:</em></p>
<ul>
<li><a href="https://en.wikipedia.org/wiki/MooTools">MooTools</a><em>. From Wikipedia, the free encyclopedia</em></li>
<li><a href="http://mootools.net/">MooTools</a><em>. MooTools official site.</em></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/MOOTOOLS.md','#JS')
,('b8dea71b-2bd2-4831-be27-5b6115f69c29','Observer Pattern','a software design pattern in which an object, called the subject, maintains a list of its dependents, called observers, and notifies them automatically of any state changes, usually by calling one of their methods','

# Observer Pattern

The [observer pattern](https://en.wikipedia.org/wiki/Observer_pattern) is a software design pattern in which an object, called the subject, maintains a list of its dependents, called observers, and notifies them automatically of any state changes, usually by calling one of their methods. It is mainly used to implement distributed event handling systems. The Observer pattern is also a key part in the familiar MVC architectural pattern. The observer pattern is implemented in numerous programming libraries and systems, including almost all GUI toolkits.

The observer pattern can cause memory leaks, known as the [lapsed listener problem](https://en.wikipedia.org/wiki/Lapsed_listener_problem), because in basic implementation it requires both explicit registration and explicit deregistration, as in the dispose pattern, because the subject holds strong references to the observers, keeping them alive. This can be prevented by the subject holding weak references to the observers.

## Definition

Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.

## Summary

The Observer pattern offers a subscription model in which objects subscribe to an event and get notified when the event occurs. This pattern is the cornerstone of event driven programming, including JavaScript. The Observer pattern facilitates good object-oriented design and promotes loose coupling.

When building web apps you end up writing many event handlers. Event handlers are functions that will be notified when a certain event fires. These notifications optionally receive an event argument with details about the event (for example the x and y position of the mouse at a click event).

The event and event-handler paradigm in JavaScript is the manifestation of the Observer design pattern. Another name for the Observer pattern is Pub/Sub, short for Publication/Subscription.

## Diagram

![Observer Pattern diagram](http://www.dofactory.com/images/diagrams/javascript/javascript-observer.jpg)

The objects participating in this pattern are:

- **Subject** - In sample code: `Click`
 - maintains list of observers. Any number of Observer objects may observe a Subject
 - implements an interface that lets observer objects subscribe or unsubscribe
 - sends a notification to its observers when its state changes
- **Observers** - In sample code: `clickHandler`
 - has a function signature that can be invoked when Subject changes (i.e. event occurs)

## Example

The `Click` object represents the *Subject*. The `clickHandler` function is the subscribing *Observer*. This handler subscribes, unsubscribes, and then subscribes itself while events are firing. It gets notified only of events #1 and #3.

Notice that the fire method accepts two arguments. The first one has details about the event and the second one is the context, that is, the this value for when the eventhandlers are called. If no context is provided this will be bound to the global object (`window`).

The `log` function is a helper which collects and displays results.

```js
class Click {
  constructor() {
    this.handlers = []; // observers
  }

  subscribe(fn) {
    this.handlers.push(fn);
  }

  unsubscribe(fn) {
    this.handlers = this.handlers.filter(item => {
      return item !== fn ? item : null;
    });
  }

  fire(o, thisObj) {
    let scope = thisObj || window;
        
    this.handlers.forEach(item => { item.call(scope, o) });
  }
}

// log helper 
let log = (function() {
  let log = '''';

  return {
    add: msg => { log += msg + ''\n''; },
    show: () => { alert(log); log = ''''; }
  }
})();

function run() {
  var click = new Click(),
      clickHandler = item => { log.add(''fired: '' + item); };

  click.subscribe(clickHandler);
  click.fire(''event #1'');
  click.unsubscribe(clickHandler);
  click.fire(''event #2'');
  click.subscribe(clickHandler);
  click.fire(''event #3'');

  log.show();
}

run();
```

----------

*Source:*

- [Observer pattern](https://en.wikipedia.org/wiki/Observer_pattern)*. From Wikipedia, the free encyclopedia.*
- [Observer](http://www.dofactory.com/javascript/observer-design-pattern)*. Observer JavaScript Design Pattern with examples.*
','<h1 id="observer-pattern">Observer Pattern</h1>
<p>The <a href="https://en.wikipedia.org/wiki/Observer_pattern">observer pattern</a> is a software design pattern in which an object, called the subject, maintains a list of its dependents, called observers, and notifies them automatically of any state changes, usually by calling one of their methods. It is mainly used to implement distributed event handling systems. The Observer pattern is also a key part in the familiar MVC architectural pattern. The observer pattern is implemented in numerous programming libraries and systems, including almost all GUI toolkits.</p>
<p>The observer pattern can cause memory leaks, known as the <a href="https://en.wikipedia.org/wiki/Lapsed_listener_problem">lapsed listener problem</a>, because in basic implementation it requires both explicit registration and explicit deregistration, as in the dispose pattern, because the subject holds strong references to the observers, keeping them alive. This can be prevented by the subject holding weak references to the observers.</p>
<h2 id="definition">Definition</h2>
<p>Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.</p>
<h2 id="summary">Summary</h2>
<p>The Observer pattern offers a subscription model in which objects subscribe to an event and get notified when the event occurs. This pattern is the cornerstone of event driven programming, including JavaScript. The Observer pattern facilitates good object-oriented design and promotes loose coupling.</p>
<p>When building web apps you end up writing many event handlers. Event handlers are functions that will be notified when a certain event fires. These notifications optionally receive an event argument with details about the event (for example the x and y position of the mouse at a click event).</p>
<p>The event and event-handler paradigm in JavaScript is the manifestation of the Observer design pattern. Another name for the Observer pattern is Pub/Sub, short for Publication/Subscription.</p>
<h2 id="diagram">Diagram</h2>
<p><img src="http://www.dofactory.com/images/diagrams/javascript/javascript-observer.jpg" alt="Observer Pattern diagram"></p>
<p>The objects participating in this pattern are:</p>
<ul>
<li><strong>Subject</strong> - In sample code: <code>Click</code><ul>
<li>maintains list of observers. Any number of Observer objects may observe a Subject</li>
<li>implements an interface that lets observer objects subscribe or unsubscribe</li>
<li>sends a notification to its observers when its state changes</li>
</ul>
</li>
<li><strong>Observers</strong> - In sample code: <code>clickHandler</code><ul>
<li>has a function signature that can be invoked when Subject changes (i.e. event occurs)</li>
</ul>
</li>
</ul>
<h2 id="example">Example</h2>
<p>The <code>Click</code> object represents the <em>Subject</em>. The <code>clickHandler</code> function is the subscribing <em>Observer</em>. This handler subscribes, unsubscribes, and then subscribes itself while events are firing. It gets notified only of events #1 and #3.</p>
<p>Notice that the fire method accepts two arguments. The first one has details about the event and the second one is the context, that is, the this value for when the eventhandlers are called. If no context is provided this will be bound to the global object (<code>window</code>).</p>
<p>The <code>log</code> function is a helper which collects and displays results.</p>
<pre><code class="lang-js">class Click {
  constructor() {
    this.handlers = []; // observers
  }

  subscribe(fn) {
    this.handlers.push(fn);
  }

  unsubscribe(fn) {
    this.handlers = this.handlers.filter(item =&gt; {
      return item !== fn ? item : null;
    });
  }

  fire(o, thisObj) {
    let scope = thisObj || window;

    this.handlers.forEach(item =&gt; { item.call(scope, o) });
  }
}

// log helper 
let log = (function() {
  let log = &#39;&#39;;

  return {
    add: msg =&gt; { log += msg + &#39;\n&#39;; },
    show: () =&gt; { alert(log); log = &#39;&#39;; }
  }
})();

function run() {
  var click = new Click(),
      clickHandler = item =&gt; { log.add(&#39;fired: &#39; + item); };

  click.subscribe(clickHandler);
  click.fire(&#39;event #1&#39;);
  click.unsubscribe(clickHandler);
  click.fire(&#39;event #2&#39;);
  click.subscribe(clickHandler);
  click.fire(&#39;event #3&#39;);

  log.show();
}

run();
</code></pre>
<hr>
<p><em>Source:</em></p>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Observer_pattern">Observer pattern</a><em>. From Wikipedia, the free encyclopedia.</em></li>
<li><a href="http://www.dofactory.com/javascript/observer-design-pattern">Observer</a><em>. Observer JavaScript Design Pattern with examples.</em></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/OBSERVER_PATTERN.md','#OOP')
,('91a9ec46-3dcd-4594-8c30-2ee748c286ad','Promise','a proxy for a value not necessarily known immediately but that will eventually be resolved','

# Promise

A *Promise* represents a value that may not be available yet but will eventually be resolved at some point in the future. The point is to allow developers to write asynchronous code in a more synchronous fashion, escaping from the popular [callback hell](http://callbackhell.com/).

Promises are not fully supported in all browsers yet (see [support](http://caniuse.com/#feat=promises)), however a lot of libraries mimick their behavior to make them usable right away; [Bluebird](/_glossary/BLUEBIRD.md) is one of them.

For more information about how promises work and when to use them, there is [complete overview](http://robotlolita.me/2015/11/15/how-do-promises-work.html).
','<h1 id="promise">Promise</h1>
<p>A <em>Promise</em> represents a value that may not be available yet but will eventually be resolved at some point in the future. The point is to allow developers to write asynchronous code in a more synchronous fashion, escaping from the popular <a href="http://callbackhell.com/">callback hell</a>.</p>
<p>Promises are not fully supported in all browsers yet (see <a href="http://caniuse.com/#feat=promises">support</a>), however a lot of libraries mimick their behavior to make them usable right away; <a href="/_glossary/BLUEBIRD.md">Bluebird</a> is one of them.</p>
<p>For more information about how promises work and when to use them, there is <a href="http://robotlolita.me/2015/11/15/how-do-promises-work.html">complete overview</a>.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/PROMISE.md','#JS')
,('59cf10e9-5a60-4b04-bfc6-94d94f610148','nvm','a utility to help run multiple versions of Node.js on the same machine','

# nvm

[nvm](https://github.com/creationix/nvm/blob/master/README.markdown) is a utility to help run multiple versions of [Node.js](/_glossary/NODEJS.md) (and its branches) on the same machine. It can install, list, and choose versions. It is analogous to [RVM](https://rvm.io/) (Ruby Version Manager).
','<h1 id="nvm">nvm</h1>
<p><a href="https://github.com/creationix/nvm/blob/master/README.markdown">nvm</a> is a utility to help run multiple versions of <a href="/_glossary/NODEJS.md">Node.js</a> (and its branches) on the same machine. It can install, list, and choose versions. It is analogous to <a href="https://rvm.io/">RVM</a> (Ruby Version Manager).</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/NVM.md','#JS')
,('92505ea3-60aa-4cd2-9fdf-3bd30015e34c','Polymer','Google’s library for creating Web Components','

# Polymer

With Google’s [Polymer](https://www.polymer-project.org) library you can extend the vocabulary of HTML with your own custom elements (also known as Web Components) that can carry their own CSS styling and JavaScript code. Once created, these elements can be reused and composed together with other native or custom HTML elements.
','<h1 id="polymer">Polymer</h1>
<p>With Google’s <a href="https://www.polymer-project.org">Polymer</a> library you can extend the vocabulary of HTML with your own custom elements (also known as Web Components) that can carry their own CSS styling and JavaScript code. Once created, these elements can be reused and composed together with other native or custom HTML elements.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/POLYMER.md','#JS')
,('41285e35-d37e-4667-8acd-325fb755bb0c','Pure Function','a functional programming paradigm that ensures that a function has some strict properties. ','

# Pure Function

A *pure function* is a paradigm from the Functional Programming world.

The main idea is that a pure function respects the following properties: 

1. For a given input, it will always produce the same output. 
2. It doesn’t produce any side-effect.
3. It doesn’t rely on any external state.

## For a given input, always the same output

```js
// The following function is not Pure because different calls with same argument will not produce the same output :
function impureAdd (input) {
    return input + Math.Random();
}

// A way to make a pure function of it is to extract the impredictable part and give this responsibility to the caller :
function pureAdd (input, randomValue) {
    return input + randomValue;
}

var randomAdd = pureAdd(5, Math.Random());
```

## It doesn’t produce any side-effect

```js
// The following function is not Pure because it has a side effect : it writes in the environnement’s console
function impureFunction (input) {
    var output = computeHashValue(input);
    console.log(''computed output:'', output);
    return output;
}

// To make it pure, again, the caller has the responsibility to pass the desired side effects.
function pureFunction (input, traceCallback) {
    var output = computeHashValue(input);

    if (traceCallback) {
        traceCallback(''computed output:'', output);
    }

    return output;
}

var output = pureFunction(''some input'', (s) => console.log(s));
```


## It doesn’t rely on any external state

```js
var applicationState = {
    businessTreshold = 92;
}

// The following function is not Pure because it relies on a global variable, an external state from the point of view of the function
function impureValidation (inputScore) {
    return input < applicationState.businessTreshold;
}

// To make it pure, again, the caller has the responsibility to pass the needed state for the function to run
function pureValidation (inputScore, threshold) {
    return input < threshold;
}

var output = pureFunction(70, applicationState.businessTreshold);
```

---

*Sources:*

* [Wikipedia Article](https://en.wikipedia.org/wiki/Pure_function)
* [Eric Elliot on Pure Function](https://medium.com/javascript-scene/master-the-javascript-interview-what-is-a-pure-function-d1c076bec976#.knhvq7k0z)
','<h1 id="pure-function">Pure Function</h1>
<p>A <em>pure function</em> is a paradigm from the Functional Programming world.</p>
<p>The main idea is that a pure function respects the following properties: </p>
<ol>
<li>For a given input, it will always produce the same output. </li>
<li>It doesn’t produce any side-effect.</li>
<li>It doesn’t rely on any external state.</li>
</ol>
<h2 id="for-a-given-input-always-the-same-output">For a given input, always the same output</h2>
<pre><code class="lang-js">// The following function is not Pure because different calls with same argument will not produce the same output :
function impureAdd (input) {
    return input + Math.Random();
}

// A way to make a pure function of it is to extract the impredictable part and give this responsibility to the caller :
function pureAdd (input, randomValue) {
    return input + randomValue;
}

var randomAdd = pureAdd(5, Math.Random());
</code></pre>
<h2 id="it-doesn-t-produce-any-side-effect">It doesn’t produce any side-effect</h2>
<pre><code class="lang-js">// The following function is not Pure because it has a side effect : it writes in the environnement’s console
function impureFunction (input) {
    var output = computeHashValue(input);
    console.log(&#39;computed output:&#39;, output);
    return output;
}

// To make it pure, again, the caller has the responsibility to pass the desired side effects.
function pureFunction (input, traceCallback) {
    var output = computeHashValue(input);

    if (traceCallback) {
        traceCallback(&#39;computed output:&#39;, output);
    }

    return output;
}

var output = pureFunction(&#39;some input&#39;, (s) =&gt; console.log(s));
</code></pre>
<h2 id="it-doesn-t-rely-on-any-external-state">It doesn’t rely on any external state</h2>
<pre><code class="lang-js">var applicationState = {
    businessTreshold = 92;
}

// The following function is not Pure because it relies on a global variable, an external state from the point of view of the function
function impureValidation (inputScore) {
    return input &lt; applicationState.businessTreshold;
}

// To make it pure, again, the caller has the responsibility to pass the needed state for the function to run
function pureValidation (inputScore, threshold) {
    return input &lt; threshold;
}

var output = pureFunction(70, applicationState.businessTreshold);
</code></pre>
<hr>
<p><em>Sources:</em></p>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Pure_function">Wikipedia Article</a></li>
<li><a href="https://medium.com/javascript-scene/master-the-javascript-interview-what-is-a-pure-function-d1c076bec976#.knhvq7k0z">Eric Elliot on Pure Function</a></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/PURE_FUNCTION.md','#FP')
;
INSERT INTO articles.articles (id,"name",description,markdown,html,url,tag) VALUES 
('5aa284ff-c318-40ac-b682-4389974c7c5e','Three.js','a lightweight 3D library to create and display animated 3D computer graphics on a Web browser','

# Three.js

[Three.js](http://threejs.org/) the aim of the project is to create a lightweight 3D library with a very low level of complexity. The library can be used in conjunction with the HTML5 [`<canvas>`](/_glossary/CANVAS.md), `<svg>`, CSS3D and [WebGL](/_glossary/WEBGL.md) renderers.

It has been popularized as one of the most important for creating animations WebGL.
','<h1 id="three-js">Three.js</h1>
<p><a href="http://threejs.org/">Three.js</a> the aim of the project is to create a lightweight 3D library with a very low level of complexity. The library can be used in conjunction with the HTML5 <a href="/_glossary/CANVAS.md"><code>&lt;canvas&gt;</code></a>, <code>&lt;svg&gt;</code>, CSS3D and <a href="/_glossary/WEBGL.md">WebGL</a> renderers.</p>
<p>It has been popularized as one of the most important for creating animations WebGL.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/THREEJS.md','#JS')
,('a747bf1d-ed3c-4a35-b2da-b82569bf41de','PostCSS','a tool to transform CSS styles using JavaScript plugins; plugins include autoprefixer, future CSS transpiling, CSS linting and media queries','

# PostCSS

[PostCSS](http://postcss.org/) is a tool to transform CSS styles using JavaScript plugins. Popular plugins include autoprefixer, future CSS transpiling, CSS linting and media queries.

[Autoprefixer](https://github.com/postcss/autoprefixer) helps developer to automatically generate vendor specific prefixes. Take a look at the [interactive demo](http://autoprefixer.github.io/) of Autoprefixer in action

[POSTCSS-cssnext](http://cssnext.io/) is a PostCSS transpiler plugin that transforms new CSS specs into CSS that is more compatible with browsers. This includes CSS nesting, custom selectors and media queries.
','<h1 id="postcss">PostCSS</h1>
<p><a href="http://postcss.org/">PostCSS</a> is a tool to transform CSS styles using JavaScript plugins. Popular plugins include autoprefixer, future CSS transpiling, CSS linting and media queries.</p>
<p><a href="https://github.com/postcss/autoprefixer">Autoprefixer</a> helps developer to automatically generate vendor specific prefixes. Take a look at the <a href="http://autoprefixer.github.io/">interactive demo</a> of Autoprefixer in action</p>
<p><a href="http://cssnext.io/">POSTCSS-cssnext</a> is a PostCSS transpiler plugin that transforms new CSS specs into CSS that is more compatible with browsers. This includes CSS nesting, custom selectors and media queries.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/POSTCSS.md','#JS')
,('4c9b7ab6-93dc-47c9-b26d-15243c309acc','QUnit','a powerful, easy-to-use JavaScript unit testing framework','

# QUnit

[QUnit](https://qunitjs.com/) is a JavaScript unit testing framework. While heavily used by the jQuery Project for testing [jQuery](/_glossary/JQUERY.md), [jQuery UI](http://jqueryui.com/) and [jQuery Mobile](http://jquerymobile.com/), it is a generic framework to test any JavaScript code. It supports server-side (e.g. [node.js](/_glossary/NODEJS.md)) and client-side environments.

QUnit’s assertion methods follow the [CommonJS](/_glossary/COMMONJS.md) unit testing specification, which itself was influenced to some degree by QUnit.

## History

QUnit was originally developed by John Resig as part of jQuery. In 2008 it was extracted from the jQuery unit test source code to form its own project and became known as “QUnit”. This allowed others to start using it for writing their unit tests. While the initial version of QUnit used jQuery for interaction with the DOM, a rewrite in 2009 made QUnit completely standalone.

## Usage

- `QUnit.module(string)` - Defines a module, a grouping of one or more tests.
- `QUnit.test(string, function)` - Defines a test.

QUnit uses a set of assertion method to provide semantic meaning in unit tests:

- `assert.ok(boolean, string)` - Asserts that the provided value casts to boolean true.
- `assert.equal(value1, value2, message)` - Compares two values, using the double-equal operator.
- `assert.deepEqual(value1, value2, message)` - Compares two values based on their content, not just their identity.
- `assert.strictEqual(value1, value2, message)` - Strictly compares two values, using the triple-equal operator.

## Example

A basic example would be as follows:

```js
QUnit.test(''a basic test example'', function (assert) {
  var obj = {};

  assert.ok(true, ''Boolean true'');       // passes
  assert.ok(1, ''Number one'');            // passes
  assert.ok(false, ''Boolean false'');     // fails

  obj.start = ''Hello'';
  obj.end = ''Ciao'';
  assert.equal(obj.start, ''Hello'', ''Opening greet''); // passes
  assert.equal(obj.end, ''Goodbye'', ''Closing greet''); // fails
});
```

----------

*Source:*

- [QUnit](https://en.wikipedia.org/wiki/QUnit)*. From Wikipedia, the free encyclopedia.*
- [QUnit: A JavaScript Unit Testing framework.](https://qunitjs.com/)
','<h1 id="qunit">QUnit</h1>
<p><a href="https://qunitjs.com/">QUnit</a> is a JavaScript unit testing framework. While heavily used by the jQuery Project for testing <a href="/_glossary/JQUERY.md">jQuery</a>, <a href="http://jqueryui.com/">jQuery UI</a> and <a href="http://jquerymobile.com/">jQuery Mobile</a>, it is a generic framework to test any JavaScript code. It supports server-side (e.g. <a href="/_glossary/NODEJS.md">node.js</a>) and client-side environments.</p>
<p>QUnit’s assertion methods follow the <a href="/_glossary/COMMONJS.md">CommonJS</a> unit testing specification, which itself was influenced to some degree by QUnit.</p>
<h2 id="history">History</h2>
<p>QUnit was originally developed by John Resig as part of jQuery. In 2008 it was extracted from the jQuery unit test source code to form its own project and became known as “QUnit”. This allowed others to start using it for writing their unit tests. While the initial version of QUnit used jQuery for interaction with the DOM, a rewrite in 2009 made QUnit completely standalone.</p>
<h2 id="usage">Usage</h2>
<ul>
<li><code>QUnit.module(string)</code> - Defines a module, a grouping of one or more tests.</li>
<li><code>QUnit.test(string, function)</code> - Defines a test.</li>
</ul>
<p>QUnit uses a set of assertion method to provide semantic meaning in unit tests:</p>
<ul>
<li><code>assert.ok(boolean, string)</code> - Asserts that the provided value casts to boolean true.</li>
<li><code>assert.equal(value1, value2, message)</code> - Compares two values, using the double-equal operator.</li>
<li><code>assert.deepEqual(value1, value2, message)</code> - Compares two values based on their content, not just their identity.</li>
<li><code>assert.strictEqual(value1, value2, message)</code> - Strictly compares two values, using the triple-equal operator.</li>
</ul>
<h2 id="example">Example</h2>
<p>A basic example would be as follows:</p>
<pre><code class="lang-js">QUnit.test(&#39;a basic test example&#39;, function (assert) {
  var obj = {};

  assert.ok(true, &#39;Boolean true&#39;);       // passes
  assert.ok(1, &#39;Number one&#39;);            // passes
  assert.ok(false, &#39;Boolean false&#39;);     // fails

  obj.start = &#39;Hello&#39;;
  obj.end = &#39;Ciao&#39;;
  assert.equal(obj.start, &#39;Hello&#39;, &#39;Opening greet&#39;); // passes
  assert.equal(obj.end, &#39;Goodbye&#39;, &#39;Closing greet&#39;); // fails
});
</code></pre>
<hr>
<p><em>Source:</em></p>
<ul>
<li><a href="https://en.wikipedia.org/wiki/QUnit">QUnit</a><em>. From Wikipedia, the free encyclopedia.</em></li>
<li><a href="https://qunitjs.com/">QUnit: A JavaScript Unit Testing framework.</a></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/QUNIT.md','#TEST')
,('a0b9468a-da2c-45b8-853f-74a27290b9e0','Singleton Pattern','a design pattern that restricts the instantiation of a class to one object','

# Singleton Pattern

In software engineering, the [singleton pattern](https://en.wikipedia.org/wiki/Singleton_pattern) is a design pattern that restricts the instantiation of a class to one object. This is useful when exactly one object is needed to coordinate actions across the system. The concept is sometimes generalized to systems that operate more efficiently when only one object exists, or that restrict the instantiation to a certain number of objects. The term comes from the [mathematical concept of a singleton](https://en.wikipedia.org/wiki/Singleton_(mathematics)).

The Singleton Pattern limits the number of instances of a particular object to just one. This single instance is called the singleton.

Singletons are useful in situations where system-wide actions need to be coordinated from a single central place. An example is a database connection pool. The pool manages the creation, destruction, and lifetime of all database connections for the entire application ensuring that no connections are ‘lost’.

Singletons reduce the need for global variables which is particularly important in JavaScript because it limits namespace pollution and associated risk of name collisions. The [Module pattern](MODULE_PATTERN.md) is JavaScript’s manifestation of the Singleton pattern.

## Common uses

- The [Abstract Factory](https://en.wikipedia.org/wiki/Abstract_factory_pattern), [Builder](https://en.wikipedia.org/wiki/Builder_pattern), and [Prototype](/_glossary/PROTOTYPE_PATTERN.md) patterns can use Singletons in their implementation.
- [Facade](/_glossary/FACADE_PATTERN.md) objects are often singletons because only one Facade object is required.
- [State](https://en.wikipedia.org/wiki/State_pattern) objects are often singletons.
Singletons are often preferred to global variables because:
 - They do not pollute the global namespace (or, in languages with namespaces, their containing namespace) with unnecessary variables.
 - They permit lazy allocation and initialization, whereas global variables in many languages will always consume resources.

## Structure

![Singleton Pattern structure](http://www.dofactory.com/images/diagrams/javascript/javascript-singleton.jpg)

The objects participating in this pattern are:

- `Singleton` - In sample code: `Singleton`
 - defines `getInstance()` which returns the unique instance.
 - responsible for creating and managing the instance object.

## Example

The Singleton object is implemented as an [IIFE](/_glossary/IIFE.md). The function executes immediately by wrapping it in brackets followed by two additional brackets. It is called anonymous because it doesn’t have a name.

#### Example 1

```js
var Singleton = (function() {
  var instance;

  // Private methods and fields
  // ...  

  // Constructor
  function Singleton() {
    if (!instance) {
      instance = this;
    }

    return instance;

    // Public fields
  }

  // Public methods
  Singleton.prototype.test = function() {};

  return Singleton;
})();

function run() {
  var instance1 = new Singleton()
  var instance2 = new Singleton()
 
  console.assert(instance1 === instance2);
}

run();
```

#### Example 2

The `getInstance` method is Singleton’s gatekeeper. It returns the one and only instance of the object while maintaining a private reference to it which is not accessible to the outside world.

The `getInstance` method demonstates another design pattern called **Lazy Load**. **Lazy Load** checks if an instance has already been created; if not, it creates one and stores it for future reference. All subsequent calls will receive the stored instance. Lazy loading is a CPU and memory saving technique by creating objects only when absolutely necessary.

```js
var Singleton = (function () {
  var instance;
 
  function createInstance() {
    var object = new Object(''I am the instance'');
    return object;
  }
 
  return {
    getInstance: function () {
      if (!instance) {
        instance = createInstance();
      }

      return instance;
    }
  };
})();
 
function run() {
  var instance1 = Singleton.getInstance();
  var instance2 = Singleton.getInstance();
 
  console.assert(instance1 === instance2);
}

run();
```

----------

*Source:*
- [Singleton pattern](https://en.wikipedia.org/wiki/Singleton_pattern)*. From Wikipedia, the free encyclopedia.*
- [Singleton](http://www.dofactory.com/javascript/singleton-design-pattern)*. Singleton JavaScript Design Pattern with examples.*
','<h1 id="singleton-pattern">Singleton Pattern</h1>
<p>In software engineering, the <a href="https://en.wikipedia.org/wiki/Singleton_pattern">singleton pattern</a> is a design pattern that restricts the instantiation of a class to one object. This is useful when exactly one object is needed to coordinate actions across the system. The concept is sometimes generalized to systems that operate more efficiently when only one object exists, or that restrict the instantiation to a certain number of objects. The term comes from the <a href="https://en.wikipedia.org/wiki/Singleton_(mathematics">mathematical concept of a singleton</a>).</p>
<p>The Singleton Pattern limits the number of instances of a particular object to just one. This single instance is called the singleton.</p>
<p>Singletons are useful in situations where system-wide actions need to be coordinated from a single central place. An example is a database connection pool. The pool manages the creation, destruction, and lifetime of all database connections for the entire application ensuring that no connections are ‘lost’.</p>
<p>Singletons reduce the need for global variables which is particularly important in JavaScript because it limits namespace pollution and associated risk of name collisions. The <a href="MODULE_PATTERN.md">Module pattern</a> is JavaScript’s manifestation of the Singleton pattern.</p>
<h2 id="common-uses">Common uses</h2>
<ul>
<li>The <a href="https://en.wikipedia.org/wiki/Abstract_factory_pattern">Abstract Factory</a>, <a href="https://en.wikipedia.org/wiki/Builder_pattern">Builder</a>, and <a href="/_glossary/PROTOTYPE_PATTERN.md">Prototype</a> patterns can use Singletons in their implementation.</li>
<li><a href="/_glossary/FACADE_PATTERN.md">Facade</a> objects are often singletons because only one Facade object is required.</li>
<li><a href="https://en.wikipedia.org/wiki/State_pattern">State</a> objects are often singletons.
Singletons are often preferred to global variables because:<ul>
<li>They do not pollute the global namespace (or, in languages with namespaces, their containing namespace) with unnecessary variables.</li>
<li>They permit lazy allocation and initialization, whereas global variables in many languages will always consume resources.</li>
</ul>
</li>
</ul>
<h2 id="structure">Structure</h2>
<p><img src="http://www.dofactory.com/images/diagrams/javascript/javascript-singleton.jpg" alt="Singleton Pattern structure"></p>
<p>The objects participating in this pattern are:</p>
<ul>
<li><code>Singleton</code> - In sample code: <code>Singleton</code><ul>
<li>defines <code>getInstance()</code> which returns the unique instance.</li>
<li>responsible for creating and managing the instance object.</li>
</ul>
</li>
</ul>
<h2 id="example">Example</h2>
<p>The Singleton object is implemented as an <a href="/_glossary/IIFE.md">IIFE</a>. The function executes immediately by wrapping it in brackets followed by two additional brackets. It is called anonymous because it doesn’t have a name.</p>
<h4 id="example-1">Example 1</h4>
<pre><code class="lang-js">var Singleton = (function() {
  var instance;

  // Private methods and fields
  // ...  

  // Constructor
  function Singleton() {
    if (!instance) {
      instance = this;
    }

    return instance;

    // Public fields
  }

  // Public methods
  Singleton.prototype.test = function() {};

  return Singleton;
})();

function run() {
  var instance1 = new Singleton()
  var instance2 = new Singleton()

  console.assert(instance1 === instance2);
}

run();
</code></pre>
<h4 id="example-2">Example 2</h4>
<p>The <code>getInstance</code> method is Singleton’s gatekeeper. It returns the one and only instance of the object while maintaining a private reference to it which is not accessible to the outside world.</p>
<p>The <code>getInstance</code> method demonstates another design pattern called <strong>Lazy Load</strong>. <strong>Lazy Load</strong> checks if an instance has already been created; if not, it creates one and stores it for future reference. All subsequent calls will receive the stored instance. Lazy loading is a CPU and memory saving technique by creating objects only when absolutely necessary.</p>
<pre><code class="lang-js">var Singleton = (function () {
  var instance;

  function createInstance() {
    var object = new Object(&#39;I am the instance&#39;);
    return object;
  }

  return {
    getInstance: function () {
      if (!instance) {
        instance = createInstance();
      }

      return instance;
    }
  };
})();

function run() {
  var instance1 = Singleton.getInstance();
  var instance2 = Singleton.getInstance();

  console.assert(instance1 === instance2);
}

run();
</code></pre>
<hr>
<p><em>Source:</em></p>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Singleton_pattern">Singleton pattern</a><em>. From Wikipedia, the free encyclopedia.</em></li>
<li><a href="http://www.dofactory.com/javascript/singleton-design-pattern">Singleton</a><em>. Singleton JavaScript Design Pattern with examples.</em></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/SINGLETON_PATTERN.md','#OTHER')
,('48484f02-db58-4399-ad6e-fd1b003d2b49','V8','Google’s open source JavaScript engine. It’s what Chrome is running, but it’s also used for other projects like Node.js and MongoDB','

# V8

[V8](https://code.google.com/p/v8/) is Google’s open source, high performance JavaScript engine. It is written in C++ and is used in Google Chrome and other projects.

V8 compiles and executes JavaScript source code, handles memory allocation for objects, and garbage collects objects it no longer needs.

Check out the [Github repository](https://github.com/v8/v8/wiki) for more information.
','<h1 id="v8">V8</h1>
<p><a href="https://code.google.com/p/v8/">V8</a> is Google’s open source, high performance JavaScript engine. It is written in C++ and is used in Google Chrome and other projects.</p>
<p>V8 compiles and executes JavaScript source code, handles memory allocation for objects, and garbage collects objects it no longer needs.</p>
<p>Check out the <a href="https://github.com/v8/v8/wiki">Github repository</a> for more information.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/V8.md','#JS')
,('963ec4ef-5407-41e8-b851-e843a40e6852','Puppeteer ','a scripted, headless browser used for automating web page interaction','

# Puppeteer 

[Puppeteer](https://github.com/GoogleChrome/puppeteer) is a Node library which provides a high-level API to control headless Chrome or Chromium over the DevTools Protocol. It can also be configured to use full (non-headless) Chrome or Chromium.

## Use Cases

- Generate screenshots and PDFs of pages.
- Crawl a SPA and generate pre-rendered content (i.e. "SSR").
- Automate form submission, UI testing, keyboard input, etc.
- Create an up-to-date, automated testing environment. Run your tests directly in the latest version of Chrome using the latest JavaScript and browser features.


## Usage

Caution: Puppeteer requires at least Node v6.4.0, but the examples below use async/await which is only supported in Node v7.6.0 or greater.

Puppeteer will be familiar to people using other browser testing frameworks. You create an instance
of `Browser`, open pages, and then manipulate them with [Puppeteer''s API](https://github.com/GoogleChrome/puppeteer/blob/master/docs/api.md#).

**Example** - navigating to https://example.com and saving a screenshot as *example.png*:

Save file as **example.js**

```js
const puppeteer = require(''puppeteer'');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto(''https://example.com'');
  await page.screenshot({path: ''example.png''});

  await browser.close();
})();
```

## Why is the Chrome team building Puppeteer?

- Provide a slim, canonical library that highlights the capabilities of the [DevTools Protocol](https://chromedevtools.github.io/devtools-protocol/).
- Provide a reference implementation for similar testing libraries. Eventually, these other frameworks could adopt Puppeteer as their foundational layer.
- Grow the adoption of headless/automated browser testing.
- Help dogfood new DevTools Protocol features...and catch bugs!
- Learn more about the pain points of automated browser testing and help fill those gaps.
','<h1 id="puppeteer">Puppeteer</h1>
<p><a href="https://github.com/GoogleChrome/puppeteer">Puppeteer</a> is a Node library which provides a high-level API to control headless Chrome or Chromium over the DevTools Protocol. It can also be configured to use full (non-headless) Chrome or Chromium.</p>
<h2 id="use-cases">Use Cases</h2>
<ul>
<li>Generate screenshots and PDFs of pages.</li>
<li>Crawl a SPA and generate pre-rendered content (i.e. &quot;SSR&quot;).</li>
<li>Automate form submission, UI testing, keyboard input, etc.</li>
<li>Create an up-to-date, automated testing environment. Run your tests directly in the latest version of Chrome using the latest JavaScript and browser features.</li>
</ul>
<h2 id="usage">Usage</h2>
<p>Caution: Puppeteer requires at least Node v6.4.0, but the examples below use async/await which is only supported in Node v7.6.0 or greater.</p>
<p>Puppeteer will be familiar to people using other browser testing frameworks. You create an instance
of <code>Browser</code>, open pages, and then manipulate them with <a href="https://github.com/GoogleChrome/puppeteer/blob/master/docs/api.md#">Puppeteer&#39;s API</a>.</p>
<p><strong>Example</strong> - navigating to <a href="https://example.com">https://example.com</a> and saving a screenshot as <em>example.png</em>:</p>
<p>Save file as <strong>example.js</strong></p>
<pre><code class="lang-js">const puppeteer = require(&#39;puppeteer&#39;);

(async () =&gt; {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto(&#39;https://example.com&#39;);
  await page.screenshot({path: &#39;example.png&#39;});

  await browser.close();
})();
</code></pre>
<h2 id="why-is-the-chrome-team-building-puppeteer-">Why is the Chrome team building Puppeteer?</h2>
<ul>
<li>Provide a slim, canonical library that highlights the capabilities of the <a href="https://chromedevtools.github.io/devtools-protocol/">DevTools Protocol</a>.</li>
<li>Provide a reference implementation for similar testing libraries. Eventually, these other frameworks could adopt Puppeteer as their foundational layer.</li>
<li>Grow the adoption of headless/automated browser testing.</li>
<li>Help dogfood new DevTools Protocol features...and catch bugs!</li>
<li>Learn more about the pain points of automated browser testing and help fill those gaps.</li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/PUPPETEER.md','#OTHER')
,('ddf286d2-31d8-4b38-9eb1-b07e82ade307','TypeScript','a super-set of the JavaScript language that introduces types','

# TypeScript

[TypeScript](http://www.typescriptlang.org/) is a super-set of the JavaScript language that introduces types (plus interfaces and new JavaScript features). It allows type-checking during development time with supported editors such as [Visual Studio](https://code.visualstudio.com/). The compiler requires information about the “shape” of a module in a *type-definition-file*.
','<h1 id="typescript">TypeScript</h1>
<p><a href="http://www.typescriptlang.org/">TypeScript</a> is a super-set of the JavaScript language that introduces types (plus interfaces and new JavaScript features). It allows type-checking during development time with supported editors such as <a href="https://code.visualstudio.com/">Visual Studio</a>. The compiler requires information about the “shape” of a module in a <em>type-definition-file</em>.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/TYPESCRIPT.md','#TYPESCRIPT')
,('1e3593af-60ba-4fe4-836a-84d0583d6a68','Virtual DOM','a pattern in which a JavaScript representation of the desired DOM is created and the framework sorts out the details of how to make it happen','

# Virtual DOM

The Virtual DOM is a concept pioneered by [React](/_glossary/REACT.md) but since duplicated in other places including in [its own library](https://github.com/Matt-Esch/virtual-dom). With Virtual DOM, rather than modifying the [DOM](/_glossary/DOM.md) directly (or through some library), you create a set of JavaScript objects that represent the DOM that you would like. A simplistic example might be something like this

```js
{
   nodeType: "DIV",
   className: "container hero",
   children: [
     {
      nodeType: "H1",
      chidren: [
        {
          nodeType: "TEXT",
          textContents: "Welcome!!!",
      ],
   ],
}
```

When rendering, this model gets modified (and is often regenerated fully) by application code and passed to a diffing algorithm to identify what needs to change. These changes are then passed to the library which applies them to the DOM.

The Virtual DOM is therefore:

* Method(s) for creating this JavaScript representation of the visual tree
* A diffing algorithm
* A set of handlers which can apply patches generated by the diffing algorithm

This approach can have significant peformance benefits as the library can optimize rendering in ways that browsers would have difficulty with; for example by batching changes together or chosing to not apply a change if it is undone by one further along in the batch.

Virtual DOM is also known for granting code-maintainability benefits. Typically the Virtual DOM is immutable and regenerated fully every time any change is made. Therefore, at its heart, all of rendering is a single function that transforms an input of application state to a Virtual DOM tree. This statelessness can make debugging and testing of rendering code very straightforward as you only need to consider the input and output, not any previously rendered states.

A final benefit, is that since the Virtual DOM representation is just JavaScript, it can be output in formats other than a sequence of DOM manipulations. For example isomorphic JavaScript will render it as an HTML string which can be returned from a web request with the client-side app effectively "running" on the server (useful for loading the first page as rapidly as possible or for clients with JavaScript disabled).
','<h1 id="virtual-dom">Virtual DOM</h1>
<p>The Virtual DOM is a concept pioneered by <a href="/_glossary/REACT.md">React</a> but since duplicated in other places including in <a href="https://github.com/Matt-Esch/virtual-dom">its own library</a>. With Virtual DOM, rather than modifying the <a href="/_glossary/DOM.md">DOM</a> directly (or through some library), you create a set of JavaScript objects that represent the DOM that you would like. A simplistic example might be something like this</p>
<pre><code class="lang-js">{
   nodeType: &quot;DIV&quot;,
   className: &quot;container hero&quot;,
   children: [
     {
      nodeType: &quot;H1&quot;,
      chidren: [
        {
          nodeType: &quot;TEXT&quot;,
          textContents: &quot;Welcome!!!&quot;,
      ],
   ],
}
</code></pre>
<p>When rendering, this model gets modified (and is often regenerated fully) by application code and passed to a diffing algorithm to identify what needs to change. These changes are then passed to the library which applies them to the DOM.</p>
<p>The Virtual DOM is therefore:</p>
<ul>
<li>Method(s) for creating this JavaScript representation of the visual tree</li>
<li>A diffing algorithm</li>
<li>A set of handlers which can apply patches generated by the diffing algorithm</li>
</ul>
<p>This approach can have significant peformance benefits as the library can optimize rendering in ways that browsers would have difficulty with; for example by batching changes together or chosing to not apply a change if it is undone by one further along in the batch.</p>
<p>Virtual DOM is also known for granting code-maintainability benefits. Typically the Virtual DOM is immutable and regenerated fully every time any change is made. Therefore, at its heart, all of rendering is a single function that transforms an input of application state to a Virtual DOM tree. This statelessness can make debugging and testing of rendering code very straightforward as you only need to consider the input and output, not any previously rendered states.</p>
<p>A final benefit, is that since the Virtual DOM representation is just JavaScript, it can be output in formats other than a sequence of DOM manipulations. For example isomorphic JavaScript will render it as an HTML string which can be returned from a web request with the client-side app effectively &quot;running&quot; on the server (useful for loading the first page as rapidly as possible or for clients with JavaScript disabled).</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/VIRTUAL_DOM.md','#JS')
,('ed2e710f-3ad2-4cb1-8f65-6bb6830333b4','Prototype Pattern','a creational design pattern in software development. It is used when the type of objects to create is determined by a prototypical instance, which is cloned to produce new objects','

# Prototype Pattern

The [prototype pattern](https://en.wikipedia.org/wiki/Prototype_pattern) is a creational design pattern in software development. It is used when the type of objects to create is determined by a [prototypical](/_glossary/PROTOTYPE.md) instance, which is cloned to produce new objects. This pattern is used to:

- avoid subclasses of an object creator in the client application, like the abstract factory pattern does.
- avoid the inherent cost of creating a new object in the standard way (e.g., using the `new` keyword) when it is prohibitively expensive for a given application.

To implement the pattern, declare an abstract base class that specifies a pure virtual `clone()` method. Any class that needs a “polymorphic constructor” capability derives itself from the abstract base class, and implements the `clone()` operation.

The client, instead of writing code that invokes the `new` operator on a hard-coded class name, calls the `clone()` method on the prototype, calls a [factory method](/_glossary/FACTORY_PATTERN.md) with a parameter designating the particular concrete derived class desired, or invokes the `clone()` method through some mechanism provided by another design pattern.

## Structure

![Prototype Pattern diagram](http://www.dofactory.com/images/diagrams/javascript/javascript-prototype.jpg)

The objects participating in this pattern are:

- **Client** - In sample code: the `run()` function.
 - creates a new object by asking a prototype to clone itself
- **Prototype** - In sample code: `CustomerPrototype`
 - creates an interfaces to clone itself
- **Clones** - In sample code: `Customer`
 - the cloned objects that are being created

## Example

In the sample code we have a `CustomerPrototype` object that clones objects given a prototype object. Its constructor function accepts a prototype of type `Customer`. Calling the clone method will generate a new `Customer` object with its property values initialized with the prototype values.

This is the classical implementation of the Prototype pattern, but JavaScript can do this far more effectively using its built-in [prototype facility](/_glossary/PROTOTYPE.md).

```js
function CustomerPrototype(proto) {
  this.proto = proto;
 
  this.clone = function () {
    var customer = new Customer();
 
    customer.first = proto.first;
    customer.last = proto.last;
    customer.status = proto.status;
 
    return customer;
  };
}
 
function Customer(first, last, status) {
  this.first = first;
  this.last = last;
  this.status = status;
 
  this.say = function () {
    alert(''name: ''
      + this.first
      + '' ''
      + this.last
      + '', status: ''
      + this.status
    );
  };
}
 
function run() {
  var proto = new Customer(''n/a'', ''n/a'', ''pending'');
  var prototype = new CustomerPrototype(proto);
  var customer = prototype.clone();
  customer.say();
}

run();
```

----------

*Source:*
- [Prototype pattern](https://en.wikipedia.org/wiki/Prototype_pattern)*. From Wikipedia, the free encyclopedia.*
- [Prototype](http://www.dofactory.com/javascript/prototype-design-pattern)*. Prototype JavaScript Design Pattern with examples.*
','<h1 id="prototype-pattern">Prototype Pattern</h1>
<p>The <a href="https://en.wikipedia.org/wiki/Prototype_pattern">prototype pattern</a> is a creational design pattern in software development. It is used when the type of objects to create is determined by a <a href="/_glossary/PROTOTYPE.md">prototypical</a> instance, which is cloned to produce new objects. This pattern is used to:</p>
<ul>
<li>avoid subclasses of an object creator in the client application, like the abstract factory pattern does.</li>
<li>avoid the inherent cost of creating a new object in the standard way (e.g., using the <code>new</code> keyword) when it is prohibitively expensive for a given application.</li>
</ul>
<p>To implement the pattern, declare an abstract base class that specifies a pure virtual <code>clone()</code> method. Any class that needs a “polymorphic constructor” capability derives itself from the abstract base class, and implements the <code>clone()</code> operation.</p>
<p>The client, instead of writing code that invokes the <code>new</code> operator on a hard-coded class name, calls the <code>clone()</code> method on the prototype, calls a <a href="/_glossary/FACTORY_PATTERN.md">factory method</a> with a parameter designating the particular concrete derived class desired, or invokes the <code>clone()</code> method through some mechanism provided by another design pattern.</p>
<h2 id="structure">Structure</h2>
<p><img src="http://www.dofactory.com/images/diagrams/javascript/javascript-prototype.jpg" alt="Prototype Pattern diagram"></p>
<p>The objects participating in this pattern are:</p>
<ul>
<li><strong>Client</strong> - In sample code: the <code>run()</code> function.<ul>
<li>creates a new object by asking a prototype to clone itself</li>
</ul>
</li>
<li><strong>Prototype</strong> - In sample code: <code>CustomerPrototype</code><ul>
<li>creates an interfaces to clone itself</li>
</ul>
</li>
<li><strong>Clones</strong> - In sample code: <code>Customer</code><ul>
<li>the cloned objects that are being created</li>
</ul>
</li>
</ul>
<h2 id="example">Example</h2>
<p>In the sample code we have a <code>CustomerPrototype</code> object that clones objects given a prototype object. Its constructor function accepts a prototype of type <code>Customer</code>. Calling the clone method will generate a new <code>Customer</code> object with its property values initialized with the prototype values.</p>
<p>This is the classical implementation of the Prototype pattern, but JavaScript can do this far more effectively using its built-in <a href="/_glossary/PROTOTYPE.md">prototype facility</a>.</p>
<pre><code class="lang-js">function CustomerPrototype(proto) {
  this.proto = proto;

  this.clone = function () {
    var customer = new Customer();

    customer.first = proto.first;
    customer.last = proto.last;
    customer.status = proto.status;

    return customer;
  };
}

function Customer(first, last, status) {
  this.first = first;
  this.last = last;
  this.status = status;

  this.say = function () {
    alert(&#39;name: &#39;
      + this.first
      + &#39; &#39;
      + this.last
      + &#39;, status: &#39;
      + this.status
    );
  };
}

function run() {
  var proto = new Customer(&#39;n/a&#39;, &#39;n/a&#39;, &#39;pending&#39;);
  var prototype = new CustomerPrototype(proto);
  var customer = prototype.clone();
  customer.say();
}

run();
</code></pre>
<hr>
<p><em>Source:</em></p>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Prototype_pattern">Prototype pattern</a><em>. From Wikipedia, the free encyclopedia.</em></li>
<li><a href="http://www.dofactory.com/javascript/prototype-design-pattern">Prototype</a><em>. Prototype JavaScript Design Pattern with examples.</em></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/PROTOTYPE_PATTERN.md','#OTHER')
,('5f7ca887-19c0-4317-83ee-eff9895935de','rnpm','a package manager to ease React Native development','

# rnpm

[rnpm](https://github.com/rnpm/rnpm) is built to ease [React Native](/_glossary/REACT.md#react-native) development by automatically linking native dependencies to your iOS/Android project.','<h1 id="rnpm">rnpm</h1>
<p><a href="https://github.com/rnpm/rnpm">rnpm</a> is built to ease <a href="/_glossary/REACT.md#react-native">React Native</a> development by automatically linking native dependencies to your iOS/Android project.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/RNPM.md','#JS')
;
INSERT INTO articles.articles (id,"name",description,markdown,html,url,tag) VALUES 
('4c7f0ff3-4af5-436d-9bd4-44cf8fd9fc53','RxJS','a library for asynchronous programming using observable streams','

# RxJS

[RxJS](https://github.com/Reactive-Extensions/RxJS) is a library in the [ReactiveX](http://reactivex.io/) family of functional reactive programming libraries. It allows you to develop programs that respond to asynchronous events by composing sequences of observable streams.

Observable streams can send zero or more “data” notifications and terminate with either an “completed” or an “error” notification. Subsequent streams can combine and remix these notifications into new observable patterns, making it possible to compose rich sequences of asynchronous events that clean up resources appropriately when done.

RxJS is available under an Apache license. It is developed by Microsoft Open Source and numerous third-party contributors.
','<h1 id="rxjs">RxJS</h1>
<p><a href="https://github.com/Reactive-Extensions/RxJS">RxJS</a> is a library in the <a href="http://reactivex.io/">ReactiveX</a> family of functional reactive programming libraries. It allows you to develop programs that respond to asynchronous events by composing sequences of observable streams.</p>
<p>Observable streams can send zero or more “data” notifications and terminate with either an “completed” or an “error” notification. Subsequent streams can combine and remix these notifications into new observable patterns, making it possible to compose rich sequences of asynchronous events that clean up resources appropriately when done.</p>
<p>RxJS is available under an Apache license. It is developed by Microsoft Open Source and numerous third-party contributors.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/RXJS.md','#JS')
,('cf47e820-57e2-4db9-b05b-03a38a27ddeb','Vanilla','a term for library/framework free JavaScript','

# Vanilla

[Vanilla](http://vanilla-js.com/) (aka VanillaJS) is a name to refer to using plain JavaScript without any additional libraries like jQuery. Other names are *Plain Old Javascript* or *Core Javascript*.

It is sometimes ironically referred to as a library, as a joke for people who could be seen as mindlessly using different frameworks.

Some people have gone so far to release this library, usually with an empty or comment-only JS file.
','<h1 id="vanilla">Vanilla</h1>
<p><a href="http://vanilla-js.com/">Vanilla</a> (aka VanillaJS) is a name to refer to using plain JavaScript without any additional libraries like jQuery. Other names are <em>Plain Old Javascript</em> or <em>Core Javascript</em>.</p>
<p>It is sometimes ironically referred to as a library, as a joke for people who could be seen as mindlessly using different frameworks.</p>
<p>Some people have gone so far to release this library, usually with an empty or comment-only JS file.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/VANILLA.md','#JS')
,('c13423ba-14e7-4eff-b4c7-6fefe0520b33','RequireJS','a browser based module loader using AMD','

# RequireJS

[RequireJS](http://requirejs.org/) section to be completed.
','<h1 id="requirejs">RequireJS</h1>
<p><a href="http://requirejs.org/">RequireJS</a> section to be completed.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/REQUIREJS.md','#JS')
,('5be4c39e-a34f-438f-a406-cfeb6b13452d','Sails','a realtime MVC Framework for Node.js','

# Sails

[Sails](http://sailsjs.org/) is a web framework that makes it easy to build custom, enterprise-grade [Node.js](/_glossary/NODEJS.md) apps. It is designed to resemble the MVC architecture from frameworks like Ruby on Rails, but with support for the more modern, data-oriented style of web app development. It’s especially good for building realtime features like chat.
','<h1 id="sails">Sails</h1>
<p><a href="http://sailsjs.org/">Sails</a> is a web framework that makes it easy to build custom, enterprise-grade <a href="/_glossary/NODEJS.md">Node.js</a> apps. It is designed to resemble the MVC architecture from frameworks like Ruby on Rails, but with support for the more modern, data-oriented style of web app development. It’s especially good for building realtime features like chat.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/SAILS.md','#OTHER')
,('707cae26-64f9-4088-a02f-b725a52d8211','VueJS','a library for creating user interfaces based on data models','

# VueJS

[VueJS](http://vuejs.org/) is a JavaScript library for creating user interfaces (views) based on underlying data-models. Instead of only updating user data in the DOM, a data-model will be in sync to reflect the changes. Vue works through reactive data-binding. It means when you update for example a form-field, the underlying data-model is updated automatically. When other parts of the website are also bound to the same data-model, its content will update immediately.
','<h1 id="vuejs">VueJS</h1>
<p><a href="http://vuejs.org/">VueJS</a> is a JavaScript library for creating user interfaces (views) based on underlying data-models. Instead of only updating user data in the DOM, a data-model will be in sync to reflect the changes. Vue works through reactive data-binding. It means when you update for example a form-field, the underlying data-model is updated automatically. When other parts of the website are also bound to the same data-model, its content will update immediately.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/VUEJS.md','#JS')
,('1cb442c6-c2eb-4f94-9fcc-39afbd249233','XHR','XMLHttpRequest is an API that provides client functionality for transferring data between a client and a server without page refresh','

# XHR

XMLHttpRequest is an API that provides client functionality for transferring data between a client and a server. It provides an easy way to retrieve data from a URL without having to do a full page refresh. This enables a Web page to update just a part of the page without disrupting what the user is doing.
','<h1 id="xhr">XHR</h1>
<p>XMLHttpRequest is an API that provides client functionality for transferring data between a client and a server. It provides an easy way to retrieve data from a URL without having to do a full page refresh. This enables a Web page to update just a part of the page without disrupting what the user is doing.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/XHR.md','#OTHER')
,('b55cc4d2-a4ca-4539-91de-52979c9a549d','UMD','a pattern of universal module definition for JavaScript modules','

# UMD

[UMD](https://github.com/umdjs/umd) is a pattern of universal module definition for JavaScript modules. These modules are capable of working everywhere, be it in the client, on the server or elsewhere.

The UMD pattern typically attempts to offer compatibility with the most popular script loaders of the day (e.g [RequireJS](/_glossary/REQUIREJS.md) amongst others). In many cases it uses [AMD](/_glossary/AMD.md) as a base, with special-casing added to handle [CommonJS](/_glossary/COMMONJS.md) compatibility.
','<h1 id="umd">UMD</h1>
<p><a href="https://github.com/umdjs/umd">UMD</a> is a pattern of universal module definition for JavaScript modules. These modules are capable of working everywhere, be it in the client, on the server or elsewhere.</p>
<p>The UMD pattern typically attempts to offer compatibility with the most popular script loaders of the day (e.g <a href="/_glossary/REQUIREJS.md">RequireJS</a> amongst others). In many cases it uses <a href="/_glossary/AMD.md">AMD</a> as a base, with special-casing added to handle <a href="/_glossary/COMMONJS.md">CommonJS</a> compatibility.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/UMD.md','#OTHER')
,('c3f8b498-94d2-4420-b7d6-533ba4bddb52','Underscore','a swiss army knife, focusing on helper methods for most built-in objects','

# Underscore

[Underscore](http://underscorejs.org/) is a small library which provides many helpers to write JavaScript in a more functional way without extending built-in prototypes. It may be seen as the swiss army knife of JavaScript development, as it provides a helper for most API shortcomings of built-in objects.
','<h1 id="underscore">Underscore</h1>
<p><a href="http://underscorejs.org/">Underscore</a> is a small library which provides many helpers to write JavaScript in a more functional way without extending built-in prototypes. It may be seen as the swiss army knife of JavaScript development, as it provides a helper for most API shortcomings of built-in objects.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/UNDERSCORE.md','#OTHER')
,('e7e14b81-d874-4c04-99cc-6dd8f2c06cd3','Yeoman','a generator builder to speed up the setup and installation process of a project or part of a project','

# Yeoman

[Yeoman](http://yeoman.io/) is both a generator builder and an ecosystem. A generator is basically a plugin which will generate files based on user input. Plugins can be run with the `yo` command to scaffold complete projects or useful parts.

Therefore, the goal of a Yeoman generator is usually (but not necessarily) to speed up the setup and installation process of a project or part of a project by packaging it inside a module that can be configured through a question/reply workflow from the command line.
','<h1 id="yeoman">Yeoman</h1>
<p><a href="http://yeoman.io/">Yeoman</a> is both a generator builder and an ecosystem. A generator is basically a plugin which will generate files based on user input. Plugins can be run with the <code>yo</code> command to scaffold complete projects or useful parts.</p>
<p>Therefore, the goal of a Yeoman generator is usually (but not necessarily) to speed up the setup and installation process of a project or part of a project by packaging it inside a module that can be configured through a question/reply workflow from the command line.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/YEOMAN.md','#OTHER')
,('861f011d-6ff4-4103-b744-1ef259b131e8','Universal','an application is said to be universal (isomorphic) when its code can run both in the client and the server','

# Universal

A universal (or [isomorphic](/_glossary/ISOMORPHIC.md)) application is one whose code (in this case, JavaScript) can run both in the server and the client.

The underlying idea is to allow the server to render and handle routing of an application for non-JavaScript users, while also making it fully working in the browser for fast interactions without involving traditional page reloads.

In a universal application, the initial request made by the web browser is processed by the server while subsequent requests are processed by the client.
','<h1 id="universal">Universal</h1>
<p>A universal (or <a href="/_glossary/ISOMORPHIC.md">isomorphic</a>) application is one whose code (in this case, JavaScript) can run both in the server and the client.</p>
<p>The underlying idea is to allow the server to render and handle routing of an application for non-JavaScript users, while also making it fully working in the browser for fast interactions without involving traditional page reloads.</p>
<p>In a universal application, the initial request made by the web browser is processed by the server while subsequent requests are processed by the client.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/UNIVERSAL.md','#OTHER')
;
INSERT INTO articles.articles (id,"name",description,markdown,html,url,tag) VALUES 
('7d4f80f5-33f2-4657-90a0-4a00f4fb6016','WebGL','a JavaScript API for rendering interactive 3D and 2D graphics within any compatible web browser without the use of plug-ins','

# WebGL

[WebGL](https://www.khronos.org/webgl/) (for Web Graphics Library) is a cross-platform, royalty-free web standard for a low-level 3D graphics API based on OpenGL ES 2.0, exposed through the HTML5 Canvas element as Document Object Model interfaces. Developers familiar with OpenGL ES 2.0 will recognize WebGL as a Shader-based API using GLSL, with constructs that are semantically similar to those of the underlying OpenGL ES 2.0 API. It stays very close to the OpenGL ES 2.0 specification, with some concessions made for what developers expect out of memory-managed languages such as JavaScript.

WebGL does so by introducing an API that closely conforms to OpenGL ES 2.0 that can be used in HTML5 [`<canvas>`](/_glossary/CANVAS.md) elements.
','<h1 id="webgl">WebGL</h1>
<p><a href="https://www.khronos.org/webgl/">WebGL</a> (for Web Graphics Library) is a cross-platform, royalty-free web standard for a low-level 3D graphics API based on OpenGL ES 2.0, exposed through the HTML5 Canvas element as Document Object Model interfaces. Developers familiar with OpenGL ES 2.0 will recognize WebGL as a Shader-based API using GLSL, with constructs that are semantically similar to those of the underlying OpenGL ES 2.0 API. It stays very close to the OpenGL ES 2.0 specification, with some concessions made for what developers expect out of memory-managed languages such as JavaScript.</p>
<p>WebGL does so by introducing an API that closely conforms to OpenGL ES 2.0 that can be used in HTML5 <a href="/_glossary/CANVAS.md"><code>&lt;canvas&gt;</code></a> elements.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/WEBGL.md','#JS')
,('0dbd67d3-cdd1-432f-b41e-6dfdc2bd1f66','Webpack','a dependency manager with a friendly and fast development environment, simplifying a lot of common tasks','

# Webpack

[Webpack](https://github.com/webpack/webpack) helps you manage dependencies in your project, and also offers a friendly and fast development environment, simplifying a lot of common tasks behind a simple configuration file. It also allows you to bundle your modules into static assets for browsers. Its killer feature is known as [hot module replacement](https://github.com/webpack/docs/wiki/hot-module-replacement-with-webpack), which lets your live code in the browser update automatically as you change files in your preferred editor without a page reload.
','<h1 id="webpack">Webpack</h1>
<p><a href="https://github.com/webpack/webpack">Webpack</a> helps you manage dependencies in your project, and also offers a friendly and fast development environment, simplifying a lot of common tasks behind a simple configuration file. It also allows you to bundle your modules into static assets for browsers. Its killer feature is known as <a href="https://github.com/webpack/docs/wiki/hot-module-replacement-with-webpack">hot module replacement</a>, which lets your live code in the browser update automatically as you change files in your preferred editor without a page reload.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/WEBPACK.md','#OTHER')
,('434ba69e-7f41-416a-9861-fefeb572ee76','Zepto','a lightweight jQuery clone, without all the browser-compatibility specific code','

# Zepto

[Zepto](http://zeptojs.com/) is a lightweight DOM library in the same flavor of [jQuery](/_glossary/JQUERY.md) but much lighter. Its main purpose is to provide a faster implementation for people that do not intend to support all browsers and do not
need to have all of jQuery’s features.
','<h1 id="zepto">Zepto</h1>
<p><a href="http://zeptojs.com/">Zepto</a> is a lightweight DOM library in the same flavor of <a href="/_glossary/JQUERY.md">jQuery</a> but much lighter. Its main purpose is to provide a faster implementation for people that do not intend to support all browsers and do not
need to have all of jQuery’s features.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/ZEPTO.md','#JS')
,('c0b27c20-8c49-4560-81c0-9a17b88b363f','AngularJS','a structural framework for dynamic web apps','

# AngularJS

[AngularJS](https://angularjs.org/) is a structural framework for dynamic web apps. It lets developers use HTML as their template language and lets them extend HTML’s syntax to express their application’s components clearly and succinctly.

Angular’s data binding and dependency injection eliminate much of the code developers would otherwise have to write. And it all happens within the browser, making it an ideal partner with any server technology.
','<h1 id="angularjs">AngularJS</h1>
<p><a href="https://angularjs.org/">AngularJS</a> is a structural framework for dynamic web apps. It lets developers use HTML as their template language and lets them extend HTML’s syntax to express their application’s components clearly and succinctly.</p>
<p>Angular’s data binding and dependency injection eliminate much of the code developers would otherwise have to write. And it all happens within the browser, making it an ideal partner with any server technology.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/ANGULARJS.md','#Js')
,('b22adb8a-2692-42cb-9cb2-f943328cd273','Babel','a JavaScript transformation toolkit which started as an ECMAScript 2015 / ES6 code translator (transpiler)','

# Babel

[Babel](https://babeljs.io/) (formerly *6to5*) is essentially an [ECMAScript](/_glossary/ECMASCRIPT.md) 2015 (ES6) and beyond transpiler. It means that it is a program that translates future’s JavaScript into today’s widely understood (by browsers) JavaScript. The idea behind such a tool is to allow developers to write their code using ECMAScript’s new features while still making it work in current (and past) environments.

As of [version 6](https://babeljs.io/blog/2015/10/29/6.0.0), Babel also intends to be a platform, a suite of tools designed to create the next generation of JavaScript tooling. This means Babel is also supposed to power minifiers, linters, formatters, syntax highlighters, code completion tools, type checkers, codemod tools, and every other tool to be using the same foundation to do their job better than ever before.
','<h1 id="babel">Babel</h1>
<p><a href="https://babeljs.io/">Babel</a> (formerly <em>6to5</em>) is essentially an <a href="/_glossary/ECMASCRIPT.md">ECMAScript</a> 2015 (ES6) and beyond transpiler. It means that it is a program that translates future’s JavaScript into today’s widely understood (by browsers) JavaScript. The idea behind such a tool is to allow developers to write their code using ECMAScript’s new features while still making it work in current (and past) environments.</p>
<p>As of <a href="https://babeljs.io/blog/2015/10/29/6.0.0">version 6</a>, Babel also intends to be a platform, a suite of tools designed to create the next generation of JavaScript tooling. This means Babel is also supposed to power minifiers, linters, formatters, syntax highlighters, code completion tools, type checkers, codemod tools, and every other tool to be using the same foundation to do their job better than ever before.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/BABEL.md','#JS')
,('bd5d9dfb-3c07-494e-93bf-91b1d81f6c56','Arity','the number of arguments of a function','

# Arity

Arity (from Latin) is the term used to refer to the number of arguments or operands in a function or operation, respectively. You''re most likely to come across this word in the realm of JavaScript when it’s used to mention the number of arguments expected by a JavaScript function.

There’s even a property named [arity](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/arity), of the `Function` object that returns the number of expected arguments in a function. It’s now obsolete though and replaced by `length`.

As an example, the following function has an arity of 3.

```js
function getName(first, middle, last) {
  return first + '' '' + middle + '' '' + last;
}
```

Source: https://gist.github.com/nucliweb/8de961282f64095b1a57.
','<h1 id="arity">Arity</h1>
<p>Arity (from Latin) is the term used to refer to the number of arguments or operands in a function or operation, respectively. You&#39;re most likely to come across this word in the realm of JavaScript when it’s used to mention the number of arguments expected by a JavaScript function.</p>
<p>There’s even a property named <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/arity">arity</a>, of the <code>Function</code> object that returns the number of expected arguments in a function. It’s now obsolete though and replaced by <code>length</code>.</p>
<p>As an example, the following function has an arity of 3.</p>
<pre><code class="lang-js">function getName(first, middle, last) {
  return first + &#39; &#39; + middle + &#39; &#39; + last;
}
</code></pre>
<p>Source: <a href="https://gist.github.com/nucliweb/8de961282f64095b1a57">https://gist.github.com/nucliweb/8de961282f64095b1a57</a>.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/ARITY.md','#OTHER')
,('e14d09cb-dacf-4b30-9cd1-d3345de302db','BEM','a methodology and libraries developed and used at Yandex for building user interfaces','

# BEM

[BEM](https://en.bem.info/) is a methodology and libraries developed and used at Yandex for building user interfaces.

Key concepts of methodology

 * Block: logically and functionally independent page component, encapsulates behavior (JavaScript), templates, styles (CSS), and other implementation technologies
 * Element: a constituent part of a block that can’t be used outside of it (For example, a menu item)
 * Modifier: defines the appearance and behavior of a block or an element

BEM methodology solves common frontend problems:

 1. Component approach (splitting interface into blocks).
 2. How to name things (in [code](https://en.bem.info/method/naming-convention/) and on [filesystem](https://en.bem.info/method/filesystem/)).
 3. How to reuse components (for JS / CSS and all other techs) — for example you can take [bem-core](https://github.com/bem/bem-core) library (a collection of common blocks and solutions).
 4. How to describe components behaviour — [i-bem.js](https://en.bem.info/technology/i-bem/) library that allows you describe a block logic in declarative style and keep it loosely coupled with others.
 5. How to generate HTML — declarative template engine [bem-xjst](https://github.com/bem/bem-xjst) for server and browsers.
 6. How to manage components dependencies and build project — [ENB](https://github.com/enb/enb) builder.
','<h1 id="bem">BEM</h1>
<p><a href="https://en.bem.info/">BEM</a> is a methodology and libraries developed and used at Yandex for building user interfaces.</p>
<p>Key concepts of methodology</p>
<ul>
<li>Block: logically and functionally independent page component, encapsulates behavior (JavaScript), templates, styles (CSS), and other implementation technologies</li>
<li>Element: a constituent part of a block that can’t be used outside of it (For example, a menu item)</li>
<li>Modifier: defines the appearance and behavior of a block or an element</li>
</ul>
<p>BEM methodology solves common frontend problems:</p>
<ol>
<li>Component approach (splitting interface into blocks).</li>
<li>How to name things (in <a href="https://en.bem.info/method/naming-convention/">code</a> and on <a href="https://en.bem.info/method/filesystem/">filesystem</a>).</li>
<li>How to reuse components (for JS / CSS and all other techs) — for example you can take <a href="https://github.com/bem/bem-core">bem-core</a> library (a collection of common blocks and solutions).</li>
<li>How to describe components behaviour — <a href="https://en.bem.info/technology/i-bem/">i-bem.js</a> library that allows you describe a block logic in declarative style and keep it loosely coupled with others.</li>
<li>How to generate HTML — declarative template engine <a href="https://github.com/bem/bem-xjst">bem-xjst</a> for server and browsers.</li>
<li>How to manage components dependencies and build project — <a href="https://github.com/enb/enb">ENB</a> builder.</li>
</ol>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/BEM.md','#OTHER')
,('c935072e-d8ec-441e-854f-30631ad5ff1b','Bluebird','a fully featured Promise library with focus on innovative features and performance','

# Bluebird

[Bluebird](http://bluebirdjs.com/docs/getting-started.html) is a fully featured [promise](/_glossary/PROMISE.md) library with focus on innovative features and performance. It means that it is a tool that completes and reinforces the behavior of JavaScript promises.
','<h1 id="bluebird">Bluebird</h1>
<p><a href="http://bluebirdjs.com/docs/getting-started.html">Bluebird</a> is a fully featured <a href="/_glossary/PROMISE.md">promise</a> library with focus on innovative features and performance. It means that it is a tool that completes and reinforces the behavior of JavaScript promises.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/BLUEBIRD.md','#JS')
,('6ea88814-da7b-4ae0-8205-10a2c7b9744f','ECMAScript (ES)','the standardized specification of the scripting language used by JavaScript','

# ECMAScript (ES)

[ECMAScript](http://www.ecmascript.org/) (shortened as *ES*) is the standardized specification of the scripting language used by JavaScript, as well as less known languages JScript and ActionScript.

The versioning convention of ECMAScript has been the subject of hot debates. We often refer to ES5 (understood by most browsers), ES6 (the future of JavaScript) and even ES7 (the far future of JavaScript), but the official appellation for ES6 would actually be ES2015. The intention is to publish a version of the specification every year, making the language evolve quicker than ever. Still, most developers use ES5 and ES6 terms.
','<h1 id="ecmascript-es-">ECMAScript (ES)</h1>
<p><a href="http://www.ecmascript.org/">ECMAScript</a> (shortened as <em>ES</em>) is the standardized specification of the scripting language used by JavaScript, as well as less known languages JScript and ActionScript.</p>
<p>The versioning convention of ECMAScript has been the subject of hot debates. We often refer to ES5 (understood by most browsers), ES6 (the future of JavaScript) and even ES7 (the far future of JavaScript), but the official appellation for ES6 would actually be ES2015. The intention is to publish a version of the specification every year, making the language evolve quicker than ever. Still, most developers use ES5 and ES6 terms.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/ECMASCRIPT.md','#JS')
,('fdcf3f7d-38b0-471f-82c8-de23921d1712','Chai','an assertion library used with a JavaScript testing framework','

# Chai

[Chai](http://chaijs.com/) is a Behavior Driven Development (BDD) / Test Driven Development (TDD) assertion library for [Node.js](/_glossary/NODEJS.md) and the browser. It can be paired with any JavaScript testing framework, such as [Mocha](/_glossary/MOCHA.md).

The Chai assertion library allows you to write assertions in the classical form: `assert.typeOf(foo, ''string'')`, but where Chai shines is its chain-capable style which makes writing assertions very readable: `expect(foo).to.be.a(''string'')`.
','<h1 id="chai">Chai</h1>
<p><a href="http://chaijs.com/">Chai</a> is a Behavior Driven Development (BDD) / Test Driven Development (TDD) assertion library for <a href="/_glossary/NODEJS.md">Node.js</a> and the browser. It can be paired with any JavaScript testing framework, such as <a href="/_glossary/MOCHA.md">Mocha</a>.</p>
<p>The Chai assertion library allows you to write assertions in the classical form: <code>assert.typeOf(foo, &#39;string&#39;)</code>, but where Chai shines is its chain-capable style which makes writing assertions very readable: <code>expect(foo).to.be.a(&#39;string&#39;)</code>.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/CHAI.md','#OTHER')
;
INSERT INTO articles.articles (id,"name",description,markdown,html,url,tag) VALUES 
('f176f024-9eb1-4639-9700-202eeecff0dd','Isomorphic','an application is said to be isomorphic (universal) when its code can run both in the client and the server','

# Isomorphic

An isomorphic (or [preferably](https://medium.com/@mjackson/universal-javascript-4761051b7ae9) [universal](/_glossary/UNIVERSAL.md)) application is one whose code (in this case, JavaScript) can run both in the server and the client.

The underlying idea is to allow the server to render and handle routing of an application for non-JavaScript users, while also making it fully working in the browser for fast interactions without involving traditional page reloads.

In an isomorphic application, the initial request made by the web browser is processed by the server while subsequent requests are processed by the client.
','<h1 id="isomorphic">Isomorphic</h1>
<p>An isomorphic (or <a href="https://medium.com/@mjackson/universal-javascript-4761051b7ae9">preferably</a> <a href="/_glossary/UNIVERSAL.md">universal</a>) application is one whose code (in this case, JavaScript) can run both in the server and the client.</p>
<p>The underlying idea is to allow the server to render and handle routing of an application for non-JavaScript users, while also making it fully working in the browser for fast interactions without involving traditional page reloads.</p>
<p>In an isomorphic application, the initial request made by the web browser is processed by the server while subsequent requests are processed by the client.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/ISOMORPHIC.md','#OTHER')
,('de57b070-151a-4e2e-9dea-22d197a8adb2','Brunch','a tool focusing on the production of deployment-ready files from development files','

# Brunch

[Brunch](http://brunch.io/) is a builder. Not a generic task runner, but a specialized tool focusing on the production of a small number of deployment-ready files from a large number of heterogenous development files or trees.

Brunch is fundamentally specialized and geared towards building assets, these files that get used in the end by the runtime platform, usually a web browser. It thus comes pre-equipped with a number of behaviors and features such as concatenation, minification and watching of source files.
','<h1 id="brunch">Brunch</h1>
<p><a href="http://brunch.io/">Brunch</a> is a builder. Not a generic task runner, but a specialized tool focusing on the production of a small number of deployment-ready files from a large number of heterogenous development files or trees.</p>
<p>Brunch is fundamentally specialized and geared towards building assets, these files that get used in the end by the runtime platform, usually a web browser. It thus comes pre-equipped with a number of behaviors and features such as concatenation, minification and watching of source files.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/BRUNCH.md','#OTHER')
,('25683641-88a4-4914-ace3-76d3176dbcad','Ember','an application framework based on the model-view-controller pattern','

# Ember

[Ember](http://emberjs.com/) is an application framework based on the model-view-controller pattern. By incorporating common patterns and idioms into the framework it aims to allow developers to create ambitious web applications quickly and easily. A side-effect of these abilities (either negative or positive depending upon the readers point of view) is that a certain conformity of naming and structure within those applications is expected.

A key aim of the Ember project is that backward compatibility is an important feature of the framework so that applications may be built with Ember in the knowledge that future releases of the framework will not break those applications.

Ember relies upon the following [core concepts](https://guides.emberjs.com/v2.1.0/getting-started/core-concepts/):

 - **Templates**: Ember.js templates use [handlebars](http://handlebarsjs.com/) style syntax and are used to integrate data with pre-written HTML.
 - **Models**: In Ember.js models allow the objects which the web application makes use of to be persisted.
 - **Components**: Components are used to define the behavior of the user interface in Ember.js. By combining a template and some javascript a component works to produce a representation which is useful to the web application user.
 - **Routes**: A route loads a component, a template and, optionally, some models. The resulting HTML is then rendered to the user agent.
 - **The Router**: Maps a URL to a given route.
','<h1 id="ember">Ember</h1>
<p><a href="http://emberjs.com/">Ember</a> is an application framework based on the model-view-controller pattern. By incorporating common patterns and idioms into the framework it aims to allow developers to create ambitious web applications quickly and easily. A side-effect of these abilities (either negative or positive depending upon the readers point of view) is that a certain conformity of naming and structure within those applications is expected.</p>
<p>A key aim of the Ember project is that backward compatibility is an important feature of the framework so that applications may be built with Ember in the knowledge that future releases of the framework will not break those applications.</p>
<p>Ember relies upon the following <a href="https://guides.emberjs.com/v2.1.0/getting-started/core-concepts/">core concepts</a>:</p>
<ul>
<li><strong>Templates</strong>: Ember.js templates use <a href="http://handlebarsjs.com/">handlebars</a> style syntax and are used to integrate data with pre-written HTML.</li>
<li><strong>Models</strong>: In Ember.js models allow the objects which the web application makes use of to be persisted.</li>
<li><strong>Components</strong>: Components are used to define the behavior of the user interface in Ember.js. By combining a template and some javascript a component works to produce a representation which is useful to the web application user.</li>
<li><strong>Routes</strong>: A route loads a component, a template and, optionally, some models. The resulting HTML is then rendered to the user agent.</li>
<li><strong>The Router</strong>: Maps a URL to a given route.</li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/EMBER.md','#OTHER')
,('f441c9e6-ce4f-4418-b45c-29b948f28d14','Gulp','a task runner aiming at automating tedious and possibly complex tasks','

# Gulp

[Gulp](http://gulpjs.com/) is a task runner aiming at automating tedious and possibly complex tasks. The idea behind Gulp (and its peer [Grunt](/_glossary/GRUNT.md)) is to define tasks that perform (usually file-based) actions. These tasks can then be run through the command line or as part of another build step. 

Gulp also owes its success to its very large ecosystem of plugins, making it easy to perform everyday’s tasks without having to write much code.
','<h1 id="gulp">Gulp</h1>
<p><a href="http://gulpjs.com/">Gulp</a> is a task runner aiming at automating tedious and possibly complex tasks. The idea behind Gulp (and its peer <a href="/_glossary/GRUNT.md">Grunt</a>) is to define tasks that perform (usually file-based) actions. These tasks can then be run through the command line or as part of another build step. </p>
<p>Gulp also owes its success to its very large ecosystem of plugins, making it easy to perform everyday’s tasks without having to write much code.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/GULP.md','#JS')
,('513c162a-2186-4b9a-8082-f5180e357106','Knockout','a library that helps developers creating user interfaces with a clean underlying data model','

# Knockout

[Knockout](http://knockoutjs.com/) (shortened as *KO*) is a JavaScript library that helps developers creating rich, responsive display and editor user interfaces with a clean underlying data model. Knockout helps implementing sections of UI that update dynamically (e.g. changes depending on user’s actions or when external data source gets updated) more simply and maintainably.
','<h1 id="knockout">Knockout</h1>
<p><a href="http://knockoutjs.com/">Knockout</a> (shortened as <em>KO</em>) is a JavaScript library that helps developers creating rich, responsive display and editor user interfaces with a clean underlying data model. Knockout helps implementing sections of UI that update dynamically (e.g. changes depending on user’s actions or when external data source gets updated) more simply and maintainably.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/KNOCKOUT.md','#OTHER')
,('557ec6ef-7ecc-4b4a-a9ae-56cf1c67d3b1','Memoize','an optimization used to speed up consecutive function calls by caching the result of calls with identical input','

# Memoize

An optimization used to speed up consecutive function calls by caching the result of calls with identical input.

Here is an example of a memoizer function, taken from the book **JavaScript The Good Parts** by Douglas Crockford,
that caches the results from a fibonacci number generator function:

```js
var memoizer = function (memo, formula) {
  var recur = function (n) {
    var result = memo[n];
      if (typeof result !== ''number'') {
        result = formula(recur, n);
        memo[n] = result;
      }
      return result;
  };
  return recur;
};

var fibonacci = memoizer([0, 1], function (recur, n) {
  return recur(n − 1) + recur(n − 2);
});
```

## References

* [Faster JavaScript Memoization For Improved Application Performance](https://addyosmani.com/blog/faster-javascript-memoization/), by Addy Osmani.
* [Implementing Memoization in JavaScript](http://www.sitepoint.com/implementing-memoization-in-javascript/)
* [Wikipedia article](https://en.wikipedia.org/wiki/Memoization) on Memoization.


## NPM Memoize Modules

* [mem](https://github.com/sindresorhus/mem)
* [Memoizee](https://github.com/medikoo/memoizee)
','<h1 id="memoize">Memoize</h1>
<p>An optimization used to speed up consecutive function calls by caching the result of calls with identical input.</p>
<p>Here is an example of a memoizer function, taken from the book <strong>JavaScript The Good Parts</strong> by Douglas Crockford,
that caches the results from a fibonacci number generator function:</p>
<pre><code class="lang-js">var memoizer = function (memo, formula) {
  var recur = function (n) {
    var result = memo[n];
      if (typeof result !== &#39;number&#39;) {
        result = formula(recur, n);
        memo[n] = result;
      }
      return result;
  };
  return recur;
};

var fibonacci = memoizer([0, 1], function (recur, n) {
  return recur(n − 1) + recur(n − 2);
});
</code></pre>
<h2 id="references">References</h2>
<ul>
<li><a href="https://addyosmani.com/blog/faster-javascript-memoization/">Faster JavaScript Memoization For Improved Application Performance</a>, by Addy Osmani.</li>
<li><a href="http://www.sitepoint.com/implementing-memoization-in-javascript/">Implementing Memoization in JavaScript</a></li>
<li><a href="https://en.wikipedia.org/wiki/Memoization">Wikipedia article</a> on Memoization.</li>
</ul>
<h2 id="npm-memoize-modules">NPM Memoize Modules</h2>
<ul>
<li><a href="https://github.com/sindresorhus/mem">mem</a></li>
<li><a href="https://github.com/medikoo/memoizee">Memoizee</a></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/MEMOIZE.md','#OTHER')
,('0e02ad7a-4481-4dc6-b003-6247dfde755a','MEAN','the technology stack MongoDB, ExpressJS, AngularJS, and Node.js (MEAN)','

# MEAN

[MEAN](https://en.wikipedia.org/wiki/MEAN_(software_bundle)) is a software technology stack based on JavaScript for building web sites and web applications, and comprised of the following components: [MongoDB](/_glossary/MONGODB.md), [ExpressJS](/_glossary/EXPRESS.md), [Node.js](/_glossary/NODEJS.md), and [AngularJS](/_glossary/ANGULARJS.md).

## Notable MEAN frameworks

* [MEAN.JS](http://meanjs.org) MEAN.JS - Full-Stack JavaScript Using MongoDB, Express, AngularJS, and Node.js From Creators of MEAN.IO.
* [MEAN.io](http://mean.io/) MEAN is an opinionated full-stack javascript framework - which simplifies and accelerates web application development.
','<h1 id="mean">MEAN</h1>
<p><a href="https://en.wikipedia.org/wiki/MEAN_(software_bundle">MEAN</a>) is a software technology stack based on JavaScript for building web sites and web applications, and comprised of the following components: <a href="/_glossary/MONGODB.md">MongoDB</a>, <a href="/_glossary/EXPRESS.md">ExpressJS</a>, <a href="/_glossary/NODEJS.md">Node.js</a>, and <a href="/_glossary/ANGULARJS.md">AngularJS</a>.</p>
<h2 id="notable-mean-frameworks">Notable MEAN frameworks</h2>
<ul>
<li><a href="http://meanjs.org">MEAN.JS</a> MEAN.JS - Full-Stack JavaScript Using MongoDB, Express, AngularJS, and Node.js From Creators of MEAN.IO.</li>
<li><a href="http://mean.io/">MEAN.io</a> MEAN is an opinionated full-stack javascript framework - which simplifies and accelerates web application development.</li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/MEAN.md','#OTHER')
,('f99e0553-3639-4121-841d-10c187b21fb2','Modernizr','a browser feature detection library, useful to modify page styles when a feature is not available in the browser','

# Modernizr

[Modernizr](https://modernizr.com/) is a feature detection library to determine which HTML/CSS features are available in the user’s browser.

It is done by injecting specific classes on the document’s root element, so that the designer or the developer can treat the page differently should a feature not be available in the browser.

For instance, if the browser does not support *CSS gradients*, Modernizr will add the class `no-cssgradients` to the document’s root element. That way, it is possible to create a rule that will set a regular background for non-supported browsers, like so:

```css
.no-cssgradients .my-element {
  background-color: red;
}
```

Another example is if the user has disabled JavaScript on the page, then Modernizr will inject a `no-js` style on the page. The design of the page can then be adapted based on the lack of JavaScript given how certain features are likely to be unavailable.
','<h1 id="modernizr">Modernizr</h1>
<p><a href="https://modernizr.com/">Modernizr</a> is a feature detection library to determine which HTML/CSS features are available in the user’s browser.</p>
<p>It is done by injecting specific classes on the document’s root element, so that the designer or the developer can treat the page differently should a feature not be available in the browser.</p>
<p>For instance, if the browser does not support <em>CSS gradients</em>, Modernizr will add the class <code>no-cssgradients</code> to the document’s root element. That way, it is possible to create a rule that will set a regular background for non-supported browsers, like so:</p>
<pre><code class="lang-css">.no-cssgradients .my-element {
  background-color: red;
}
</code></pre>
<p>Another example is if the user has disabled JavaScript on the page, then Modernizr will inject a <code>no-js</code> style on the page. The design of the page can then be adapted based on the lack of JavaScript given how certain features are likely to be unavailable.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/MODERNIZR.md','#OTHER')
,('d06cc432-fcf1-4183-b9d4-fac99570180b','Q','a library to create and manage promises','

# Q

[Q](http://documentup.com/kriskowal/q/) is a [promise](/_glossary/PROMISE.md) library providing many more utilities than the native Promise implementation.

List of features:

- Deferred values (old school): `Q.defer`
- Multiple promises handling: `Q.all, Q.any, Q.spread`
- Promise creation, resolve and reject: `Q(value), Q.when(value), Q.reject(value)`
- Convert properties to promises: `Q.get, Q.set`
- Convert functions to promises: `Q.fcall, Q.invoke`
- Convert node-based callbacks to promises: `Q.nfcall, Q.ninvoke`
- Convert timeout functions: `Q.timeout`
- Support notify functions
- Support chaining and tapping

Real world example from a [Node.js](/_glossary/NODEJS.md) application:

```js
// Traditional implementation
function authenticate (req, res, next) {
  User.findOne({ id: req.id }, function (err, user) {
    if (err) {
      return next(''not found'');
    }

    user.save(function (err, response) {
      // ...
    });
  });
}

// Q Based
function authenticate(req, res, next) {
  return Q(req.id)
    .then(function (id) {
       return Q.nfcall(User, ''findOne'', id);
    })
    .then(function (user) {
       return Q.ninvoke(user, ''save'');
    })
    .then(function (saved) {
       return res.send(201);
    })
    .catch(function (err) {
      return next(err);
    });
}
```
','<h1 id="q">Q</h1>
<p><a href="http://documentup.com/kriskowal/q/">Q</a> is a <a href="/_glossary/PROMISE.md">promise</a> library providing many more utilities than the native Promise implementation.</p>
<p>List of features:</p>
<ul>
<li>Deferred values (old school): <code>Q.defer</code></li>
<li>Multiple promises handling: <code>Q.all, Q.any, Q.spread</code></li>
<li>Promise creation, resolve and reject: <code>Q(value), Q.when(value), Q.reject(value)</code></li>
<li>Convert properties to promises: <code>Q.get, Q.set</code></li>
<li>Convert functions to promises: <code>Q.fcall, Q.invoke</code></li>
<li>Convert node-based callbacks to promises: <code>Q.nfcall, Q.ninvoke</code></li>
<li>Convert timeout functions: <code>Q.timeout</code></li>
<li>Support notify functions</li>
<li>Support chaining and tapping</li>
</ul>
<p>Real world example from a <a href="/_glossary/NODEJS.md">Node.js</a> application:</p>
<pre><code class="lang-js">// Traditional implementation
function authenticate (req, res, next) {
  User.findOne({ id: req.id }, function (err, user) {
    if (err) {
      return next(&#39;not found&#39;);
    }

    user.save(function (err, response) {
      // ...
    });
  });
}

// Q Based
function authenticate(req, res, next) {
  return Q(req.id)
    .then(function (id) {
       return Q.nfcall(User, &#39;findOne&#39;, id);
    })
    .then(function (user) {
       return Q.ninvoke(user, &#39;save&#39;);
    })
    .then(function (saved) {
       return res.send(201);
    })
    .catch(function (err) {
      return next(err);
    });
}
</code></pre>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/Q.md','#JS')
,('77896f8a-5f33-428f-94cb-ac5784cfb185','Moment.js','a library to parse, validate, manipulate and display dates','

# Moment.js

[Moment.js](http://momentjs.com/) is a library that helps developing with dates. It supports manipulation of dates, parsing or validate dates, for example based on user inputs, and display dates in certain formats. The localization allows you to display or parse user friendly dates based on a locale and will also translated months etc.
Moment.js can also handle durations, queries (like checking if a date is before another date) or custom extensions.

[Moment Timezone](http://momentjs.com/timezone/) is a extension of Moment.js which supports to work with different timezones on dates. It can show a specific time in different timezones.
','<h1 id="moment-js">Moment.js</h1>
<p><a href="http://momentjs.com/">Moment.js</a> is a library that helps developing with dates. It supports manipulation of dates, parsing or validate dates, for example based on user inputs, and display dates in certain formats. The localization allows you to display or parse user friendly dates based on a locale and will also translated months etc.
Moment.js can also handle durations, queries (like checking if a date is before another date) or custom extensions.</p>
<p><a href="http://momentjs.com/timezone/">Moment Timezone</a> is a extension of Moment.js which supports to work with different timezones on dates. It can show a specific time in different timezones.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/MOMENTJS.md','#JS')
;
INSERT INTO articles.articles (id,"name",description,markdown,html,url,tag) VALUES 
('11a59355-817e-4500-94a4-60566b99cd7b','Ramda','a practical functional library for JavaScript programmers','

# Ramda

[Ramda](http://ramdajs.com) is a library designed specifically for a functional programming style, one that makes it easy to create functional pipelines, one that never mutates user data.

* Ramda emphasizes a purer functional style. Immutability and side-effect free functions are at the heart of its design philosophy. This can help you get the job done with simple, elegant code.
* Ramda functions are automatically [curried](/_glossary/CURRYING.md). This allows you to easily build up new functions from old ones simply by not supplying the final parameters.
* The parameters to Ramda functions are arranged to make it convenient for currying. The data to be operated on is generally supplied last.

Ramda makes it very easy to build functions as sequences of simpler functions, each of which transforms the data and passes it along to the next.
','<h1 id="ramda">Ramda</h1>
<p><a href="http://ramdajs.com">Ramda</a> is a library designed specifically for a functional programming style, one that makes it easy to create functional pipelines, one that never mutates user data.</p>
<ul>
<li>Ramda emphasizes a purer functional style. Immutability and side-effect free functions are at the heart of its design philosophy. This can help you get the job done with simple, elegant code.</li>
<li>Ramda functions are automatically <a href="/_glossary/CURRYING.md">curried</a>. This allows you to easily build up new functions from old ones simply by not supplying the final parameters.</li>
<li>The parameters to Ramda functions are arranged to make it convenient for currying. The data to be operated on is generally supplied last.</li>
</ul>
<p>Ramda makes it very easy to build functions as sequences of simpler functions, each of which transforms the data and passes it along to the next.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/RAMDA.md','#JS')
,('c105bb7d-c466-4da0-94aa-8a2664b32fa1','Nightmare','a high-level browser automation library','

# Nightmare

[Nightmare](http://nightmarejs.org/) is a high-level browser automation library.

The goal is to expose just a few simple methods, and have an API that feels synchronous for each block of scripting, rather than deeply nested callbacks. It is designed for automating tasks across sites that do not have APIs.

Under the cover, it uses [Electron](http://electron.atom.io/), which is similar to [PhantomJS](/_glossary/PHANTOMJS.md) but faster and more modern.
','<h1 id="nightmare">Nightmare</h1>
<p><a href="http://nightmarejs.org/">Nightmare</a> is a high-level browser automation library.</p>
<p>The goal is to expose just a few simple methods, and have an API that feels synchronous for each block of scripting, rather than deeply nested callbacks. It is designed for automating tasks across sites that do not have APIs.</p>
<p>Under the cover, it uses <a href="http://electron.atom.io/">Electron</a>, which is similar to <a href="/_glossary/PHANTOMJS.md">PhantomJS</a> but faster and more modern.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/NIGHTMARE.md','#JS')
,('f00985dc-a316-4f56-bbb1-bfe4e5879ccc','React','a library developed and used at Facebook for building user interfaces','

# React

[React](https://facebook.github.io/react/) is a library developed and used at Facebook for building user interfaces. It can be seen as the V in MVC as it makes no assumptions about the rest of the technology stack. Using [React Native](#react-native) it can even be used to power native apps.

In React you can write HTML directly in JS using an XML-like syntax called [JSX](/_glossary/JSX.md). JSX compiles to JS and is optional, but does make the code more expressive.

Data flow in React is one-way which makes it easier to reason about and avoid mistakes. This quality can be enhanced using [Flux](/_glossary/FLUX.md), Facebook’s complementary application architecture, or [Redux](/_glossary/REDUX.md) which many people see as a “better Flux”.

# React Native

[React Native](https://facebook.github.io/react-native/) section to be completed.
','<h1 id="react">React</h1>
<p><a href="https://facebook.github.io/react/">React</a> is a library developed and used at Facebook for building user interfaces. It can be seen as the V in MVC as it makes no assumptions about the rest of the technology stack. Using <a href="#react-native">React Native</a> it can even be used to power native apps.</p>
<p>In React you can write HTML directly in JS using an XML-like syntax called <a href="/_glossary/JSX.md">JSX</a>. JSX compiles to JS and is optional, but does make the code more expressive.</p>
<p>Data flow in React is one-way which makes it easier to reason about and avoid mistakes. This quality can be enhanced using <a href="/_glossary/FLUX.md">Flux</a>, Facebook’s complementary application architecture, or <a href="/_glossary/REDUX.md">Redux</a> which many people see as a “better Flux”.</p>
<h1 id="react-native">React Native</h1>
<p><a href="https://facebook.github.io/react-native/">React Native</a> section to be completed.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/REACT.md','#JS')
,('9a80ae3b-e951-489a-ad9b-e4c2b5a4ee36','PhantomJS','a scripted, headless browser used for automating web page interaction','

# PhantomJS

[PhantomJS](http://phantomjs.org/) is a headless WebKit scriptable with a JavaScript API. It has **fast** and **native** support for various web standards: DOM handling, CSS selectors, JSON, Canvas, and SVG.

## Use Cases

- **Headless web testing**. Lightning-fast testing without the browser is now possible! Various [test frameworks](http://phantomjs.org/headless-testing.html) such as [Jasmine](/_glossary/JASMINE.md), Capybara, [QUnit](/_glossary/QUNIT.md), [Mocha](/_glossary/MOCHA.md), WebDriver, YUI Test, BusterJS, FuncUnit, Robot Framework, and many others are supported.
- **Page automation.** [Access and manipulate](http://phantomjs.org/page-automation.html) web pages with the standard DOM API, or with usual libraries like [jQuery](/_glossary/JQUERY.md).
- **Screen capture.** Programmatically [capture web contents](http://phantomjs.org/screen-capture.html), including CSS, SVG and Canvas. Build server-side web graphics apps, from a screenshot service to a vector chart rasterizer.
- **Network monitoring.** Automate performance analysis, track [page loading](http://phantomjs.org/network-monitoring.html) and export as standard HAR format.

## Features

- **Multiplatform**, available on major operating systems: Windows, Mac OS X, Linux, and other Unices.
- **Fast and native implementation** of web standards: DOM, CSS, JavaScript, Canvas, and SVG. No emulation!
- **Pure headless (no X11) on Linux**, ideal for continuous integration systems. Also runs on Amazon EC2, Heroku, and Iron.io.
- **Easy to install**: [Download](http://phantomjs.org/download.html), unpack, and start having fun in just 5 minutes.

## PhantomJS usage

The PhantomJS JavaScript API can be used to open web pages, take screenshots, execute user actions, and run injected JavaScript in the page context. For example, the following code will open Wikipedia and, upon loading, will save a screenshot to a file and exit.

```js
console.log(''Loading a web page'');
var page = require(''webpage'').create();
var url = ''http://en.wikipedia.org/'';

page.open(url, function (status) {
  console.log(''Page loaded'');
  page.render(''wikipedia.org.png'');
  phantom.exit();
});
```

---

**PhantomJS** is created and maintained by [Ariya Hidayat](http://ariya.ofilabs.com/about) (Twitter: [@ariyahidayat](http://twitter.com/ariyahidayat)), with the help of [many contributors](https://github.com/ariya/phantomjs/contributors). Follow the official Twitter stream [@PhantomJS](http://twitter.com/PhantomJS) to get the frequent development updates.
','<h1 id="phantomjs">PhantomJS</h1>
<p><a href="http://phantomjs.org/">PhantomJS</a> is a headless WebKit scriptable with a JavaScript API. It has <strong>fast</strong> and <strong>native</strong> support for various web standards: DOM handling, CSS selectors, JSON, Canvas, and SVG.</p>
<h2 id="use-cases">Use Cases</h2>
<ul>
<li><strong>Headless web testing</strong>. Lightning-fast testing without the browser is now possible! Various <a href="http://phantomjs.org/headless-testing.html">test frameworks</a> such as <a href="/_glossary/JASMINE.md">Jasmine</a>, Capybara, <a href="/_glossary/QUNIT.md">QUnit</a>, <a href="/_glossary/MOCHA.md">Mocha</a>, WebDriver, YUI Test, BusterJS, FuncUnit, Robot Framework, and many others are supported.</li>
<li><strong>Page automation.</strong> <a href="http://phantomjs.org/page-automation.html">Access and manipulate</a> web pages with the standard DOM API, or with usual libraries like <a href="/_glossary/JQUERY.md">jQuery</a>.</li>
<li><strong>Screen capture.</strong> Programmatically <a href="http://phantomjs.org/screen-capture.html">capture web contents</a>, including CSS, SVG and Canvas. Build server-side web graphics apps, from a screenshot service to a vector chart rasterizer.</li>
<li><strong>Network monitoring.</strong> Automate performance analysis, track <a href="http://phantomjs.org/network-monitoring.html">page loading</a> and export as standard HAR format.</li>
</ul>
<h2 id="features">Features</h2>
<ul>
<li><strong>Multiplatform</strong>, available on major operating systems: Windows, Mac OS X, Linux, and other Unices.</li>
<li><strong>Fast and native implementation</strong> of web standards: DOM, CSS, JavaScript, Canvas, and SVG. No emulation!</li>
<li><strong>Pure headless (no X11) on Linux</strong>, ideal for continuous integration systems. Also runs on Amazon EC2, Heroku, and Iron.io.</li>
<li><strong>Easy to install</strong>: <a href="http://phantomjs.org/download.html">Download</a>, unpack, and start having fun in just 5 minutes.</li>
</ul>
<h2 id="phantomjs-usage">PhantomJS usage</h2>
<p>The PhantomJS JavaScript API can be used to open web pages, take screenshots, execute user actions, and run injected JavaScript in the page context. For example, the following code will open Wikipedia and, upon loading, will save a screenshot to a file and exit.</p>
<pre><code class="lang-js">console.log(&#39;Loading a web page&#39;);
var page = require(&#39;webpage&#39;).create();
var url = &#39;http://en.wikipedia.org/&#39;;

page.open(url, function (status) {
  console.log(&#39;Page loaded&#39;);
  page.render(&#39;wikipedia.org.png&#39;);
  phantom.exit();
});
</code></pre>
<hr>
<p><strong>PhantomJS</strong> is created and maintained by <a href="http://ariya.ofilabs.com/about">Ariya Hidayat</a> (Twitter: <a href="http://twitter.com/ariyahidayat">@ariyahidayat</a>), with the help of <a href="https://github.com/ariya/phantomjs/contributors">many contributors</a>. Follow the official Twitter stream <a href="http://twitter.com/PhantomJS">@PhantomJS</a> to get the frequent development updates.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/PHANTOMJS.md','#JS')
,('28843d79-e96d-46f8-b9e0-5d3723933d3c','Redux','a predictable state container for apps','

# Redux

[Redux](http://redux.js.org/) is a predictable state container for JavaScript apps, which is a fancy way of saying it controls application state and state mutations. It does so by keeping state in a store, which is the single source of truth.

Redux is an alternative to [Flux](/_glossary/FLUX.md) and used a lot together with [React](/_glossary/REACT.md), but you can use it with any other view library.
','<h1 id="redux">Redux</h1>
<p><a href="http://redux.js.org/">Redux</a> is a predictable state container for JavaScript apps, which is a fancy way of saying it controls application state and state mutations. It does so by keeping state in a store, which is the single source of truth.</p>
<p>Redux is an alternative to <a href="/_glossary/FLUX.md">Flux</a> and used a lot together with <a href="/_glossary/REACT.md">React</a>, but you can use it with any other view library.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/REDUX.md','#OTHER')
,('6130985f-790d-4aca-80a9-5562e8dab0a3','Broccoli','a fast and reliable asset pipeline','

# Broccoli

[Broccoli](https://github.com/broccolijs/broccoli) is a fast, reliable asset pipeline, supporting constant-time rebuilds and compact build definitions. Comparable to the [Rails](http://rubyonrails.org/) asset pipeline in scope, though it runs on [Node.js](/_glossary/NODEJS.md) and is backend-agnostic.
','<h1 id="broccoli">Broccoli</h1>
<p><a href="https://github.com/broccolijs/broccoli">Broccoli</a> is a fast, reliable asset pipeline, supporting constant-time rebuilds and compact build definitions. Comparable to the <a href="http://rubyonrails.org/">Rails</a> asset pipeline in scope, though it runs on <a href="/_glossary/NODEJS.md">Node.js</a> and is backend-agnostic.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/BROCCOLI.md','#PIPELINE')
,('154f3d04-b188-4362-911b-a2394f3cf911','DOM','a platform- and language-neutral interface that allow programs and scripts to dynamically access and update the content, structure and style of documents','

# DOM

[DOM](http://www.w3.org/DOM/) (for Document Object Model) is a platform- and language-neutral interface that will allow programs and scripts to dynamically access and update the content, structure and style of documents. The document can be further processed and the results of that processing can be incorporated back into the presented page. This is an overview of DOM-related materials here at W3C and around the web.
','<h1 id="dom">DOM</h1>
<p><a href="http://www.w3.org/DOM/">DOM</a> (for Document Object Model) is a platform- and language-neutral interface that will allow programs and scripts to dynamically access and update the content, structure and style of documents. The document can be further processed and the results of that processing can be incorporated back into the presented page. This is an overview of DOM-related materials here at W3C and around the web.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/DOM.md','#HTML')
,('bc2e8d9a-80a0-42cd-af04-f200fc10cec1','Canvas','an HTML element for graphic applications in 2D or 3D','

# Canvas

The [Canvas HTML-Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/canvas) allows access to individual pixels to enable fast drawing applications.

Its API gives access to [WebGL](/_glossary/WEBGL.md) for 3D graphics and to the [2D drawing API](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D).
','<h1 id="canvas">Canvas</h1>
<p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/canvas">Canvas HTML-Element</a> allows access to individual pixels to enable fast drawing applications.</p>
<p>Its API gives access to <a href="/_glossary/WEBGL.md">WebGL</a> for 3D graphics and to the <a href="https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D">2D drawing API</a>.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/CANVAS.md','#HTML')
,('70b7feef-fc52-4755-ad34-5a55a97d38d3','Ionic','a HTML5 mobile framework to build beautiful hybrid native mobile applications using AngularJS and Cordova','

# Ionic

[Ionic](http://ionicframework.com/) is a HTML5 mobile framework to build beautiful hybrid native mobile applications using AngularJS and Cordova. It comes accompanied with a powerful CLI to create, build, test and deploy your applications into any platform. The framework also offers live reloading features to apply live changes to the application. 

With the advent of Angular 2, the Ionic team have started working on [Ionic 2](http://ionic.io/2), which is a complete rewrite of Ionic.
','<h1 id="ionic">Ionic</h1>
<p><a href="http://ionicframework.com/">Ionic</a> is a HTML5 mobile framework to build beautiful hybrid native mobile applications using AngularJS and Cordova. It comes accompanied with a powerful CLI to create, build, test and deploy your applications into any platform. The framework also offers live reloading features to apply live changes to the application. </p>
<p>With the advent of Angular 2, the Ionic team have started working on <a href="http://ionic.io/2">Ionic 2</a>, which is a complete rewrite of Ionic.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/IONIC.md','#JS')
,('2b899021-e257-4c66-a5fa-b2715dc030b0','JSPM','like npm with its own build system and multiple resources management','

# JSPM

[JSPM](http://jspm.io/) is a package manager coupled with its own build system. Thus, any kind of module can be loaded (e.g ES6, AMD, CommonJS) within the current installed modules. Those modules can be loaded from [npm](/_glossary/npm.md), as well as Github, Bitbucket or Bower. JSPM creates its own dependencies folder in the project directory, called `jspm_packages`, instead of the regular `node_modules` folder.

## Usage

- `npm install -g jspm`: Install the JSPM CLI.
- `jspm init`: Initialize the current project with JSPM.
- `jspm install lodash`: Install packages, just like NPM.
- `jspm install github:lodash/lodash@4.6.1`: Install the specified. version from Github.
- `jspm bundle app/main --inject`: Bundle the app, just like [Browserify](http://browserify.org/).

See the [JSPM documentation](http://jspm.io/docs/) for further details.
','<h1 id="jspm">JSPM</h1>
<p><a href="http://jspm.io/">JSPM</a> is a package manager coupled with its own build system. Thus, any kind of module can be loaded (e.g ES6, AMD, CommonJS) within the current installed modules. Those modules can be loaded from <a href="/_glossary/npm.md">npm</a>, as well as Github, Bitbucket or Bower. JSPM creates its own dependencies folder in the project directory, called <code>jspm_packages</code>, instead of the regular <code>node_modules</code> folder.</p>
<h2 id="usage">Usage</h2>
<ul>
<li><code>npm install -g jspm</code>: Install the JSPM CLI.</li>
<li><code>jspm init</code>: Initialize the current project with JSPM.</li>
<li><code>jspm install lodash</code>: Install packages, just like NPM.</li>
<li><code>jspm install github:lodash/lodash@4.6.1</code>: Install the specified. version from Github.</li>
<li><code>jspm bundle app/main --inject</code>: Bundle the app, just like <a href="http://browserify.org/">Browserify</a>.</li>
</ul>
<p>See the <a href="http://jspm.io/docs/">JSPM documentation</a> for further details.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/JSPM.md','#JS')
;
INSERT INTO articles.articles (id,"name",description,markdown,html,url,tag) VALUES 
('eaf8ca4c-34b9-4dae-8f28-4f339e2cc2d3','Factory Pattern','a creational pattern that uses factory methods to deal with the problem of creating objects without having to specify the exact class of the object that will be created','

# Factory Pattern

In class-based programming, the **factory method pattern** is a creational pattern that uses factory methods to deal with the problem of creating objects without having to specify the exact class of the object that will be created. This is done by creating objects by calling a factory method—either specified in an interface and implemented by child classes, or implemented in a base class and optionally overridden by derived classes—rather than by calling a constructor.

## Definition

> Define an interface for creating an object, but let subclasses decide which class to instantiate. The Factory method lets a class defer instantiation it uses to subclasses.
> — [Gang Of Four](https://en.wikipedia.org/wiki/Gang_of_Four_(software))

Creating an object often requires complex processes not appropriate to include within a composing object. The object’s creation may lead to a significant duplication of code, may require information not accessible to the composing object, may not provide a sufficient level of abstraction, or may otherwise not be part of the composing object’s concerns. The factory method design pattern handles these problems by defining a separate method for creating the objects, which subclasses can then override to specify the derived type of product that will be created.

The factory method pattern may rely on inheritance, as object creation is delegated to subclasses that implement the factory method to create objects.

## Structure

![Factory Method Pattern](https://upload.wikimedia.org/wikipedia/ru/f/f0/FactoryMethodPattern.png)

- **Product**
 - it defines the interface of objects created by the abstract;
- **ConcreteProduct**
 - implements the `Product`;
- **Creator**
 - Ii declares the factory method that returns an object of type `Product`. It may also include the implementation of this method as “*default*”;
 - it can cause a factory method to create an object of type `Product`;
- **ConcreteCreator**
 - it overrides the factory method so that he created and returns an object of class `ConcreteProduct`.

## Example

```js
class Product() {
  getName() {
    return null;
  }
}

class ConcreteProductA extends Product {
  getName() {
    return ''ConcreteProductA'';
  }
}

class ConcreteProductB extends Product {
  getName() {
    return ''ConcreteProductB'';
  }
}

class Creator() {
  factoryMethod() {
    return null;
  }
}

class ConcreteCreatorA extends Creator {
  factoryMethod() {
    return new ConcreteProductA();
  }
}

class ConcreteCreatorB extends Creator {
  factoryMethod() {
    return new ConcreteProductB();
  }
}

// An array of creators
let creators = [new ConcreteCreatorA(), new ConcreteCreatorB()];

// Iterate over creators and create products
for (let i = 0; i < creators.length; i++) {
  let product = creators[i].factoryMethod();
  console.log(product.getName());
}
```

*Source: [Factory method pattern](https://en.wikipedia.org/wiki/Factory_method_pattern). Wikipedia®*
','<h1 id="factory-pattern">Factory Pattern</h1>
<p>In class-based programming, the <strong>factory method pattern</strong> is a creational pattern that uses factory methods to deal with the problem of creating objects without having to specify the exact class of the object that will be created. This is done by creating objects by calling a factory method—either specified in an interface and implemented by child classes, or implemented in a base class and optionally overridden by derived classes—rather than by calling a constructor.</p>
<h2 id="definition">Definition</h2>
<blockquote>
<p>Define an interface for creating an object, but let subclasses decide which class to instantiate. The Factory method lets a class defer instantiation it uses to subclasses.
— <a href="https://en.wikipedia.org/wiki/Gang_of_Four_(software">Gang Of Four</a>)</p>
</blockquote>
<p>Creating an object often requires complex processes not appropriate to include within a composing object. The object’s creation may lead to a significant duplication of code, may require information not accessible to the composing object, may not provide a sufficient level of abstraction, or may otherwise not be part of the composing object’s concerns. The factory method design pattern handles these problems by defining a separate method for creating the objects, which subclasses can then override to specify the derived type of product that will be created.</p>
<p>The factory method pattern may rely on inheritance, as object creation is delegated to subclasses that implement the factory method to create objects.</p>
<h2 id="structure">Structure</h2>
<p><img src="https://upload.wikimedia.org/wikipedia/ru/f/f0/FactoryMethodPattern.png" alt="Factory Method Pattern"></p>
<ul>
<li><strong>Product</strong><ul>
<li>it defines the interface of objects created by the abstract;</li>
</ul>
</li>
<li><strong>ConcreteProduct</strong><ul>
<li>implements the <code>Product</code>;</li>
</ul>
</li>
<li><strong>Creator</strong><ul>
<li>Ii declares the factory method that returns an object of type <code>Product</code>. It may also include the implementation of this method as “<em>default</em>”;</li>
<li>it can cause a factory method to create an object of type <code>Product</code>;</li>
</ul>
</li>
<li><strong>ConcreteCreator</strong><ul>
<li>it overrides the factory method so that he created and returns an object of class <code>ConcreteProduct</code>.</li>
</ul>
</li>
</ul>
<h2 id="example">Example</h2>
<pre><code class="lang-js">class Product() {
  getName() {
    return null;
  }
}

class ConcreteProductA extends Product {
  getName() {
    return &#39;ConcreteProductA&#39;;
  }
}

class ConcreteProductB extends Product {
  getName() {
    return &#39;ConcreteProductB&#39;;
  }
}

class Creator() {
  factoryMethod() {
    return null;
  }
}

class ConcreteCreatorA extends Creator {
  factoryMethod() {
    return new ConcreteProductA();
  }
}

class ConcreteCreatorB extends Creator {
  factoryMethod() {
    return new ConcreteProductB();
  }
}

// An array of creators
let creators = [new ConcreteCreatorA(), new ConcreteCreatorB()];

// Iterate over creators and create products
for (let i = 0; i &lt; creators.length; i++) {
  let product = creators[i].factoryMethod();
  console.log(product.getName());
}
</code></pre>
<p><em>Source: <a href="https://en.wikipedia.org/wiki/Factory_method_pattern">Factory method pattern</a>. Wikipedia®</em></p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/FACTORY_PATTERN.md','#JS')
,('7a78c7f6-b8c3-4c69-a822-ee88a08689d8','IIFE','a function that gets called immediately after declaration','

# IIFE

IIFE (for *Immediately Invoked Function Expression*) is a function that gets called immediately after declaration. It is most often used to create a scoping context (a context in which all variables and function definitions are scoped).

An IIFE can be written with the calling brackets (`()`) inside of the wrapping brackets:

```js
(function foo () {
  // [body]
}());
```

Or with the calling brackets on the outside:

```js
(function foo () {
  // [body]
})();
```

The examples above are both named IIFE’s (`foo`) but it is also quite common to write them anonymously (without a function name).
','<h1 id="iife">IIFE</h1>
<p>IIFE (for <em>Immediately Invoked Function Expression</em>) is a function that gets called immediately after declaration. It is most often used to create a scoping context (a context in which all variables and function definitions are scoped).</p>
<p>An IIFE can be written with the calling brackets (<code>()</code>) inside of the wrapping brackets:</p>
<pre><code class="lang-js">(function foo () {
  // [body]
}());
</code></pre>
<p>Or with the calling brackets on the outside:</p>
<pre><code class="lang-js">(function foo () {
  // [body]
})();
</code></pre>
<p>The examples above are both named IIFE’s (<code>foo</code>) but it is also quite common to write them anonymously (without a function name).</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/IIFE.md','#JS')
,('b9d52163-c531-4511-8765-9b62fd921604','JSON','a lightweight data-interchange format','

# JSON

[JSON (JavaScript Object Notation)](http://www.json.org/) is a lightweight data-interchange format. It is widely used in [RESTful](https://en.wikipedia.org/wiki/Representational_state_transfer) web services. It is both easy for humans to read and write and for machines to parse and generate.
','<h1 id="json">JSON</h1>
<p><a href="http://www.json.org/">JSON (JavaScript Object Notation)</a> is a lightweight data-interchange format. It is widely used in <a href="https://en.wikipedia.org/wiki/Representational_state_transfer">RESTful</a> web services. It is both easy for humans to read and write and for machines to parse and generate.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/JSON.md','#JS')
,('794a5b82-14de-495d-a379-9974af11deec','Meteor','a JavaScript web framework that allows rapid prototypic web development','

# Meteor

[Meteor](https://www.meteor.com/) Meteor is JavaScript framework written using [Node.js](/_glossary/NODEJS.md). It integrates with [MongoDB](/_glossary/MONGODB.md) and uses the Distributed Data Protocol and a publish–subscribe pattern to enable automatic synching of data changes to clients without requiring the developer to write any synchronization code. 
','<h1 id="meteor">Meteor</h1>
<p><a href="https://www.meteor.com/">Meteor</a> Meteor is JavaScript framework written using <a href="/_glossary/NODEJS.md">Node.js</a>. It integrates with <a href="/_glossary/MONGODB.md">MongoDB</a> and uses the Distributed Data Protocol and a publish–subscribe pattern to enable automatic synching of data changes to clients without requiring the developer to write any synchronization code. </p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/METEOR.md','#JS')
,('6e112ad9-7874-4d28-9de0-064534af7008','npm','a utility to help publishing packages to, and installing from, an npm repository','

# npm

[npm](https://www.npmjs.com/) is a utility to help publishing packages to, and installing from, an npm repository. The repository npmjs.com is the best known, and contains many useful community written and tested packages.
','<h1 id="npm">npm</h1>
<p><a href="https://www.npmjs.com/">npm</a> is a utility to help publishing packages to, and installing from, an npm repository. The repository npmjs.com is the best known, and contains many useful community written and tested packages.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/NPM.md','#JS')
,('79f3c20f-fa11-462e-8924-6c5ca62df83f','D3.js','a library for manipulating documents based on data','

# D3.js

[D3.js](http://d3js.org/) is a library for manipulating documents based on data. D3 helps bringing data to life using HTML, SVG, and CSS. Its emphasis on web standards gives the full capabilities of modern browsers without tying to a proprietary framework, combining powerful visualization components and a data-driven approach to [DOM](/_glossary/DOM.md) manipulation.
','<h1 id="d3-js">D3.js</h1>
<p><a href="http://d3js.org/">D3.js</a> is a library for manipulating documents based on data. D3 helps bringing data to life using HTML, SVG, and CSS. Its emphasis on web standards gives the full capabilities of modern browsers without tying to a proprietary framework, combining powerful visualization components and a data-driven approach to <a href="/_glossary/DOM.md">DOM</a> manipulation.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/D3JS.md','#JS')
,('4d227250-350d-4d7b-ad1d-13734cca42fb','Ext JS','a pure JavaScript application framework for building interactive cross platform web applications','

# Ext JS

The most comprehensive JavaScript framework for building feature-rich cross-platform web applications targeting desktop, tablets, and smartphones. **Ext JS** leverages HTML5 features on modern browsers while maintaining compatibility and functionality for legacy browsers.

## Create feature-rich HTML5 applications using JavaScript

[Sencha Ext JS](https://www.sencha.com/products/extjs/) is the most comprehensive MVC/MVVM JavaScript framework for building feature-rich cross-platform web applications targeting desktops, tablets, and smartphones. Ext JS leverages HTML5 features on modern browsers while maintaining compatibility and functionality for legacy browsers.

Ext JS features hundreds of high-performance UI widgets that are meticulously designed to fit the needs of the simplest as well as the most complex web applications. Ext JS templates and layout manager give you full control over your display irrespective of devices and screen sizes. An advanced charting package allows you to visualize large quantities of data. The framework includes a robust data package that can consume data from any backend data source. Ext JS also offers several out-of-the-box themes, and complete theming support that lets you build applications that reflect your brand. It also includes an accessibility package (ARIA) to help with Section 508 compliance.

### High-Performance Customizable UI Widgets

Sencha Ext JS provides the industry’s most comprehensive collection of high-performance, customizable UI widgets. These widgets include HTML5 grids, trees, lists, forms, menus, toolbars, panels, windows, and much more. If you don’t find a widget you are looking for, hundreds of user extensions are available from the Sencha community.

### Backend Agnostic Data Package

The robust data package included in Sencha Ext JS decouples the UI widgets from the data layer. The data package allows client-side collections of data using highly functional models that offer features such as sorting and filtering. The data package is protocol agnostic, and can consume data from any backend source. It comes with session management capabilities that allow several client-side operations, minimizing round-trips to the server.

### Layout Manager and Responsive Configs

Sencha Ext JS includes a flexible layout manager to help organize the display of data and content across multiple browsers, devices, and screen sizes. It helps you to control the display of components, even for the most complex user interfaces. Ext JS also provides a responsive config system that allows application components to adapt to specific device orientation (landscape or portrait) or available browser window size.

### Advanced Charting Package

The Sencha Ext JS charting package allows you to visually represent data with a broad range of chart types — including line, bar, and pie charts. The charts use surfaces and sprites developed with a drawing package implemented using SVG, VML, and Canvas technologies. Browser variations are handled automatically so that the charts always display correctly. Ext JS charts also support touch gestures on mobile devices, thereby providing enhanced interactive features to the charts such as pan, zoom, and pinch.

### Easily Customizable Themes

Sencha Ext JS widgets are available in multiple out-of-the-box themes such as Classic, Neptune, and Crisp. The themes are customizable to reflect a specific brand identity. Sencha Cmd exposes hundreds of variables used by Ext JS themes, which can be altered to design custom themes. A visual theme builder is also available in Sencha Architect that lets you customize the themes via a WYSIWYG editor.

### Accessibility Package (ARIA) for Section 508 compliance

Sencha Ext JS ARIA Package makes it possible to add accessibility support to your applications by providing tools that developers need to achieve Section 508 Compliance. Using the ARIA package, developers can create apps that are usable for people who need assistive technologies such as screen readers to navigate the web.

### App Templates

A variety of application templates come pre-installed to kickstart your app, instead of starting from a blank canvas. Templates are editable and completely customizable, and you can even create your own templates and reuse them for future projects.
','<h1 id="ext-js">Ext JS</h1>
<p>The most comprehensive JavaScript framework for building feature-rich cross-platform web applications targeting desktop, tablets, and smartphones. <strong>Ext JS</strong> leverages HTML5 features on modern browsers while maintaining compatibility and functionality for legacy browsers.</p>
<h2 id="create-feature-rich-html5-applications-using-javascript">Create feature-rich HTML5 applications using JavaScript</h2>
<p><a href="https://www.sencha.com/products/extjs/">Sencha Ext JS</a> is the most comprehensive MVC/MVVM JavaScript framework for building feature-rich cross-platform web applications targeting desktops, tablets, and smartphones. Ext JS leverages HTML5 features on modern browsers while maintaining compatibility and functionality for legacy browsers.</p>
<p>Ext JS features hundreds of high-performance UI widgets that are meticulously designed to fit the needs of the simplest as well as the most complex web applications. Ext JS templates and layout manager give you full control over your display irrespective of devices and screen sizes. An advanced charting package allows you to visualize large quantities of data. The framework includes a robust data package that can consume data from any backend data source. Ext JS also offers several out-of-the-box themes, and complete theming support that lets you build applications that reflect your brand. It also includes an accessibility package (ARIA) to help with Section 508 compliance.</p>
<h3 id="high-performance-customizable-ui-widgets">High-Performance Customizable UI Widgets</h3>
<p>Sencha Ext JS provides the industry’s most comprehensive collection of high-performance, customizable UI widgets. These widgets include HTML5 grids, trees, lists, forms, menus, toolbars, panels, windows, and much more. If you don’t find a widget you are looking for, hundreds of user extensions are available from the Sencha community.</p>
<h3 id="backend-agnostic-data-package">Backend Agnostic Data Package</h3>
<p>The robust data package included in Sencha Ext JS decouples the UI widgets from the data layer. The data package allows client-side collections of data using highly functional models that offer features such as sorting and filtering. The data package is protocol agnostic, and can consume data from any backend source. It comes with session management capabilities that allow several client-side operations, minimizing round-trips to the server.</p>
<h3 id="layout-manager-and-responsive-configs">Layout Manager and Responsive Configs</h3>
<p>Sencha Ext JS includes a flexible layout manager to help organize the display of data and content across multiple browsers, devices, and screen sizes. It helps you to control the display of components, even for the most complex user interfaces. Ext JS also provides a responsive config system that allows application components to adapt to specific device orientation (landscape or portrait) or available browser window size.</p>
<h3 id="advanced-charting-package">Advanced Charting Package</h3>
<p>The Sencha Ext JS charting package allows you to visually represent data with a broad range of chart types — including line, bar, and pie charts. The charts use surfaces and sprites developed with a drawing package implemented using SVG, VML, and Canvas technologies. Browser variations are handled automatically so that the charts always display correctly. Ext JS charts also support touch gestures on mobile devices, thereby providing enhanced interactive features to the charts such as pan, zoom, and pinch.</p>
<h3 id="easily-customizable-themes">Easily Customizable Themes</h3>
<p>Sencha Ext JS widgets are available in multiple out-of-the-box themes such as Classic, Neptune, and Crisp. The themes are customizable to reflect a specific brand identity. Sencha Cmd exposes hundreds of variables used by Ext JS themes, which can be altered to design custom themes. A visual theme builder is also available in Sencha Architect that lets you customize the themes via a WYSIWYG editor.</p>
<h3 id="accessibility-package-aria-for-section-508-compliance">Accessibility Package (ARIA) for Section 508 compliance</h3>
<p>Sencha Ext JS ARIA Package makes it possible to add accessibility support to your applications by providing tools that developers need to achieve Section 508 Compliance. Using the ARIA package, developers can create apps that are usable for people who need assistive technologies such as screen readers to navigate the web.</p>
<h3 id="app-templates">App Templates</h3>
<p>A variety of application templates come pre-installed to kickstart your app, instead of starting from a blank canvas. Templates are editable and completely customizable, and you can even create your own templates and reuse them for future projects.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/EXTJS.md','#JS')
,('36db092e-663f-42b9-8ac8-ca3d9fe0400e','Flow','a static type checker, designed to find type errors in JavaScript programs','

# Flow

[Flow](http://flowtype.org/) is a static type checker for JavaScript. It can be used to catch common bugs in JavaScript programs - such as silent type conversions, null dereferences and so on - often without requiring any changes to your code. It also adds type syntax to JavaScript, so that developers can express invariants about their code and have them maintained automatically.

Flow’s type checking is **opt-in**: files are not type checked unless you ask it to. This means that you can gradually convert your JavaScript codebase to Flow while reaping incremental benefits. When you do opt-in a file, Flow tries to type check the code automatically by performing type inference, reporting errors without further manual guidance. This simple workflow is usually sufficient when your codebase is broken down into small files, each defining a module that exports a well-defined interface. However, for some files (e.g., monolithic libraries), the analysis Flow performs might turn out to be too imprecise, causing lots of spurious errors to be reported. In such cases, the developer can either try to manually guide Flow with type annotations, or switch to a [weaker mode](http://flowtype.org/docs/existing.html#weak-mode) with limited type inference to reduce noise.

Flow’s type checking is **online**: it performs an initial analysis of all files in a code base, and then monitors those files for subsequent changes, type checking them and other dependencies piecemeal and proactively in the background. For the developer, this means that there are no perceptible compile-time delays; saving a bunch of files in an editor or rebasing a set of files in a repository automatically triggers type checking, storing the results in a persistent server, so that they are available instantaneously when queried.

## How does it work?

Flow designed to find type errors in JavaScript programs:

```js
/* @flow */
function foo(x) {
  return x * 10;
}

foo(''Hello, world!'');
```

```sh
$> flow

hello.js:5:5,19: string
This type is incompatible with
  hello.js:3:10,15: number
```

Flow also lets you gradually evolve JavaScript code into typed code:

```js
/* @flow */
function foo(x: string, y: number): string {
  return x.length * y;
}

foo(''Hello'', 42);
```

```sh
$> flow

hello.js:3:10,21: number
This type is incompatible with
  hello.js:2:37,42: string
```

Typed Flow code easily transforms down to regular JavaScript, so it runs anywhere.

## Why Flow?

The goal of Flow is to find errors in JavaScript code with little programmer effort. Flow relies heavily on **type inference** to find type errors even when the program has not been annotated - it precisely tracks the types of variables as they flow through the program.

At the same time, Flow is a **gradual** type system. Any parts of your program that are dynamic in nature can easily bypass the type checker, so you can mix statically typed code with dynamic code.

Flow also supports a highly **expressive** type language. Flow types can express much more fine-grained distinctions than traditional type systems. For example, Flow helps you catch errors involving null, unlike most type systems.

## Using Flow

Start with [Getting Started](http://flowtype.org/docs/getting-started.html) guide to download and try Flow yourself. Flow is open-source, so you can also start with the code on the [GitHub repo](https://github.com/facebook/flow).

----------

*Source:*

- [Flow | A static type checker for JavaScript](http://flowtype.org/)*.*
','<h1 id="flow">Flow</h1>
<p><a href="http://flowtype.org/">Flow</a> is a static type checker for JavaScript. It can be used to catch common bugs in JavaScript programs - such as silent type conversions, null dereferences and so on - often without requiring any changes to your code. It also adds type syntax to JavaScript, so that developers can express invariants about their code and have them maintained automatically.</p>
<p>Flow’s type checking is <strong>opt-in</strong>: files are not type checked unless you ask it to. This means that you can gradually convert your JavaScript codebase to Flow while reaping incremental benefits. When you do opt-in a file, Flow tries to type check the code automatically by performing type inference, reporting errors without further manual guidance. This simple workflow is usually sufficient when your codebase is broken down into small files, each defining a module that exports a well-defined interface. However, for some files (e.g., monolithic libraries), the analysis Flow performs might turn out to be too imprecise, causing lots of spurious errors to be reported. In such cases, the developer can either try to manually guide Flow with type annotations, or switch to a <a href="http://flowtype.org/docs/existing.html#weak-mode">weaker mode</a> with limited type inference to reduce noise.</p>
<p>Flow’s type checking is <strong>online</strong>: it performs an initial analysis of all files in a code base, and then monitors those files for subsequent changes, type checking them and other dependencies piecemeal and proactively in the background. For the developer, this means that there are no perceptible compile-time delays; saving a bunch of files in an editor or rebasing a set of files in a repository automatically triggers type checking, storing the results in a persistent server, so that they are available instantaneously when queried.</p>
<h2 id="how-does-it-work-">How does it work?</h2>
<p>Flow designed to find type errors in JavaScript programs:</p>
<pre><code class="lang-js">/* @flow */
function foo(x) {
  return x * 10;
}

foo(&#39;Hello, world!&#39;);
</code></pre>
<pre><code class="lang-sh">$&gt; flow

hello.js:5:5,19: string
This type is incompatible with
  hello.js:3:10,15: number
</code></pre>
<p>Flow also lets you gradually evolve JavaScript code into typed code:</p>
<pre><code class="lang-js">/* @flow */
function foo(x: string, y: number): string {
  return x.length * y;
}

foo(&#39;Hello&#39;, 42);
</code></pre>
<pre><code class="lang-sh">$&gt; flow

hello.js:3:10,21: number
This type is incompatible with
  hello.js:2:37,42: string
</code></pre>
<p>Typed Flow code easily transforms down to regular JavaScript, so it runs anywhere.</p>
<h2 id="why-flow-">Why Flow?</h2>
<p>The goal of Flow is to find errors in JavaScript code with little programmer effort. Flow relies heavily on <strong>type inference</strong> to find type errors even when the program has not been annotated - it precisely tracks the types of variables as they flow through the program.</p>
<p>At the same time, Flow is a <strong>gradual</strong> type system. Any parts of your program that are dynamic in nature can easily bypass the type checker, so you can mix statically typed code with dynamic code.</p>
<p>Flow also supports a highly <strong>expressive</strong> type language. Flow types can express much more fine-grained distinctions than traditional type systems. For example, Flow helps you catch errors involving null, unlike most type systems.</p>
<h2 id="using-flow">Using Flow</h2>
<p>Start with <a href="http://flowtype.org/docs/getting-started.html">Getting Started</a> guide to download and try Flow yourself. Flow is open-source, so you can also start with the code on the <a href="https://github.com/facebook/flow">GitHub repo</a>.</p>
<hr>
<p><em>Source:</em></p>
<ul>
<li><a href="http://flowtype.org/">Flow | A static type checker for JavaScript</a><em>.</em></li>
</ul>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/FLOW.md','#JS')
,('4f8cbe50-ceb8-4c01-9bc8-44c7b1e56124','jQuery','a fast, small, and feature-rich client-side library','

# jQuery

[jQuery](https://jquery.com/) is a fast, small, and feature-rich JavaScript library. It makes things like HTML document traversal and manipulation, event handling, animation, and [AJAX](/_glossary/AJAX.md) much simpler with an easy-to-use API that works across a multitude of browsers. With a combination of versatility and extensibility, jQuery has changed the way that millions of people write JavaScript.
','<h1 id="jquery">jQuery</h1>
<p><a href="https://jquery.com/">jQuery</a> is a fast, small, and feature-rich JavaScript library. It makes things like HTML document traversal and manipulation, event handling, animation, and <a href="/_glossary/AJAX.md">AJAX</a> much simpler with an easy-to-use API that works across a multitude of browsers. With a combination of versatility and extensibility, jQuery has changed the way that millions of people write JavaScript.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/JQUERY.md','#JS')
,('baa6611a-d0c2-43af-87fb-1f1ef73d7b4c','Lodash','an utility toolkit to extend JavaScript primitive types','

# Lodash

[Lodash](https://lodash.com) is a small [modularized](https://www.npmjs.com/browse/keyword/lodash-modularized) library which provides a bunch of helpers to work with Javascript data types (string, object, etc.) in a much more simpler way. Every single helper can be required and used itself without requiring the whole library. Additionally, it makes Javascript code look elegant and more efficient by offering functional style, method chaining and [more](https://lodash.com/#features).

Think of Lodash as an utility library to simplify Javascript development by providing functions for Javascript basic types, such as:

- Array manipulations: `map`, `reduce`, `filter`, `merge`, `difference`…
- String transformations: `capitalize`, `camelCase`, `truncate`, `template`…
- Collection querying: `find`, `where`, `contains`, `any`, `all`…
- Object manipulations: `pick`, `omit`, `forIn`, `pluck`…
- Property getters and setters: `property`, `method`, `get`, `set`…
- Functional programing utilities: `partial`, `curry`, `compose`, `debounce`…

It also provides an API for chaining function calls in a “pipe-like” flavor:

```js
_.chain(myArray)
 .map(x => x * 3)
 .filter(x => x % 2)
 .sum()
 .value()
  // returns the sum of myArray after multiplying all elements by 3 and rejecting the odd numbers
```

It may be seen as alternative of [Underscore](/_glossary/UNDERSCORE.md).
','<h1 id="lodash">Lodash</h1>
<p><a href="https://lodash.com">Lodash</a> is a small <a href="https://www.npmjs.com/browse/keyword/lodash-modularized">modularized</a> library which provides a bunch of helpers to work with Javascript data types (string, object, etc.) in a much more simpler way. Every single helper can be required and used itself without requiring the whole library. Additionally, it makes Javascript code look elegant and more efficient by offering functional style, method chaining and <a href="https://lodash.com/#features">more</a>.</p>
<p>Think of Lodash as an utility library to simplify Javascript development by providing functions for Javascript basic types, such as:</p>
<ul>
<li>Array manipulations: <code>map</code>, <code>reduce</code>, <code>filter</code>, <code>merge</code>, <code>difference</code>…</li>
<li>String transformations: <code>capitalize</code>, <code>camelCase</code>, <code>truncate</code>, <code>template</code>…</li>
<li>Collection querying: <code>find</code>, <code>where</code>, <code>contains</code>, <code>any</code>, <code>all</code>…</li>
<li>Object manipulations: <code>pick</code>, <code>omit</code>, <code>forIn</code>, <code>pluck</code>…</li>
<li>Property getters and setters: <code>property</code>, <code>method</code>, <code>get</code>, <code>set</code>…</li>
<li>Functional programing utilities: <code>partial</code>, <code>curry</code>, <code>compose</code>, <code>debounce</code>…</li>
</ul>
<p>It also provides an API for chaining function calls in a “pipe-like” flavor:</p>
<pre><code class="lang-js">_.chain(myArray)
 .map(x =&gt; x * 3)
 .filter(x =&gt; x % 2)
 .sum()
 .value()
  // returns the sum of myArray after multiplying all elements by 3 and rejecting the odd numbers
</code></pre>
<p>It may be seen as alternative of <a href="/_glossary/UNDERSCORE.md">Underscore</a>.</p>
','https://github.com/HugoGiraudel/SJSJ/blob/master/_glossary/LODASH.md','#JS')
;