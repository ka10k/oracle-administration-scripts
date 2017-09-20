
//--//

var ie = document.all
var mz = document.getElementById && !ie

//--//

function addEvent(obj ,evt, fnc)
{
  if (obj.addEventListener)
    obj.addEventListener(evt,fnc,false);
  else if (obj.attachEvent)
    obj.attachEvent('on'+evt,fnc);
  else
    return false;
  return true;
}

function removeEvent(obj ,evt, fnc)
{
  if (obj.removeEventListener)
    obj.removeEventListener(evt,fnc,false);
  else if (obj.detachEvent)
    obj.detachEvent('on'+evt,fnc);
  else
    return false;
  return true;
}

//--//

function appendElement(node,tag,id,htm)
{
  var ne = document.createElement(tag);
  if(id) ne.id = id;
  if(htm) ne.innerHTML = htm;
  node.appendChild(ne);
}

//--//

function bookmarkPage()
{ 
  if(navigator.userAgent.toLowerCase().indexOf("firefox")!=-1)
    window.sidebar.addPanel(document.title, document.location.href,'');
  else
    window.external.AddFavorite(document.location.href, document.title);
  return false;
}

//--//

function onDocoOver(doco)
{
  doco.style.backgroundColor="lightsteelblue";
}

//--//

function onDocoOut(doco)
{
  doco.style.backgroundColor="white";
}


//--//


function comments(d,xy)
{
  var maxlimit = 500;

  var commentid   = document.getElementById('contactcomments');
  var countdownid = document.getElementById('commentcount');

  if(d!='update')
  {
    var commentdiv = document.getElementById('hunbugcomment');
  
    if(d=='block')
    {
      if(xy=='side')
      {
        commentdiv.style.top  = '150px';
        commentdiv.style.left = '200px';
      }
      else
      {
        commentdiv.style.top  = parseInt(Math.max(document.body.scrollHeight,document.body.clientHeight)-500)+"px";
        commentdiv.style.left = '600px';
      }
      commentid.value = '';
      document.getElementById('captchaimage').src = '/hunbug/img/loading.gif';
      document.getElementById('captchaimage').src = '/lib/captcha-securityimages.php?'+escape(new Date());
      greyout(true);
    }
    else
      greyout(false);
    
    commentdiv.style.display = d;
  }

  if (commentid.value.length > maxlimit)
    commentid.value = commentid.value.substring(0, maxlimit);
  else
    countdownid.value = '('+(maxlimit-commentid.value.length)+' characters available)';

  return false;
}


//--//


function greyout(d,z)
{
  var obj = document.getElementById('greyout');

  if(!obj)
  {
    appendElement(document.body,'div','greyout');
    obj = document.getElementById('greyout');
    obj.style.position = 'absolute';
    obj.style.top = '0px';
    obj.style.left = '0px';
    obj.style.background = '#111';
    obj.style.opacity = '.5';
    obj.style.filter = 'alpha(opacity=50)';
  }
  if(d)
  {
    var ch = document.documentElement.clientHeight ? document.documentElement.clientHeight : document.body.clientHeight;
    var cw = document.documentElement.clientWidth ? document.documentElement.clientWidth : document.body.clientWidth;
    var sh = document.documentElement.scrollHeight ? document.documentElement.scrollHeight : document.body.scrollHeight;
    if(document.body.scrollHeight) sh = Math.max(sh,document.body.scrollHeight)
    var sw = document.documentElement.scrollWidth ? document.documentElement.scrollWidth : document.body.scrollWidth;
    if(document.body.scrollWidth) sh = Math.max(sh,document.body.scrollWidth)
    var wh = window.innerHeight ? window.innerHeight : document.body.offsetHeight;
    if(!z){ z = 50 }
    obj.style.zIndex = z;
    obj.style.height = Math.max(wh,Math.max(sh,ch))+'px';
    obj.style.width  = Math.max(sw,cw)+'px';
    obj.style.display = 'block';
    addEvent(window,'resize',greyoutResize);
  }
  else
  {
    obj.style.display = 'none';   
    removeEvent(window,'resize',greyoutResize);
  }
}

function greyoutResize()
{
  var wh = window.innerHeight ? window.innerHeight : document.body.offsetHeight;
  var ch = document.documentElement.clientHeight ? document.documentElement.clientHeight : document.body.clientHeight;
  var cw = document.documentElement.clientWidth ? document.documentElement.clientWidth : document.body.clientWidth;
  var sh = document.documentElement.scrollHeight ? document.documentElement.scrollHeight : document.body.scrollHeight;
  var sw = document.documentElement.scrollWidth ? document.documentElement.scrollWidth : document.body.scrollWidth;
  var obj = document.getElementById('greyout');
  obj.style.height = ch+'px';
  obj.style.width  = cw+'px';
  obj.style.height = Math.max(wh,Math.max(sh,ch))+'px';
  obj.style.width  = Math.max(sw,cw)+'px';
}


//--//

function ratingClick(params)
{
  document.getElementById('rating').style.display = 'none';
  window.open('/cgi-bin/hunbug/commentsrate.cgi?'+params,'hunbughide');
}

//--//

function ratingOver(s)
{
  for (var i=1; i<6; i++)
   if(i>s)
     document.getElementById('rating'+i).src = '/hunbug/img/star-white.png';
   else
     document.getElementById('rating'+i).src = '/hunbug/img/star-gold.png';
}

//--//

function showStore()
{
  var httpRequest;
  try 
  {
    httpRequest = new XMLHttpRequest();  // Mozilla, Safari, etc
  }
  catch(trymicrosoft)
  {
    try
    {
      httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
    }
    catch(oldermicrosoft)
    {
    try
    {
      httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
    }
    catch(failed)
    {
      httpRequest = false;
    }
    }
  }
  if(!httpRequest)
  {
    alert('We are unable to display our store as your browser does not support Ajax.');
    return false;
  }

  //===============================
  // Action http_request

  httpRequest.onreadystatechange = function()
  {
    if(httpRequest.readyState == 4)
    if(httpRequest.status == 200)
    {
      greyout(true);
      var st = document.getElementById('store');
      var sc = document.getElementById('storecontents');
      sc.innerHTML     = httpRequest.responseText;
      sc.style.height  = Math.min((document.body.clientHeight-100),4000)+"px";
      st.style.left    = ((document.body.clientWidth-825)/2)+"px";
      st.style.display = 'block';
    }
    else
      alert('Request Error: '+httpRequest.status+' '+ httpRequest.statusText);
  }
  httpRequest.open('GET','/cgi-bin/hunbug/store.cgi');
  httpRequest.send(null);
   
}

function hideStore()
{
  greyout(false);
  document.getElementById('store').style.display = 'none';
}

//--//
