<%--
  Created by IntelliJ IDEA.
  User: NB
  Date: 2017/8/7
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" import="Bean.RegisterBean" import="WebSide.WebDao"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="WebSide.CompanyDao" %>
<%@ page import="Bean.Company" %>
<%@ page import="Utils.BaseData" %>
<%@ page import="Utils.ExcelExport" %>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>
<%@ page import="WebSide.UserControlDao" %>
<%@ page import="Bean.TestB" %>
<%@ page import="com.google.gson.Gson" %>
<html>
<head>
    <title>注册用户管理</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>

    <!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>

    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <%--<link rel="stylesheet" href="css/bootstrap.min.css">--%>
    <%--<link rel="stylesheet" href="../js/vue.min.js">--%>
    <%--<link rel="stylesheet" href="../js/vue.min.js" />--%>
    <script src="https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios@0.12.0/dist/axios.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/lodash@4.13.1/lodash.min.js"></script>

</head>

<body>
<jsp:include page="../headLayout.jsp"/>
<%--
<%
    WebDao aa = new WebDao();
//    List list = (List) request.getAttribute("pl_list");
    List list = aa.getRegister();


    for (int i = 0; i < list.size(); i++) {
        RegisterBean rs = (RegisterBean) list.get(i);
%>--%>
<%--<%
    String tips = (String) request.getAttribute("tips");
%>
<h5 ><%=tips%></h5>--%>
<div id="example-4">
    <input type="radio" id="one" value="One" v-model="picked">
    <label for="one">One</label>
    <br>
    <input type="radio" id="two" value="Two" v-model="picked">
    <label for="two">Two</label>
    <br>
    <span>Picked: {{ picked }}</span>
</div>
<script>
    new Vue({
        el: '#example-4',
        data: {
            picked: ''
        }
    })

</script>

<%
//    List list = (List) request.getAttribute("pl_list");
    CompanyDao aa = new CompanyDao();
    List list = aa.getCompany();
    List<TestB> testBS = new ArrayList<>();

//    String[] strings = new String[]{"{ text: 'One', value: 'A' }","{ text: 'One2', value: 'B' }","{ text: 'One3', value: 'C' }"};
//    strings[0]="{ text: 'One', value: 'A' }";
//    strings[1]="";
//    strings[3]="";
//    strings[4]="{ text: 'One4', value: 'D' }";
//    strings[5]="{ text: 'One5', value: 'E' }";
%>
<p><%=testBS%></p>
<div>
    <br/>
    <h2 style="width: 200px;text-align:center">用户控制-></h2>
</div>
<div id="example-5">
    <select v-model="selected">
        <option disabled value="">请选择</option>
        <%
            for (int i = 0; i < list.size(); i++) {
                Company rs = (Company) list.get(i);
                testBS.add(new TestB(rs.getCompanyName(),rs.getAppID()));

        %>
        <option><%=rs.getCompanyName()%></option>
        <%
            }
            String res = new Gson().toJson(testBS);
        %>
    </select>
    <span id="getSelectData">Selected: {{ selected }}</span>
</div>
<br/>

<div id="select2">
    <select v-model="selected">
        <option v-for="option in options" v-bind:value="option.value">
            {{ option.text }}
        </option>
    </select>
    <span>Selected: {{ selected }}</span>
</div>
<br/>


<div id="app-5">
    <p>{{ message }}</p>
    <button v-on:click="reverseMessage">反转消息</button>
    <button v-on:click="toSet('')">修改消息</button>
</div>



<div id="watch-example">
    <p>
        Ask a yes/no question:
        <input v-model="question">
    </p>
    <p>{{ answer }}</p>
</div>
<script>
    var watchExampleVM = new Vue({
        el: '#watch-example',
        data: {
            question: '',
            answer: 'I cannot give you an answer until you ask a question!'
        },
        watch: {
            // 如果 `question` 发生改变，这个函数就会运行
            question: function (newQuestion, oldQuestion) {
                this.answer = 'Waiting for you to stop typing...'
                this.debouncedGetAnswer()
            }
        },
        created: function () {
            // `_.debounce` 是一个通过 Lodash 限制操作频率的函数。
            // 在这个例子中，我们希望限制访问 yesno.wtf/api 的频率
            // AJAX 请求直到用户输入完毕才会发出。想要了解更多关于
            // `_.debounce` 函数 (及其近亲 `_.throttle`) 的知识，
            // 请参考：https://lodash.com/docs#debounce
            this.debouncedGetAnswer = _.debounce(this.getAnswer, 500)
        },
        methods: {
            getAnswer: function () {
//                if (this.question.indexOf('?') === -1) {
//                    this.answer = 'Questions usually contain a question mark. ;-)'
//                    return
//                }
                this.answer = 'Thinking...'
                var vm = this
                axios.get('http://148.70.108.65:8080/LogAssist/UserIO')
                    .then(function (response) {
                        console.log(response);
                        vm.answer = _.capitalize(response)
//                        vm.answer = _.capitalize(response.data.answer)
                    })
                    .catch(function (error) {
                        console.log(error);
//                        vm.answer = error

                        vm.answer = 'Error! Could not reach the API. ' + error
                    })
            }
        }
    })
    var slel =new Vue({
        el: '#example-5',
        data: {
            selected: ''
        }
    })

    var test =  new Vue({
        el: '#app-5',
        data: {
            message: 'Hello Vue.js!'
        },
        methods: {
            reverseMessage: function () {
                this.message = this.message.split('').reverse().join('')
            },
            toSet: function (str) {
                this.message =document.getElementById("getSelectData").innerText
            }
        }
    })

    var dle =new Vue({
        el: '#select2',
        data: {
            selected: 'A',
            options: <%=res%>
//            options: [{"text":"one","value":"A"},{"text":"one2","value":"B"},{"text":"one3","value":"C"}]
//            options: [
//                { text: 'One', value: 'A' },
//                { text: 'Two', value: 'B' },
//                { text: 'Three', value: 'C' }
//            ]
        }
    })

</script>





<!--video用于显示媒体设备的视频流，自动播放-->
<video id="video" autoplay style="width: 480px;height: 320px"></video>
<!--拍照按钮-->
<div>
    <button id="capture">拍照</button>
</div>
<!--描绘video截图-->
<canvas id="canvas" width="480" height="320"></canvas>


<video id="video" width="640" height="480" autoplay></video>
<button id="snap">Snap Photo</button>
<canvas id="canvas" width="640" height="480"></canvas>
<script>
    var canvas = document.getElementById('canvas');
    var context = canvas.getContext('2d');
    var video = document.getElementById('video');

    // Trigger photo take
    document.getElementById("snap").addEventListener("click", function () {
        context.drawImage(video, 0, 0, 640, 480);
    });

    // Get access to the camera!
    if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
        // Not adding `{ audio: true }` since we only want video now
        navigator.mediaDevices.getUserMedia({video: true}).then(function (stream) {
            video.src = window.URL.createObjectURL(stream);
            video.play();
        });
    }

    //访问用户媒体设备的兼容方法
    function getUserMedia(constrains, success, error) {
        if (navigator.mediaDevices.getUserMedia) {
            //最新标准API
            navigator.mediaDevices.getUserMedia(constrains).then(success).catch(error);
        } else if (navigator.webkitGetUserMedia) {
            //webkit内核浏览器
            navigator.webkitGetUserMedia(constrains).then(success).catch(error);
        } else if (navigator.mozGetUserMedia) {
            //Firefox浏览器
            navagator.mozGetUserMedia(constrains).then(success).catch(error);
        } else if (navigator.getUserMedia) {
            //旧版API
            navigator.getUserMedia(constrains).then(success).catch(error);
        }
    }

    var video = document.getElementById("video");
    var canvas = document.getElementById("canvas");
    var context = canvas.getContext("2d");

    //成功的回调函数
    function success(stream) {
        //兼容webkit内核浏览器
        var CompatibleURL = window.URL || window.webkitURL;
        //将视频流设置为video元素的源
        video.src = CompatibleURL.createObjectURL(stream);
        //播放视频
        video.play();
    }

    //异常的回调函数
    function error(error) {
        console.log("访问用户媒体设备失败：", error.name, error.message);
    }
    if (navigator.mediaDevices.getUserMedia || navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia) {
        //调用用户媒体设备，访问摄像头
        getUserMedia({
            video: {width: 480, height: 320}
        }, success, error);
    } else {
        alert("你的浏览器不支持访问用户媒体设备");
    }

    //注册拍照按钮的单击事件
    document.getElementById("capture").addEventListener("click", function () {
        //绘制画面
        context.drawImage(video, 0, 0, 480, 320);
    });
