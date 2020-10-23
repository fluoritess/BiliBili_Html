function showPic_bilibili(whichpic)
{
    var source=whichpic.getAttribute("href");
    var placeholder=document.getElementById("bili3");
    placeholder.setAttribute("src",source);
}
function showPic_bilibili2(whichpic){
    var source=whichpic.getAttribute("href");
    var placeholder=document.getElementById("bili4");
    placeholder.setAttribute("src",source);
}