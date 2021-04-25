<%--
  Created by IntelliJ IDEA.
  User: NB
  Date: 2017/8/7
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" import="Bean.FeedBackBean" import="WebSide.WebDao"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.sun.org.apache.xpath.internal.operations.String" %>
<%@ page import="WebSide.FeedBack" %>
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
    <link type="text/javascript" src="js/swiper.min.js">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 100%;
            text-align:center;
            margin: 50px;
        }
    </style>
</head>
<body>
<%--<jsp:include page="headLayout.jsp"/>--%>
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
<%--<jsp:include page="item_TopNavbar.jsp"/>--%>
<%--<div style="width: auto;height: auto;">--%>
    <%--<img src="img/home_top.png" alt="Pulpit rock" width="auto" height="400px">--%>
<%--</div>--%>


<div class="container" style="margin-top:30px">
    <div class="row">
        <div class="col-md-12">
            <h3  style="text-align: center">金蝶K3条码集成方案</h3>
        </div>
    </div>
</div>

<div style="margin:30px">
    <div class="row">
        <div class="col-md-12">
            <div class="card" style="width: 100%; padding: 30px">
                <div class="card-body">
                    <h3 class="card-text" style="text-align: center">背景</h3>
                    <p class="card-text">随着技术的发展和最终用户的要求日益提高，企业之间的竞争的日益激烈，在自由经济市场的淘汰下，管理落后、没有竞争力的企业逐步被淘汰掉；而管理先进、竞争力强的企业则生存下来，并不断发展状态、进一步提升企业的管理能力和竞争力。</p>
                    <p class="card-text">在企业的发展和壮大过程中，多部门之间的协作越来越频繁，对数据共享的要求越来越高，同时各部门的作业质量和效率也要求不断提高，以提升企业的竞争力和生命力。现代企业的管理已经逐渐从粗狂型的管理转变为节约型的管理，这是社会进步的要求，也是企业发展壮大的要求。</p>
                    <p class="card-text">为了提高部门之间的协作效率和数据的共享，目前越来越多的中国企业已经逐渐接受了应用管理软件和先进的管理思想，企业的认识也促进了应用管理软件市场的迅速发展：如金蝶K/3都是在这种环境下产生的优秀的企业管理软件。</p>
                    <p class="card-text">这些ERP很好的管理了企业的经销存、资金、客户关系、员工、办公自动化，极大的提高了企业的管理能力和数据共享。但是这些ERP大多是基于人工录入的方式，数据录入的效率和质量难以得到保证，并且对使用者水平要求较高，一般使用ERP的公司或企业都会配套一个专业的IT部门，专门负责系统软件与硬件的维护。</p>
                    <p class="card-text">在这种情况下： 
                        如何的记录物流、生产数据、如何最大限度的简化数据录入工作量。 
                        如何实时为统计、决策系统提供真实、可靠的数据依据。 
                        如何彻底改善等订单、等上一道工序的运营状况。 
                        如何更加合理利用人力、物力。 
                        如何……</p>
                    <p class="card-text">越来越多的企业不得不深抓管理制度的革新，力求在竞争日益激烈的市场中走的更远。</p>
                    <p class="card-text">在这样的环境下，条形码技术就发挥了作用。作为信息数据的一种载体，将包含物流信息的条形码标签粘贴在物品上随物品流转的同时，就是很好的完成了信息数据与实物的结合，通过先进的终端采集方式获取数据，彻底颠覆了以往先手工做帐再输入电脑的工作方式，这种快捷、高效和准确的工作方式搭配上融合了先进管理思想的运营、分析软件系统，不仅做到了准确识别物品信息及跟踪物品流向的重要作用，而且能够协助企业提高运营效率、革新管理制度、提供决策依据达到企业经营目标。</p>
                    <p class="card-text">以下为最近国家颁布的法规或者标准，可见条形码应用已经成为现代物流必不可少的一部分</p>
                    <!-- <a href="#" class="card-link">Card link</a>
                    <a href="#" class="card-link">Another link</a> -->
                </div>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 10px">
        <div class="col-md-12">
            <div class="card" style="width: 100%;">
                <div class="card-body">
                    <h3 class="card-text" style="text-align: center">客户需求</h3>
                    <div class="row" style="margin-top: 10px;text-align: center">
                        <div class="col-md-6" style="text-align: right">
                            <div class="card-body">
                                <div class="row" style="margin-top: 10px;text-align: center">
                                    <div class="col-md-6" style="text-align: left">
                                        <div class="card" style="width: 100%;">
                                            <div class="card-body">
                                                <p class="card-text" style="font-weight: bold">以下为客户经常碰到的问题</p>
                                                <p class="card-text">条形码管理是客户给你的准入门槛</p>
                                                <p class="card-text">领料如何控制先进先出</p>
                                                <p class="card-text">销售出库出错（提错货），导致直接经济损失或者增加物流成本</p>
                                                <p class="card-text">由于录单手误，导致账面库存与实际库存差异</p>
                                                <p class="card-text">无法防止串货</p>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="col-md-6" style="text-align: right;margin-top: 66px">
                                        <div class="card" style="width: 100%;">
                                            <div class="card-body">
                                                <p class="card-text" style="font-weight: bold">金蝶标准产品差距</p>
                                                <p class="card-text">金蝶的K/3本身有简单的条形码功能非常薄弱，主要表现在：</p>
                                                <p class="card-text">同一业务单据不支持多种条形码生成规则</p>
                                                <p class="card-text">无法订制条形码标签</p>
                                                <p class="card-text">无法快速批量打印条形码标签</p>
                                                <p class="card-text">无法实现先进先出控制</p>
                                                <p class="card-text">无法实现质量追溯档案</p>
                                                <p class="card-text">无手持采集功能等</p>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card" style="width: 100%;margin-top: 33px">
                                <div class="card-body">
                                    <p class="card-text" style="font-weight: bold">金蝶K3条码解决方案</p>
                                    <p class="card-text">该方案的思想是引入条形码技术，一切从实际出发，对采购、库存管理、生产管理、销售管理的需求进行提炼，做到采购收货扫描验收、无线实时库存管理、生产出库、入库、生产数据实时采集、原材料先进先出管理、销售出库无线实时扫描验证出货、防止错货、串货、漏货。提升金蝶K3应用效能，达到精益管理的目标。</p>
                                    <p class="card-text">金蝶K3条码解决方案与K3系统无缝集成，并且在一定程度上简化和简单了使用者的操作步骤，同时提高了数据的实时性、共享性、准确性和数据录入的效率。</p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 10px">
        <div class="col-md-12">
            <div class="card" style="width: 100%;">
                <div class="card-body">
                    <h3 class="card-text" style="text-align: center">整体方案</h3>
                    <div class="row" style="margin-top: 10px;text-align: center">
                        <div class="col-md-6">
                            <img src="img/khxq.png" width="auto" height="auto">
                        </div>
                        <div class="col-md-6" style="text-align: right">
                            <div class="card-body">
                                <div class="row" style="margin-top: 10px">
                                    <div class="col-md-6" style="text-align: right">
                                        <div class="card" style="width: 100%;">
                                            <div class="card-header">1）采购管理部分</div>
                                            <div class="card-body">
                                                <p class="card-text">供应商送货可远程打印条形码标签</p>
                                                <p class="card-text">原材料入库前可读取电子秤接口,打印条形码标签</p>
                                                <p class="card-text">手持设备入库库位建议</p>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-md-6" style="text-align: left">
                                        <div class="card" style="width: 100%;">
                                            <div class="card-header">2）仓库管理部分</div>
                                            <div class="card-body">
                                                <p class="card-text">领料校验，保证根据BOM投放正确的原材料</p>
                                                <p class="card-text">手持设备快速盘点</p>
                                                <p class="card-text">先进先出控制</p>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="row" style="margin-top: 10px">
                                    <div class="col-md-6" style="text-align: right">
                                        <div class="card" style="width: 100%;">
                                            <div class="card-header">3）车间管理部分</div>
                                            <div class="card-body">
                                                <p class="card-text">工序数据自动采集</p>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-md-6" style="text-align: left">
                                        <div class="card" style="width: 100%;">
                                            <div class="card-header">4）销售管理部分</div>
                                            <div class="card-body">
                                                <p class="card-text">产成品装箱/装托盘</p>
                                                <p class="card-text">销售出库校验，保证正确的出库</p>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>



    <div class="row" style="margin-top: 10px">
        <div class="card" style="width: 100%;">
            <div class="col-md-12">
                <div class="card-body">
                    <h3 class="card-text" style="text-align: center">流程举例</h3>
                    <div class="col-md-12" style="text-align: right">
                        <div class="card-body">
                            <div class="row" style="margin-top: 10px">
                                <div class="col-md-6" style="text-align: left">
                                    <div class="card" style="width: 100%;">
                                        <div class="card-header">1）采购管理</div>
                                        <div class="card-body">
                                            <ul class="list-group">
                                                <li class="list-group-item">1.打印订单：依据金蝶K3采购订单数据，在条形码系统检索K3订单并打印带有订单号条形码的纸质订单，便于订单跟踪、仓管按单收货。</li>
                                                <li class="list-group-item">2.供应商标签：供应商登录条形码门户检索K3订单需求在线打印条形码标签，生产下线后随即张贴，至送货时便已具备符合企业要求（标签格式、订单信息、物料条形码数据等）的标签。</li>
                                                <li class="list-group-item">3.按订单送货：供应商可登录条形码应用门户检索订单，按照订单物料清单发货出库，使用扫描枪采集核对发货物料，避免发错货物，装车完毕后打印包含订单信息的送货清单随车发运，并实时更新发货时间、数量等物流数据。</li>
                                                <li class="list-group-item">4.称重数据秤接口：称重数据可实时从电子秤读取,避免人工错误。</li>
                                                <li class="list-group-item">5.打印标签：如供应商未提供物料条形码标识，在收货时,仓管人员也可依据金蝶K3采购订单、收料通知单数据打印条形码标签，支持按照定包装数自动计算标签张数、验证已打印数量、自动读取电子秤读数等功能。</li>
                                                <li class="list-group-item">6.按订单收货：仓管人员采集随车送货清单单号条形码，快速检索到金蝶K3采购订单信息，也可在手持终端设备上设定条件检索、选择未关闭的采购订单作为本次收货的清单依据，之后依据订单信息采集核对物料,系统自动累计物料总数量、核对物料是否与订单相符。</li>
                                                <li class="list-group-item">7.入库上架据库位提醒工具的信息提示，仓管员可快速找到最近、最空的库位，将物料存放到位后采集库位条形码标签，自动生成金蝶K3系统外购入库单，即时完成采购入库业务操作。 针对部分企业先执行金蝶K3系统外购入库单的手工录入，先保证账面数据准确，然后实物的入库依照外购入库单持依照金蝶K/3ERP系统外购入库单为源单依据，采集核对实物条形码，物料清单完全采集匹配后再在手持终端设备上提交审核外购入库单。</li>
                                                <li class="list-group-item">8.物流状态跟踪自动更新，供应商、企业均可在线实时查看物流状态</li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-6" style="text-align: left">
                                    <div class="card" style="width: 100%;">
                                        <div class="card-header">2）仓库管理</div>
                                        <div class="card-body">
                                            <ul class="list-group">
                                                <li class="list-group-item">1.托盘管理：托盘类型条形码标签，采集托盘标签条形码，再采集物料标签条形码，将物料“装箱”入托盘中，装箱操作后，通过采集托盘标签条形码，系统会自动解析托盘内物料信息，即仅需采集一次托盘标签条形码就可完成托盘内所有物料的出、入库。既可减少数据采集工作量又避免人为遗漏。</li>
                                                <li class="list-group-item">2.容器管理：针对周转桶、量杯等容器系统提供容器类型条形码标签，与普通类型条形码标签一样，容器类型条形码标签也具有物料信息、批次、生产/采购日期、数量等属性，但容器类型条形码标签在新生成时，数量属性为初始数量，而在执行出、入库采集操作后，容器类型条形码标签的数量会自动增、减，即时数量以数据库为准，即可以将容器类型条形码标签视为移动的库位，避免了由于数量变动频繁重打标签的资源浪费。</li>
                                                <li class="list-group-item">3.库存盘点：符合金蝶K3盘点机制，依据方案编号将金蝶K3盘点方案下载到手持终端设备上，执行仓库盘点随走随盘，采集物料条形码标签，系统自动校验当前物料是否存在于盘点方案中，输入盘点数量后，自动生成金蝶K3盘点记录单。</li>
                                                <li class="list-group-item">4.移库：采集库存物料条形码，手持终端设备上自动读取出物料当前所在的仓库、仓位、数量、批次等数据，将该物料移动至另一个库位后，再采集所在新库位的库位条形码，自动生成金蝶K3系统仓库调拨单。</li>
                                                <li class="list-group-item">5.领料：支持以金蝶K3系统生产任务单为源单依据执行生产领料操作，采集生产任务单单号条形码或设定检索条件选择一张未结案的生产任务单，下载到手持终端设备上作为领料出库依据，使用库存查看工具可逐一显示投料物料的库存状态，并且可按照用户设定的条件显示排序，如按库位、批次、数量排序等，也可以强制实现必须领用排列顺序靠前的物料，采集所领料出库的物料条形码上传提交，自动生成金蝶K3生产领料单。可自动审核。</li>
                                                <li class="list-group-item">6.库存查询：采集物料条形码标签，系统自动读取金蝶K3系统即时库存数据，显示当前所采集物料的规格、批次、数量、所在仓库、所在仓位等。 采集库位条形码标签系统则罗列当前库位所存放的全部物料信息。 数据显示排序方式可由用户按管理需要自定义。</li>
                                                <li class="list-group-item">7.采集校验：针对部分企业先在金蝶K3系统手工录入业务单据。先保证账面数据准确，然后实物的出、入库依照业务单据进行核对的操作方式台也支持依照金蝶K3系统业务单据为源单依据，如其他出库单、其他入库单、调拨单等，采集核对实物条形码，物料清单完全采集匹配后再在手持终端设备上提交审核业务单据。</li>
                                                <li class="list-group-item">8.其他出、入库：支持金蝶K3其他出、入库业务单据的采集新增、采集校验。</li>
                                                <li class="list-group-item">9.虚仓管理：支持金蝶K3虚仓出、入库业务单据的采集新增、采集校验。</li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="row" style="margin-top: 10px">
                                <div class="col-md-6" style="text-align: left">
                                    <div class="card" style="width: 100%;">
                                        <div class="card-header">3）生产管理</div>
                                        <div class="card-body">
                                            <ul class="list-group">
                                                <li class="list-group-item">1.工序流转卡：依据下达的金蝶K3生产任务单，将所有生产工序合并打印在一张工序流转卡上，包含生产任务单单号条码、工序条码、工作中心条码等数据。随生产过程流转。便于生产过程中的数据采集录入和生产状态查询。</li>
                                                <li class="list-group-item">2.工序派工状态：使用手持终端采集生产任务单单号条形码。查询生产任务派工信息。实时显示派工单完工状态,方便车间现场调配资源。</li>
                                                <li class="list-group-item">3.工序开工：工位工序开工时采集所属工序条码，校验生产工序的可执行性，采集原料条形码，校验投产物料的正确性，并记录开工时间、操作者等信息。</li>
                                                <li class="list-group-item">4.工序完工：工位工序完工时采集所属工序条码，系统自动带出当前工序在开工采集录入的信息，如投产物料信息,此时需要记录完工时间、完工数量等信息，自动生成金蝶K3工序汇报单。</li>
                                                <li class="list-group-item">5.在产状态跟踪：采集生产任务单单号条形码，快速查询生产任务执行状态数据。 采集工序条形码，快速查询当前生产任务完成状态、当前工序执行状态、是否还有下道工序等。 采集操作员条形码，快速查询当前操作员所处工序状态数据。</li>
                                                <li class="list-group-item">6.产成品标签：以金蝶K3生产任务单为依据，打印产成品条形码标签，支持按照定包装数自动计算标签张数、验证已打印数量、自动读取电子秤读数等功能。</li>
                                                <li class="list-group-item">7.产成品装箱：产成品从小计量单位包装入大计量单位中，依次采集两种计量单位外包装标签条形码，即在系统中完成装箱操作，系统最大支持50级次的装箱操作，装箱采集操作完毕后，系统通过最外层包装标签条形码便可以自动解析出内部所有产品件，避免出、入库采集操作必须开箱采集明细产品件条形码的不便。</li>
                                                <li class="list-group-item">8.产成品入库：根据库位提醒工具的信息提示，仓管员可快速找到最近、最空的库位，将产成品存放到位后采集库位条形码标签，自动生成金蝶K3系统产品入库单，即时完成产成品入库业务操作。 针对部分企业先执行金蝶K3系统产品入库单的手工录入。先保证账面数据准确，然后实物的入库依照产品入持依照金蝶K3系统产品入库单为源单依据，采集核对实物条形码，物料清单完全采集匹配后再在手持终端设备上提交审核产品入库单。</li>
                                                <li class="list-group-item">9.产品档案管理：记录原材料与产成品之间的关系，建立详尽的产品质量档案，通过条形码快速检索成品批次、原材料批次、生产日期、生产者等信息。</li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-6" style="text-align: left">
                                    <div class="card" style="width: 100%;">
                                        <div class="card-header">4）销售管理</div>
                                        <div class="card-body">
                                            <ul class="list-group">
                                                <li class="list-group-item">1.发货校验：库位提醒工具的信息提示，仓管员可快速找到批次最早的产成品，将产成品下架后采集库位条形码标签，自动生成金蝶K3系统销售出库单，即时完成销售出库业务操作。 针对部分企业先执行金蝶K3系统销售出库单的手工录入，先保证账面数据准确，然后实物的出库依照持依照金蝶K3系统销售出库单为源单依据，采集核对实物条形码，物料清单，完全采集匹配后再在手持终端设备上提交审核销售出库单。</li>
                                                <li class="list-group-item">2.装箱清单:采集托盘标签条形码,再采集物料标签条形码,将物料“装箱”入托盘中,装箱操作后,通过采集托盘标签条形码,系统会自动解析托盘内物料信息,即仅需采集一次托盘标签条形码就可完成托盘内所有物料的出、入库,既可减少数据采集工作量又避免人为遗漏。 装箱操作后也可在系统中打印带有详尽产品信息的装箱清单作为销售出库单的附件,不仅装箱清单格式可以用户自定义,还可以将明细的产品条形码打印在上面,目录清晰管理方便。</li>
                                                <li class="list-group-item">3.物流状态跟踪自动更新:客户、企业均可在线实时查看物流状态。</li>
                                                <li class="list-group-item">4.产品档案管理:客户、企业均可在线实时检索产品质量档案,通过条形码快速检索成品批次、原材料批次、生产日期、销售日期、保质期等信息。</li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<script>
    $(function(){
        // 初始化轮播
        $(".start-slide").click(function(){
            $("#myCarousel").carousel('cycle');
        });
        // 停止轮播
        $(".pause-slide").click(function(){
            $("#myCarousel").carousel('pause');
        });
        // 循环轮播到上一个项目
        $(".prev-slide").click(function(){
            $("#myCarousel").carousel('prev');
        });
        // 循环轮播到下一个项目
        $(".next-slide").click(function(){
            $("#myCarousel").carousel('next');
        });
        // 循环轮播到某个特定的帧
        $(".slide-one").click(function(){
            $("#myCarousel").carousel(0);
        });
        $(".slide-two").click(function(){
            $("#myCarousel").carousel(1);
        });
        $(".slide-three").click(function(){
            $("#myCarousel").carousel(2);
        });
    });
</script>

<!-- 底部布局-->
<%--<jsp:include page="item_foot.jsp"/>--%>

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
<%--<div class="row" style="margin: 50px">--%>
    <%--<div class="foot card" style="background: aliceblue">--%>
        <%--<div class="card-body">--%>
            <%--<h3 class="card-text">深圳市方左科技有限公司</h3>--%>
            <%--<p class="card-text"></p>--%>
            <%--<p class="card-text">企业类型：有限责任公司</p>--%>
            <%--<p class="card-text">主营产品：金蝶PDA|PDA软件定制开发|条码采集软件程序开发</p>--%>
            <%--<p class="card-text">公司地址：深圳市龙岗区横岗街道横一路33号凯达安商务中心B座806</p>--%>
            <%--<p class="card-text">联系电话：邱经理 18319928705</p>--%>
            <%--<!-- <a href="#" class="card-link">Card link</a>--%>
            <%--<a href="#" class="card-link">Another link</a> -->--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
</body>


</html>
