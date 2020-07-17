// this checks which browser is viewing this page
browserName = navigator.appName;
browserVer = parseInt(navigator.appVersion);
if (browserName == "Netscape" && browserVer >= 3) browserVer = "1";
else if (browserName == "Microsoft Internet Explorer" && browserVer == 4) browserVer = "1";
else browserVer = "2";


// create the image swapping function that works in any browser
function hiLite(imgDocID, imgObjName) {
if (browserVer == 1) {
document.images[imgDocID].src = eval(imgObjName + ".src");
}}
