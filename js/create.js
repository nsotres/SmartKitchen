
var component;
var bb = [];
var recipename=[];
recipename[1]="garlic-roasted asparagus"
recipename[2]="sweet potatoes with toasted pecans"

function callb0() {
    console.log("dynamic rect 1");
}
function callb() {
    console.log("dynamic rect");
}

function createRects(amount,object,id,flag) {
    component = Qt.createComponent(object);
    if (component.status === Component.Ready)
    {
        var yoffset = 60;

        for (var i=1;i<(amount+1);i++) {

            bb[i] = component.createObject(id, {"text": "rect"+(i+1)});


            if(flag==1)
             bb[i].source="images/image/"+i+".jpg";
            else
            {
                bb[i].color= "#D2F4CE";
                bb[i].text= "Dynamic Recipe";
            }
            if (bb[i] === null) {
                // Error Handling
                console.log("Error creating object");
            }
            else {
                // Set some values
                //if (i==0)
                //y+= 40
                    /*bb[i].clicked.connect(callb0);*/
                //else /*bb[i].clicked.connect(callb);*/
                y += 1;
                x += 1;
            }
        }
    } else{
        console.log("Component not ready");
    }
    //document.write(bb[i]);
}
function setTest(index)
{

    for(var i = 1; i < index+1; ++i) {
        bb[i].text=recipename[i]
    }

    var temp = users[index];

}

