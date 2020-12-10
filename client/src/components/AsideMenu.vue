<template>
    <div id="asideMenu">
        <div class="category">
            <ul>
                <li>
                    <router-link to="/">家用电器</router-link>
                    <div class="submenu">
                        <div>
                            <dl>
                                <dt><span>电视</span></dt>
                                <dd>
                                    <router-link to="/list/1">超薄电视</router-link>
                                    <router-link to="/list/2">全面屏电视</router-link>
                                    <router-link to="/list/3">智能电视</router-link>
                                    <router-link to="/list/4">OLED电视</router-link>
                                    <router-link to="/list/5">智慧屏</router-link>
                                    <router-link to="/list/6">4k超清电视</router-link>
                                    <router-link to="/list/7">55英寸</router-link>
                                    <router-link to="/list/8">65英寸</router-link>
                                    <router-link to="/list/9">电视配件</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>空调</span></dt>
                                <dd>
                                    <router-link to="/list/11">空调挂件</router-link>
                                    <router-link to="/list/12">空调柜机</router-link>
                                    <router-link to="/list/13">中央空调</router-link>
                                    <router-link to="/list/14">变频空调</router-link>
                                    <router-link to="/list/15">移动空调</router-link>
                                    <router-link to="/list/16">一级效能</router-link>
                                    <router-link to="/list/17">以旧换新</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>洗衣机</span></dt>
                                <dd>
                                    <router-link to="/list/21">滚筒洗衣机</router-link>
                                    <router-link to="/list/22">洗烘一体机</router-link>
                                    <router-link to="/list/23">波轮洗衣机</router-link>
                                    <router-link to="/list/24">迷你洗衣机</router-link>
                                    <router-link to="/list/25">烘干机</router-link>
                                    <router-link to="/list/26">洗衣机配件</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>厨卫</span></dt>
                                <dd>
                                    <router-link to="/list/31">油烟机</router-link>
                                    <router-link to="/list/32">燃气灶</router-link>
                                    <router-link to="/list/33">集成灶</router-link>
                                    <router-link to="/list/34">洗碗机</router-link>
                                    <router-link to="/list/35">电热水器</router-link>
                                    <router-link to="/list/36">消毒柜</router-link>
                                    <router-link to="/list/37">太阳能热水器</router-link>
                                    <router-link to="/list/38">电烤炉</router-link>
                                    <router-link to="/list/39">电饭煲</router-link>
                                    <router-link to="/list/40">电磁炉</router-link>
                                    <router-link to="/list/41">豆浆机</router-link>
                                    <router-link to="/list/42">咖啡机</router-link>
                                    <router-link to="/list/43">面包机</router-link>
                                    <router-link to="/list/44">微波炉</router-link>
                                    <router-link to="/list/45">热水壶</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>生活电器</span></dt>
                                <dd>
                                    <router-link to="/list/51">取暖器</router-link>
                                    <router-link to="/list/52">吸尘器</router-link>
                                    <router-link to="/list/53">除螨仪</router-link>
                                    <router-link to="/list/54">除湿机</router-link>
                                    <router-link to="/list/55">干衣机</router-link>
                                    <router-link to="/list/56">饮水机</router-link>
                                    <router-link to="/list/57">电风扇</router-link>
                                    <router-link to="/list/58">加湿器</router-link>
                                    <router-link to="/list/59">空气净化器</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>个护健康</span></dt>
                                <dd>
                                    <router-link to="/list/61">剃须刀</router-link>
                                    <router-link to="/list/62">电动牙刷</router-link>
                                    <router-link to="/list/63">吹风机</router-link>
                                    <router-link to="/list/64">美容仪</router-link>
                                    <router-link to="/list/65">洁面仪</router-link>
                                    <router-link to="/list/66">按摩仪</router-link>
                                    <router-link to="/list/67">健康秤</router-link>
                                    <router-link to="/list/68">卷/直发棒</router-link>
                                    <router-link to="/list/69">足浴盆</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>视听影音</span></dt>
                                <dd>
                                    <router-link to="/list/71">家庭影院</router-link>
                                    <router-link to="/list/72">KTV音箱</router-link>
                                    <router-link to="/list/73">迷你音箱</router-link>
                                    <router-link to="/list/74">DVD</router-link>
                                    <router-link to="/list/75">回音壁</router-link>
                                    <router-link to="/list/76">麦克风</router-link>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li>
                    <router-link to="/">手机</router-link>
                    /
                    <router-link to="/">数码</router-link>
                    /
                    <router-link to="/">运营商</router-link>
                    <div class="submenu">
                        <div>
                            <dl>
                                <dt><span>手机</span></dt>
                                <dd>
                                    <router-link to="/list/81">游戏手机</router-link>
                                    <router-link to="/list/81">5G手机</router-link>
                                    <router-link to="/list/81">拍照手机</router-link>
                                    <router-link to="/list/81">全面屏手机</router-link>
                                    <router-link to="/list/81">老年机</router-link>
                                    <router-link to="/list/81">对讲机</router-link>
                                    <router-link to="/list/81">手机维修</router-link>
                                    <router-link to="/list/81">以旧换新</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>手机配件</span></dt>
                                <dd>
                                    <router-link to="/list/91">手机壳</router-link>
                                    <router-link to="/list/91">存储卡</router-link>
                                    <router-link to="/list/91">数据线</router-link>
                                    <router-link to="/list/91">充电器</router-link>
                                    <router-link to="/list/91">蓝牙耳机</router-link>
                                    <router-link to="/list/91">移动电源</router-link>
                                    <router-link to="/list/91">手机电池</router-link>
                                    <router-link to="/list/91">贴膜</router-link>
                                    <router-link to="/list/91">手机支架</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>摄影摄像</span></dt>
                                <dd>
                                    <router-link to="/list/101">数码相机</router-link>
                                    <router-link to="/list/101">微单相机</router-link>
                                    <router-link to="/list/101">单反相机</router-link>
                                    <router-link to="/list/101">拍立得</router-link>
                                    <router-link to="/list/101">运动相机</router-link>
                                    <router-link to="/list/101">摄像机</router-link>
                                    <router-link to="/list/101">户外器材</router-link>
                                    <router-link to="/list/101">数码相框</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>数码配件</span></dt>
                                <dd>
                                    <router-link to="/list/111">存储卡</router-link>
                                    <router-link to="/list/111">三脚架/云台</router-link>
                                    <router-link to="/list/111">相机包</router-link>
                                    <router-link to="/list/111">滤镜</router-link>
                                    <router-link to="/list/111">闪光灯</router-link>
                                    <router-link to="/list/111">手柄</router-link>
                                    <router-link to="/list/111">相机清洁</router-link>
                                    <router-link to="/list/111">充电器</router-link>
                                    <router-link to="/list/111">镜头附件</router-link>
                                    <router-link to="/list/111">机身附件</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>智能设备</span></dt>
                                <dd>
                                    <router-link to="/list/121">智能手环</router-link>
                                    <router-link to="/list/121">智能手表</router-link>
                                    <router-link to="/list/121">智能眼镜</router-link>
                                    <router-link to="/list/121">智能机器人</router-link>
                                    <router-link to="/list/121">运动跟踪器</router-link>
                                    <router-link to="/list/121">健康监测</router-link>
                                    <router-link to="/list/121">智能配饰</router-link>
                                    <router-link to="/list/121">智能家居</router-link>
                                    <router-link to="/list/121">体感车</router-link>
                                    <router-link to="/list/121">无人机</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>电子教育</span></dt>
                                <dd>
                                    <router-link to="/list/131">学生平板</router-link>
                                    <router-link to="/list/131">点读机/笔</router-link>
                                    <router-link to="/list/131">早教益智</router-link>
                                    <router-link to="/list/131">录音笔</router-link>
                                    <router-link to="/list/131">电子书</router-link>
                                    <router-link to="/list/131">电子词典</router-link>
                                    <router-link to="/list/131">复读机</router-link>
                                    <router-link to="/list/131">翻译机</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>运营商</span></dt>
                                <dd>
                                    <router-link to="/list/141">中国移动</router-link>
                                    <router-link to="/list/141">中国联通</router-link>
                                    <router-link to="/list/141">中国电信</router-link>
                                    <router-link to="/list/141">手机靓号</router-link>
                                    <router-link to="/list/141">宽带</router-link>
                                    <router-link to="/list/141">充话费/流量</router-link>
                                    <router-link to="/list/141">手机卡</router-link>
                                    <router-link to="/list/141">合约卡</router-link>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li>
                    <router-link to="/">电脑</router-link>
                    /
                    <router-link to="/">办公</router-link>
                    <div class="submenu">
                        <div>
                            <dl>
                                <dt><span>电脑整机</span></dt>
                                <dd>
                                    <router-link to="/list/151">笔记本</router-link>
                                    <router-link to="/list/151">游戏币</router-link>
                                    <router-link to="/list/151">平板电脑</router-link>
                                    <router-link to="/list/151">台式机</router-link>
                                    <router-link to="/list/151">一体机</router-link>
                                    <router-link to="/list/151">服务器/工作站</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>电脑配件</span></dt>
                                <dd>
                                    <router-link to="/list/161">显示器</router-link>
                                    <router-link to="/list/161">CPU</router-link>
                                    <router-link to="/list/161">主板</router-link>
                                    <router-link to="/list/161">显卡</router-link>
                                    <router-link to="/list/161">硬盘</router-link>
                                    <router-link to="/list/161">内存</router-link>
                                    <router-link to="/list/161">机箱</router-link>
                                    <router-link to="/list/161">电源</router-link>
                                    <router-link to="/list/161">散热器</router-link>
                                    <router-link to="/list/161">显示器支架</router-link>
                                    <router-link to="/list/161">刻录机/光驱</router-link>
                                    <router-link to="/list/161">声卡/扩展卡</router-link>
                                    <router-link to="/list/161">装机配件</router-link>
                                    <router-link to="/list/161">SSD固态硬盘</router-link>
                                    <router-link to="/list/161">组装电脑</router-link>
                                    <router-link to="/list/161">USB分线器</router-link>
                                    <router-link to="/list/161">主板CPU套餐</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>外设</span></dt>
                                <dd>
                                    <router-link to="/list/171">鼠标</router-link>
                                    <router-link to="/list/171">键盘</router-link>
                                    <router-link to="/list/171">键鼠套装</router-link>
                                    <router-link to="/list/171">网络仪表仪器</router-link>
                                    <router-link to="/list/171">U盘</router-link>
                                    <router-link to="/list/171">移动硬盘</router-link>
                                    <router-link to="/list/171">鼠标垫</router-link>
                                    <router-link to="/list/171">摄像头</router-link>
                                    <router-link to="/list/171">线缆</router-link>
                                    <router-link to="/list/171">手写板</router-link>
                                    <router-link to="/list/171">硬盘盒</router-link>
                                    <router-link to="/list/171">电脑工具</router-link>
                                    <router-link to="/list/171">电脑清洁</router-link>
                                    <router-link to="/list/171">插座</router-link>
                                    <router-link to="/list/171">平板电脑配件</router-link>
                                    <router-link to="/list/171">笔记本配件</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>游戏设备</span></dt>
                                <dd>
                                    <router-link to="/list/181">游戏机</router-link>
                                    <router-link to="/list/181">游戏耳机</router-link>
                                    <router-link to="/list/181">手柄/方向盘</router-link>
                                    <router-link to="/list/181">游戏软件</router-link>
                                    <router-link to="/list/181">游戏周边</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>网络产品</span></dt>
                                <dd>
                                    <router-link to="/list/191">路由器</router-link>
                                    <router-link to="/list/191">网络机顶盒</router-link>
                                    <router-link to="/list/191">交换机</router-link>
                                    <router-link to="/list/191">网络存储</router-link>
                                    <router-link to="/list/191">网卡</router-link>
                                    <router-link to="/list/191">5G/4G上网</router-link>
                                    <router-link to="/list/191">网线</router-link>
                                    <router-link to="/list/191">网络配件</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>办公设备</span></dt>
                                <dd>
                                    <router-link to="/list/201">投影机</router-link>
                                    <router-link to="/list/201">投影配件</router-link>
                                    <router-link to="/list/201">打印机</router-link>
                                    <router-link to="/list/201">传真机</router-link>
                                    <router-link to="/list/201">验钞/点钞机</router-link>
                                    <router-link to="/list/201">扫描设备</router-link>
                                    <router-link to="/list/201">碎纸机</router-link>
                                    <router-link to="/list/201">考勤门禁</router-link>
                                    <router-link to="/list/201">收银机</router-link>
                                    <router-link to="/list/201">保险柜</router-link>
                                    <router-link to="/list/201">安防监控</router-link>
                                </dd>
                            </dl>
                            <dl>
                                <dt><span>文具</span></dt>
                                <dd>
                                    <router-link to="/list/211">笔</router-link>
                                    <router-link to="/list/211">本册</router-link>
                                    <router-link to="/list/211">办公文具</router-link>
                                    <router-link to="/list/211">文件收纳</router-link>
                                    <router-link to="/list/211">学生文具</router-link>
                                    <router-link to="/list/211">计算器</router-link>
                                    <router-link to="/list/211">画具画材</router-link>
                                    <router-link to="/list/211">文房四宝</router-link>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li>
                    <router-link to="/">家居</router-link>
                    /
                    <router-link to="/">家具</router-link>
                    /
                    <router-link to="/">家装</router-link>
                    /
                    <router-link to="/">厨具</router-link>
                    <div class="submenu">
                        <div>
                            <dl>
                                <dt><span>家装饰品</span></dt>
                                <dd>
                                    <router-link to="/list/151">柜子</router-link>
                                    <router-link to="/list/151">沙发</router-link>
                                    <router-link to="/list/151">座椅</router-link>
                                    <router-link to="/list/151">床</router-link>
                                    <router-link to="/list/151">梳妆台</router-link>
                                    <router-link to="/list/151">书架</router-link>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li>
                    <router-link to="/">男装</router-link>
                    /
                    <router-link to="/">女装</router-link>
                    /
                    <router-link to="/">内衣</router-link>
                    <div class="submenu">
                        <div>
                            <dl>
                                <dt><span>电脑整机</span></dt>
                                <dd>
                                    <router-link to="/list/151">笔记本</router-link>
                                    <router-link to="/list/151">游戏币</router-link>
                                    <router-link to="/list/151">平板电脑</router-link>
                                    <router-link to="/list/151">台式机</router-link>
                                    <router-link to="/list/151">一体机</router-link>
                                    <router-link to="/list/151">服务器/工作站</router-link>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li>
                    <router-link to="/">个护化妆</router-link>
                    /
                    <router-link to="/">清洁用品</router-link>
                    <div class="submenu">
                        <div>
                            <dl>
                                <dt><span>电脑整机</span></dt>
                                <dd>
                                    <router-link to="/list/151">笔记本</router-link>
                                    <router-link to="/list/151">游戏币</router-link>
                                    <router-link to="/list/151">平板电脑</router-link>
                                    <router-link to="/list/151">台式机</router-link>
                                    <router-link to="/list/151">一体机</router-link>
                                    <router-link to="/list/151">服务器/工作站</router-link>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li>
                    <router-link to="/">鞋靴</router-link>
                    /
                    <router-link to="/">箱包</router-link>
                    /
                    <router-link to="/">珠宝</router-link>
                    /
                    <router-link to="/">奢侈品</router-link>
                    <div class="submenu">
                        <div>
                            <dl>
                                <dt><span>电脑整机</span></dt>
                                <dd>
                                    <router-link to="/list/151">笔记本</router-link>
                                    <router-link to="/list/151">游戏币</router-link>
                                    <router-link to="/list/151">平板电脑</router-link>
                                    <router-link to="/list/151">台式机</router-link>
                                    <router-link to="/list/151">一体机</router-link>
                                    <router-link to="/list/151">服务器/工作站</router-link>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li>
                    <router-link to="/">运动户外</router-link>
                    /
                    <router-link to="/">钟表</router-link>
                    <div class="submenu">
                        <div>
                            <dl>
                                <dt><span>电脑整机</span></dt>
                                <dd>
                                    <router-link to="/list/151">笔记本</router-link>
                                    <router-link to="/list/151">游戏币</router-link>
                                    <router-link to="/list/151">平板电脑</router-link>
                                    <router-link to="/list/151">台式机</router-link>
                                    <router-link to="/list/151">一体机</router-link>
                                    <router-link to="/list/151">服务器/工作站</router-link>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li>
                    <router-link to="/">汽车</router-link>
                    /
                    <router-link to="/">汽车用品</router-link>
                    <div class="submenu">
                        <div>
                            <dl>
                                <dt><span>电脑整机</span></dt>
                                <dd>
                                    <router-link to="/list/151">笔记本</router-link>
                                    <router-link to="/list/151">游戏币</router-link>
                                    <router-link to="/list/151">平板电脑</router-link>
                                    <router-link to="/list/151">台式机</router-link>
                                    <router-link to="/list/151">一体机</router-link>
                                    <router-link to="/list/151">服务器/工作站</router-link>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li>
                    <router-link to="/">母婴</router-link>
                    /
                    <router-link to="/">玩具乐器</router-link>
                    <div class="submenu">
                        <div>
                            <dl>
                                <dt><span>电脑整机</span></dt>
                                <dd>
                                    <router-link to="/list/151">笔记本</router-link>
                                    <router-link to="/list/151">游戏币</router-link>
                                    <router-link to="/list/151">平板电脑</router-link>
                                    <router-link to="/list/151">台式机</router-link>
                                    <router-link to="/list/151">一体机</router-link>
                                    <router-link to="/list/151">服务器/工作站</router-link>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li>
                    <router-link to="/">营养保健</router-link>
                    <div class="submenu">
                        <div>
                            <dl>
                                <dt><span>电脑整机</span></dt>
                                <dd>
                                    <router-link to="/list/151">笔记本</router-link>
                                    <router-link to="/list/151">游戏币</router-link>
                                    <router-link to="/list/151">平板电脑</router-link>
                                    <router-link to="/list/151">台式机</router-link>
                                    <router-link to="/list/151">一体机</router-link>
                                    <router-link to="/list/151">服务器/工作站</router-link>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li>
                    <router-link to="/">图书</router-link>
                    /
                    <router-link to="/">音像</router-link>
                    <div class="submenu">
                        <div>
                            <dl>
                                <dt><span>电脑整机</span></dt>
                                <dd>
                                    <router-link to="/list/151">笔记本</router-link>
                                    <router-link to="/list/151">游戏币</router-link>
                                    <router-link to="/list/151">平板电脑</router-link>
                                    <router-link to="/list/151">台式机</router-link>
                                    <router-link to="/list/151">一体机</router-link>
                                    <router-link to="/list/151">服务器/工作站</router-link>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
import '../assets/css/component/asideMenu.css'
export default {
    
}
</script>