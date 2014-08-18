var data;
var monb,monl,mond;
var tueb,tuel,tued;
var wdnb,wdnl,wdnd;
var trb,trl,trd;
var frib,fril,frid;
var satb,satl,satd;
var sunb,sunl,sund;
var count1, count2, count3, count4;
var flag;
var password
var clickmon, clicktue, clickwen, clicktr, clickfri,clicksat,clicksun
var clickveg, clicklowcal, clickhighpro, clicknotspi
var clickb,clickl,clickd
var clicktitle
var tmp=""
var temprature=65
var recipename=[];
recipename[1]="hello"
recipename[2]="goodbye"

monb="farmer's breakfast";
tueb="breakfast2";
wdnb="breakfast3";
trb= "breakfast4";
frib="breakfast5";
satb="breakfast6";
sunb="breakfast7";
count1=1;
count2=2;
count3=3;
count4=1;
flag=0;
clickmon=0;clicktue=0;clickwen=0;clickwen=0;clicktr=0;clickfri=0;clicksat=0;clicksun=0;
clicklowcal=0; clickhighpro=0; clickveg=0; clicknotspi=0;
clickb=0;clickl=0;clickd=0;
clicktitle=1;
password="123";
function push(x)
{
    tmp=tmp+x
}
function clear(obj)
{
    obj=""
    console.log(obj)
}
function geth()
{
    return "#A5E789"
}
function gett()
{
    return "#F5FDF4"
}
function getl()
{
    return "#D2F4CE"
}
function getLcolor()
{
    return "#00f900"
}
function search(obj,amount)
{

    for(var i=1;i<=2;i++)
    {
        if(obj==recipename[i-1])
        {
            temp.color="#A5E789"
             return 0
        }

    }
}
function getfontsize()
{
    return 16
}