</script>
<hr/>


<%--<div class="container" style="margin-top: 88px">--%>
<%--<div  class="card">--%>
<%--<div class="card-body">--%>
<%--<table class="table">--%>
<%--<thead>--%>
<%--<%--%>
<%--CompanyDao aa = new CompanyDao();--%>
<%--UserControlDao userControlDao = new UserControlDao();--%>
<%--//                    List userControlList = userControlDao.getUserControlList();--%>
<%--//                    String statisticalNum = statisticalDao.getUserNum4Appid();--%>
<%--%>--%>
<%--<tr>--%>
<%--<th>公司名称</th>--%>
<%--<th>APP版本号</th>--%>
<%--<th>用户数</th>--%>
<%--</tr>--%>
<%--</thead>--%>
<%--<tbody>--%>
<%--<%--%>

<%--//    List list = (List) request.getAttribute("pl_list");--%>
<%--List list = aa.getCompany();--%>
<%--if (list==null){--%>
<%--%><div class="alert alert-info"> 列表数据为空</div><%--%>
<%--return;--%>
<%--}--%>
<%--for (int i = 0; i < list.size(); i++) {--%>
<%--Company rs = (Company) list.get(i);--%>
<%--%>--%>

<%--<tr>--%>
<%--<td><%=rs.getCompanyName() %></td>--%>
<%--<td><%=rs.getAppVersion() %></td>--%>
<%--<td><%=userControlDao.getUserControlNum4Appid(rs.getAppID() )%></td>--%>
<%--&lt;%&ndash;<td><%=rs.getAppID() %></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;<td style="height: 45px;width:80px"><%=rs.getLast_use_date() %></td>&ndash;%&gt;--%>
<%--<td><a href="../company_find_4upgrade?json=<%=rs.getAppID()%>">管理</a></td>--%>
<%--</tr>--%>
<%--</tbody>--%>
<%--<%} %>--%>
<%--</table>--%>
<%--</div>--%>

<%--</div>--%>
<%--</div>--%>


<%--<table border="0" bgcolor="ccceee" width="750" style="height: 161px;">
    <tr bgcolor="CCCCCC" align="center">
        <td style="height: 30px;width:80px ">用户码</td>
        <td style="height: 30px;width:180px ">手机IMIE码</td>
        <td style="height: 30px;width:80px ">版本号</td>
        <td style="height: 30px;width:80px ">操作</td>

    </tr>

    <tr align="center">
        <td style="height: 45px; width:80px"><%=rs.getRegister_code() %>
        </td>
        <td style="height: 45px; width:180px"><%=rs.getVal1() %>
        </td>
        <td style="height: 45px; width:80px"><%=rs.getVal2() %>
        </td>
        &lt;%&ndash;<td style="height: 45px;width:80px"><%=rs.getLast_use_date() %></td>&ndash;%&gt;
        <td width="80px" align="center"><a href="RegisterDelete?json=<%=rs.getRegister_code() %>">删除</a></td>
    </tr>
    <%} %>

</table>--%>
</body>


</html>
