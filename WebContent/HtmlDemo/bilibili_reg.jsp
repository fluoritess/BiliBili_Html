<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%	String Path=request.getScheme()+":"+"//"+request.getServerName()+":"+request.getServerPort()+"/"+request.getServletContext().getContextPath()+"/"; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet"href="../css/bilibili_reg.css"media="screen">
</head>
<body>
	<form action="<%=Path%>reg"method="post"enctype="multipart/form-data">
    <div id="top_left">
        <ul>
            <li><a href="../HtmlDemo/bilibili_main.html">主战</a></li>
            <li><a href="../HtmlDemo/bilibili_Is thin.html">画友</a></li>
            <li><a href="">游戏中心</a></li>
            <li><a href="">直播</a></li>
            <li><a href="">会员购</a></li>
            <li><a href="">周边</a></li>
            <li><a href="">移动端</a></li>    
        </ul>
    </div>
    <div id="top_right">
        <img src="../images/bilibili2.jpg"height="30px"width="26px">
        <a href="">历史</a>
    </div>
    <div id="top_bootom">
        <img src="../images/bilibili_reg1.png">
    </div>
    <div id="center">
            <p>注册</p>
    </div>
    <div id="center_1">
            <input type="text" name="uname" placeholder="昵称（例：哔哩哔哩）" class="user_id_password mar_b_40px" data-form-un="1512129074598.7778">
    </div>
    <div id="center_2">
            <input type="password" name="userpwd" placeholder="密码（6-16个字符组成，区分大小写）" class="user_id_password" data-form-pw="1512129074598.7778">
    </div>
    <!-- 
    <div id="center_3">
            <select name="country_code"><option code="86" value="1">中国大陆</option><option code="852" value="5">香港特别行政区</option><option code="853" value="2">澳门特别行政区</option><option code="886" value="3">台湾地区</option><option code="1" value="4">美国</option><option code="32" value="6">比利时</option><option code="61" value="7">澳大利亚</option><option code="33" value="8">法国</option><option code="1" value="9">加拿大</option><option code="81" value="10">日本</option><option code="65" value="11">新加坡</option><option code="82" value="12">韩国</option><option code="60" value="13">马来西亚</option><option code="44" value="14">英国</option><option code="39" value="15">意大利</option><option code="49" value="16">德国</option><option code="7" value="18">俄罗斯</option><option code="64" value="19">新西兰</option><option disabled="disabled" code="" value="">--其它--</option><option code="93" value="22">阿富汗</option><option code="355" value="20">阿尔巴尼亚</option><option code="213" value="21">阿尔及利亚</option><option code="376" value="31">安道尔</option><option code="244" value="32">安哥拉</option><option code="1268" value="33">安提瓜岛和巴布达</option><option code="54" value="23">阿根廷</option><option code="374" value="204">亚美尼亚</option><option code="247" value="183">阿森松岛</option><option code="43" value="34">奥地利</option><option code="994" value="26">阿塞拜疆</option><option code="1242" value="37">巴哈马群岛</option><option code="973" value="40">巴林</option><option code="880" value="131">孟加拉国</option><option code="1246" value="35">巴巴多斯</option><option code="375" value="43">白俄罗斯</option><option code="501" value="52">伯利兹</option><option code="229" value="46">贝宁</option><option code="1441" value="44">百慕大群岛</option><option code="975" value="54">不丹</option><option code="591" value="51">玻利维亚</option><option code="387" value="49">波黑</option><option code="267" value="53">博茨瓦纳</option><option code="55" value="42">巴西</option><option code="673" value="193">文莱</option><option code="359" value="45">保加利亚</option><option code="226" value="55">布基纳法索</option><option code="257" value="56">布隆迪</option><option code="855" value="96">柬埔寨</option><option code="237" value="100">喀麦隆</option><option code="238" value="72">佛得角</option><option code="1345" value="102">开曼群岛</option><option code="236" value="68">非洲中部</option><option code="235" value="214">乍得</option><option code="56" value="216">智利</option><option code="57" value="77">哥伦比亚</option><option code="269" value="103">科摩罗</option><option code="242" value="75">刚果</option><option code="243" value="76">刚果(金)</option><option code="682" value="107">库克岛</option><option code="506" value="78">哥斯达黎加</option><option code="385" value="105">克罗地亚</option><option code="53" value="81">古巴</option><option code="357" value="162">塞浦路斯</option><option code="420" value="97">捷克</option><option code="45" value="58">丹麦</option><option code="246" value="59">迪戈加西亚岛</option><option code="253" value="90">吉布提</option><option code="1767" value="61">多米尼加</option><option code="1809" value="62">多米尼加代表</option><option code="593" value="63">厄瓜多尔</option><option code="20" value="27">埃及</option><option code="503" value="157">萨尔瓦多</option><option code="240" value="57">赤道几内亚</option><option code="291" value="64">厄立特里亚</option><option code="372" value="30">爱沙尼亚</option><option code="251" value="28">埃塞俄比亚</option><option code="500" value="73">福克兰岛</option><option code="298" value="65">法罗岛</option><option code="679" value="70">斐济</option><option code="358" value="71">芬兰</option><option code="594" value="67">法属圭亚那</option><option code="689" value="66">法属波利尼西亚</option><option code="241" value="95">加蓬</option><option code="220" value="74">冈比亚</option><option code="995" value="154">格鲁吉亚</option><option code="233" value="94">加纳</option><option code="350" value="215">直布罗陀</option><option code="30" value="199">希腊</option><option code="299" value="80">格陵兰岛</option><option code="1473" value="79">格林纳达</option><option code="590" value="82">瓜德罗普岛</option><option code="1671" value="83">关岛</option><option code="224" value="92">几内亚</option><option code="245" value="93">几内亚比绍</option><option code="509" value="84">海地</option><option code="504" value="87">洪都拉斯</option><option code="36" value="201">匈牙利</option><option code="354" value="47">冰岛</option><option code="91" value="209">印度</option><option code="62" value="210">印尼</option><option code="98" value="207">伊朗</option><option code="964" value="206">伊拉克</option><option code="353" value="29">爱尔兰</option><option code="972" value="208">以色列</option><option code="225" value="200">科特迪瓦</option><option code="1876" value="203">牙买加</option><option code="962" value="211">约旦</option><option code="254" value="106">肯尼亚</option><option code="686" value="89">基里巴斯</option><option code="850" value="85">韩国</option><option code="965" value="104">科威特</option><option code="996" value="91">吉尔吉斯斯坦</option><option code="856" value="110">老挝</option><option code="371" value="108">拉脱维亚</option><option code="961" value="111">黎巴嫩</option><option code="266" value="109">莱索托</option><option code="231" value="113">利比里亚</option><option code="218" value="114">利比亚</option><option code="370" value="112">立陶宛</option><option code="352" value="115">卢森堡</option><option code="389" value="124">马其顿</option><option code="261" value="118">马达加斯加</option><option code="265" value="121">马拉维</option><option code="960" value="119">马尔代夫</option><option code="223" value="122">马里</option><option code="356" value="120">马耳他</option><option code="1670" value="123">马里亚纳岛</option><option code="692" value="126">马歇尔岛</option><option code="596" value="125">马提尼克岛</option><option code="222" value="128">毛里塔尼亚</option><option code="230" value="127">毛里求斯</option><option code="52" value="139">墨西哥</option><option code="691" value="133">密克罗尼西亚</option><option code="373" value="135">摩尔多瓦</option><option code="377" value="137">摩纳哥</option><option code="976" value="129">蒙古</option><option code="1664" value="130">蒙特塞拉特岛</option><option code="212" value="136">摩洛哥</option><option code="258" value="138">莫桑比克</option><option code="95" value="134">缅甸</option><option code="264" value="140">纳米比亚</option><option code="674" value="143">瑙鲁</option><option code="977" value="144">尼泊尔</option><option code="31" value="86">荷兰</option><option code="505" value="145">尼加拉瓜</option><option code="227" value="146">尼日尔</option><option code="234" value="147">尼日利亚</option><option code="683" value="148">纽埃岛</option><option code="672" value="150">诺福克岛</option><option code="47" value="149">挪威</option><option code="968" value="25">阿曼</option><option code="92" value="38">巴基斯坦</option><option code="680" value="151">帕劳</option><option code="507" value="41">巴拿马</option><option code="675" value="36">巴布亚新几内亚</option><option code="595" value="39">巴拉圭</option><option code="51" value="132">秘鲁</option><option code="63" value="69">菲律宾</option><option code="48" value="50">波兰</option><option code="351" value="152">葡萄牙</option><option code="1787" value="48">波多黎各</option><option code="974" value="101">卡塔尔</option><option code="262" value="99">聚会岛</option><option code="40" value="117">罗马尼亚</option><option code="250" value="116">卢旺达</option><option code="684" value="159">萨摩亚，东部</option><option code="685" value="158">萨摩亚，西部</option><option code="378" value="168">圣马力诺</option><option code="239" value="166">圣多美和普林西比</option><option code="966" value="165">沙特阿拉伯</option><option code="221" value="161">塞内加尔</option><option code="248" value="163">塞舌尔共和国</option><option code="232" value="160">塞拉利昂</option><option code="421" value="171">斯洛伐克</option><option code="386" value="172">斯洛文尼亚</option><option code="677" value="176">所罗门群岛</option><option code="252" value="177">索马里</option><option code="27" value="141">南非</option><option code="34" value="198">西班牙</option><option code="94" value="170">斯里兰卡</option><option code="1784" value="167">圣卢西亚</option><option code="508" value="169">圣皮埃尔和密克隆群岛</option><option code="249" value="174">苏丹</option><option code="597" value="175">苏里南</option><option code="268" value="173">斯威士兰</option><option code="46" value="155">瑞典</option><option code="41" value="156">瑞士</option><option code="963" value="202">叙利亚</option><option code="255" value="179">坦桑尼亚</option><option code="66" value="178">泰国</option><option code="228" value="60">多哥</option><option code="690" value="188">托克劳岛</option><option code="676" value="180">汤加</option><option code="1868" value="182">特立尼达和多巴哥</option><option code="216" value="184">突尼斯</option><option code="90" value="186">土耳其</option><option code="993" value="187">土库曼斯坦</option><option code="1649" value="181">特克斯和凯科斯</option><option code="688" value="185">图瓦卢</option><option code="256" value="194">乌干达</option><option code="380" value="195">乌克兰</option><option code="971" value="24">阿联酋</option><option code="598" value="196">乌拉圭</option><option code="998" value="197">乌兹别克斯坦</option><option code="678" value="189">瓦努阿图</option><option code="58" value="192">委内瑞拉</option><option code="84" value="212">越南</option><option code="1284" value="191">维珍群岛(英属)</option><option code="1340" value="190">维珍群岛(美属)</option><option code="1808" value="88">维克岛</option><option code="1681" value="153">瓦利斯群岛和富图纳群岛</option><option code="967" value="205">也门</option><option code="381" value="142">南斯拉夫</option><option code="260" value="213">赞比亚</option><option code="259" value="164">桑给巴尔岛</option><option code="263" value="98">津巴布韦</option>
                <option code="86" value="1">中国大陆</option>
            </select>
    </div>
     -->
    <div id="center_4">
            <input type="submit" value="注册" class="next_step center_div mar_t_120 ys-a" data-form-sbm="1512129074598.7778" style="pointer-events: auto;">
    </div>
    
     <div id="bootom">
            <p>&nbsp;&nbsp;bilibili</p>
            <br>
            <ul>
                <li>
                    <a href="">关于我们</a>
                </li>
                <li>
                    <a href="">友情链接</a>
                </li>
                <li>
                    <a href="">哔哩哔哩周边</a>
                </li>
            </ul>
            <br>
            <div id="bootom1">
            <ul>
                <li>
                    <a href="">联系我们</a>
                </li>
                <li>
                    <a href="">加入链接</a>
                </li>
                <li>
                    <a href="">官方认证</a>
                </li>
            </ul>
            </div>
            <div id="bootom2">
                    <p>&nbsp;&nbsp;传送门</p>
                    <br>
                <ul>
                    <li>
                        <a href="">帮助中心</a>
                    </li>
                    <li>
                        <a href="">高级弹幕</a>
                    </li>
                    <li>
                        <a href="">活动专题页</a>
                    </li>
                </ul>
                </div>
                <div id="bootom3">
                    <ul>
                        <li>
                            <a href="">侵权申述</a>
                        </li>
                        <li>
                            <a href="">分院帽计划</a>
                        </li>
                        <li>
                            <a href="">活动中心</a>
                        </li>
                    </ul>
                    </div>
        </div>
        <div id="bg">
        </div>
    </form>
</body>
</html>