<html>
<head>
<title>Часы в поле формы</title>
</head>
<body onLoad="myclock()">
<script language="JavaScript">
function myclock(){
ndata=new Date()
hours= ndata.getHours();
mins= ndata.getMinutes();
secs= ndata.getSeconds();
if (hours < 10) {hours = "0" + hours }
if (mins < 10) {mins = "0" + mins }
if (secs < 10) {secs = "0" + secs }
datastr =hours+":" + mins+":" +secs
document.clockexam.clock.value = " "+datastr;
setTimeout("myclock()", 1000);
}
</script>
<form name="clockexam"><input type="text" size="9" name="clock"></form>
</body>
</html>
<html>
<head>
</head>
<body topmargin="0" leftmargin="0" bgcolor="#ededed" link="#000000" text="#000000">
<script language="JavaScript">
var now = new Date();
var days = new Array('воскресение','понедельник','вторник','среда','четверг','пятница','суббота');
var months = new Array('Январь','Февраль','Март','Апрель','Май','Июнь','Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь');
var date = ((now.getDate()<10) ? "0" : "")+ now.getDate();
function fourdigits(number) { return (number < 1000) ? number + 1900 : number; }
today =  months[now.getMonth()] + ", " + days[now.getDay()] + ", " + date + " ";
document.write(today);
document.write(now.getDate()+ "." + (now.getMonth()+1) + "." + now.getFullYear())
</script>
</body>
</html>