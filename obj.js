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
var clickflag;
recipename[1]="garlic-roasted asparagus"
recipename[2]="sweet potatoes with toasted pecans"
recipename[3]="farmer's breakfast"
recipename[4]="breakfast casserole"
recipename[5]="lemon-garlic shrimp & vegetables"
recipename[6]="master of the universe pizza"
recipename[7]="deep-dish mexican meat loaf pie"
recipename[8]="beef stew with butternut squash"
recipename[9]="honey and bourbon steaks"
recipename[10]="Pork Cacciatore"
recipename[11]="Baked Honey Pecan-Crusted Chicken"
recipename[12]="Meatballs in Tomato-Wine Sauce"
recipename[13]="Avocado Basil Pasta"
recipename[14]="Six-Layer Brownie Bars"
recipename[15]="Shrimp Scampi with Garlic Bread"
recipename[16]= "Spicy Cucumber Salad"
clickflag=1;
monb="farmer's breakfast";
tueb="breakfast casserole";
wdnb="";
trb= "";
frib="";
satb="";
sunb="";
monl="sweet potatoes with toasted pecans";
tuel="beef stew with butternut squash";
wdnl="";
trl="";
fril="";
satl="";
sunl="";
mond="deep-dish mexican meat loaf pie";
tued="lemon-garlic shrimp & vegetables";
wdnd="";
trd="";
frid="";
satd="";
sund="";
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
