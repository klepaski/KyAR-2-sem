function task2() {
    for (var i = 0; i < document.body.childNodes.length; i++) {
        alert(document.body.childNodes[i]);
    }
}

function task1() {
    for (var i = 0; i < document.all.length; i++) {
        var child = document.all[i];
        alert(child.tagName);
        alert(document.documentElement.nodeType);
    }
}

function task3() {
    for (var i = 0; i < document.all.length; i++) {
        var child = document.all[i];
        if (child.tagName == 'SPAN') alert(document.all[i].innerHTML);
    }
    alert('2podpunkt');
    alert(document.body.children[0].children[4].children[0].children[0].innerHTML);
    alert('3podpunkt');
    alert(document.getElementById("heh").innerHTML);
}