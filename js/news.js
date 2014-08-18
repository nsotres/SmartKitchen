function loadNews() {
    var doc = new XMLHttpRequest();
    doc.onreadystatechange = function() {
       if (doc.readyState === doc.DONE) {
           if(doc.responseXML === "" || doc.responseXML === null) {
               console.log("News data error");
               return;
           }
           var text = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" + doc.responseText;
           //parser = new DOMParser();
           xmlDoc=new ActiveXObject("Microsoft.XMLDOM");
           xmlDoc.async=false;
           xmlDoc.loadXML(text);
           loadData(xmlDoc);
        }
    }
    doc.open("GET", "http://news.google.com/news?pz=1&cf=all&ned=us&hl=en&output=rss");
    doc.send();
}

function loadData(xmlDoc) {
    x=xmlDoc.getElementsByTagName("title")[0];
    y=x.nodeValue;
    console.log(y);
}
