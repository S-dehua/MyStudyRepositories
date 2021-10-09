package com.atguigu.crowd.test;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.atguigu.crowd.entity.Admin;
import com.atguigu.crowd.entity.Role;
import com.atguigu.crowd.mapper.AdminMapper;
import com.atguigu.crowd.mapper.RoleMapper;
import com.atguigu.crowd.service.api.AdminService;

import ch.qos.logback.classic.Logger;

//在类上标记必要的注解，Spring整合Junit
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-persist-mybatis.xml" ,"classpath:spring-persist-tx.xml"})
public class CrowdTest {

	@Autowired
	private DataSource dataSource;

	@Autowired
	private AdminMapper adminMapper;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private RoleMapper roleMapper;
	
	
	@Test
	public void insertRole() {
		for (int i = 1; i <235; i++) {
			roleMapper.insert(new Role(null,"role-"+i));
		}
	}
	
	@Test
	public void testTx() {
		Admin admin = new Admin(null,"Jerry","123456","杰瑞","jerry@qq.com",null);
		adminService.saveAdmin(admin);
	}
	
	
	@Test
	public void testLog() {
		//1 获取Logger对象
		Logger logger = (Logger) LoggerFactory.getLogger(CrowdTest.class);
		
		//2 根据不同的日志级别打印日志
		logger.debug("Hello I am Debug Level!");
		logger.debug("Hello I am Debug Level!");
		logger.debug("Hello I am Debug Level!");
		
		logger.info("Sorry I am Info Level!");
		logger.info("Sorry I am Info Level!");
		
		logger.warn("Warn Level!");
		logger.warn("Warn Level!");
		logger.warn("Warn Level!");
		
		logger.error("This is Error!");
	}
	
	
	@Test
	public void insertRandomAdminName() {
		Admin admin = new Admin();
		for (int i = 57; i < 10000; i++) {
			admin.setId(null);
			admin.setLoginAcct(getEnglishName());
			admin.setUserPswd("E10ADC3949BA59ABBE56E057F20F883E");
			admin.setUserName(getChilesName());
			admin.setEmail(admin.getLoginAcct()+"@qq.com");
			int count = adminMapper.insertSelective(admin);
		}
		System.out.println("插入完毕");
	}
	

	@Test
	public void testInsertAdmin() {
		Admin admin = new Admin(null, "mike", "123456", "麦克", "mike@qq.com", null);
		int count = adminMapper.insertSelective(admin);
		System.out.println("受影响的行数：" + count);
		
		//====
		
		
	}

	@Test
	public void testConnection() throws SQLException {
		Connection connection = dataSource.getConnection();
		System.out.println(connection);
	}
	
	 //获得随机姓名
    public static String getChilesName(){

        //百家姓(用数组的方式存取)
        String[] family_name={"赵","钱","孙","李","周","吴","郑","王","冯","陈","褚","卫","蒋","沈","韩","杨","朱","秦","尤","许",
                "何","吕","施","张","孔","曹","严","华","金","魏","陶","姜","戚","谢","邹","喻","柏","水","窦","章","云","苏","潘","葛","奚","范","彭","郎",
                "鲁","韦","昌","马","苗","凤","花","方","俞","任","袁","柳","酆","鲍","史","唐","费","廉","岑","薛","雷","贺","倪","汤","滕","殷",
                "罗","毕","郝","邬","安","常","乐","于","时","傅","皮","卞","齐","康","伍","余","元","卜","顾","孟","平","黄","和",
                "穆","萧","尹","姚","邵","湛","汪","祁","毛","禹","狄","米","贝","明","臧","计","伏","成","戴","谈","宋","茅","庞","熊","纪","舒",
                "屈","项","祝","董","梁","杜","阮","蓝","闵","席","季","麻","强","贾","路","娄","危","江","童","颜","郭","梅","盛","林","刁","钟",
                "徐","邱","骆","高","夏","蔡","田","樊","胡","凌","霍","虞","万","支","柯","昝","管","卢","莫","经","房","裘","缪","干","解","应",
                "宗","丁","宣","贲","邓","郁","单","杭","洪","包","诸","左","石","崔","吉","钮","龚","程","嵇","邢","滑","裴","陆","荣","翁","荀",
                "羊","于","惠","甄","曲","家","封","芮","羿","储","靳","汲","邴","糜","松","井","段","富","巫","乌","焦","巴","弓","牧","隗","山",
                "谷","车","侯","宓","蓬","全","郗","班","仰","秋","仲","伊","宫","宁","仇","栾","暴","甘","钭","厉","戎","祖","武","符","刘","景",
                "詹","束","龙","叶","幸","司","韶","郜","黎","蓟","溥","印","宿","白","怀","蒲","邰","从","鄂","索","咸","籍","赖","卓","蔺","屠",
                "蒙","池","乔","阴","郁","胥","能","苍","双","闻","莘","党","翟","谭","贡","劳","逄","姬","申","扶","堵","冉","宰","郦","雍","却",
                "璩","桑","桂","濮","牛","寿","通","边","扈","燕","冀","浦","尚","农","温","别","庄","晏","柴","瞿","阎","充","慕","连","茹","习",
                "宦","艾","鱼","容","向","古","易","慎","戈","廖","庾","终","暨","居","衡","步","都","耿","满","弘","匡","国","文","寇","广","禄",
                "阙","东","欧","殳","沃","利","蔚","越","夔","隆","师","巩","厍","聂","晁","勾","敖","融","冷","訾","辛","阚","那","简","饶","空",
                "曾","毋","沙","乜","养","鞠","须","丰","巢","关","蒯","相","查","后","荆","红","游","郏","竺","权","逯","盖","益","桓","公","仉",
                "督","岳","帅","缑","亢","况","郈","有","琴","归","海","晋","楚","闫","法","汝","鄢","涂","钦","商","牟","佘","佴","伯","赏","墨",
                "哈","谯","篁","年","爱","阳","佟","言","福","南","火","铁","迟","漆","官","冼","真","展","繁","檀","祭","密","敬","揭","舜","楼",
                "疏","冒","浑","挚","胶","随","高","皋","原","种","练","弥","仓","眭","蹇","覃","阿","门","恽","来","綦","召","仪","风","介","巨",
                "木","京","狐","郇","虎","枚","抗","达","杞","苌","折","麦","庆","过","竹","端","鲜","皇","亓","老","是","秘","畅","邝","还","宾",
                "闾","辜","纵","侴","万俟","司马","上官","欧阳","夏侯","诸葛","闻人","东方","赫连","皇甫","羊舌","尉迟","公羊","澹台","公冶","宗正",
                "濮阳","淳于","单于","太叔","申屠","公孙","仲孙","轩辕","令狐","钟离","宇文","长孙","慕容","鲜于","闾丘","司徒","司空","兀官","司寇",
                "南门","呼延","子车","颛孙","端木","巫马","公西","漆雕","车正","壤驷","公良","拓跋","夹谷","宰父","谷梁","段干","百里","东郭","微生",
                "梁丘","左丘","东门","西门","南宫","第五","公仪","公乘","太史","仲长","叔孙","屈突","尔朱","东乡","相里","胡母","司城","张廖","雍门",
                "毋丘","贺兰","綦毋","屋庐","独孤","南郭","北宫","王孙"};

        //常见名(用字符串的方式存取)

        String name1="楠明 裕昊 智棋 皓福 敬坤 渊荣 景尧 敬洪 朝实 善玮 朝棋 朝寒"+
                " 楷林 景瑞 琪洋 捷杰 寒柏 敬易 涛光 鼎益 朝波 新明 昌震 皓翔"+
                " 乔豪 敬轩 尚兴 皓清 裕明 杰宇 岩乐 乔宁 乔诚 川善 东辉 皓宁"+
                " 雄杰 金锋 涛宇 楠峻 靖轩 尚欧 琪哲 皓景 昊辉 雨锋 智凯 捷旭";

        //产生随机姓
        int family_index=(int)(Math.random()*(family_name.length));

        //产生随机名
        //不能这样写，因为空格在字符串中也算字符，这样匹配到空格的话，就只有姓了
        //int name_index=(int) (Math.random()*(name1.length()));//接下来用name1.charAt(name_index);
		//正确方法：
        //字符串分割(结果：字符串数组)
        String[] first_name = name1.split(" ");//转换成字符串数组
        int first_index = (int)(Math.random()*(first_name.length));
        //产生随机姓名(字符串拼接)
        String name=""+family_name[family_index]+first_name[first_index];
        return name;
    }
    //获得随机姓名
    public static String getEnglishName(){
    	
    	//百家姓(用数组的方式存取)
    	String[] family_name={"A","B","C","D","E","F","G","H","I","G","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};
    	
    	//常见名(用字符串的方式存取)
    	
    	String name1="aron bagael bbe bbra bdel elard odod iod poe nik qad qiop"+
    			"aai trr adi erq towms ioas ppdle ttis lytis oock ipoot iur"+
    			" sfgc afgas quwz iocdaz tuqaic misas tuqat bbais ahip ooaics gaic xacs"+
    			" cgsah eawqq wqegu rtdy yiqe eeyu gggr hewh thqa wfgbb sefdf eghh swsaef"+
    			" tdc rsfgg jkjy wdad adewa esfsa ntyea vsqds vrrdyh aefvv feaee fggre"+
    			" ryg ddgdr htwff gews gseegg hjftj jjtsg jtjt uwiii jdrqw qaeed fgghh"+
    			" juo wdwdv hhwtt thagh tuqqic mifass tauqt bbis hip ooics gaic xcgas"+
    			" fewi ffee uidu ryh thgha thttf vsse fesvb bdbbdr rydd grd grdd"+
    			" dqhj nnwngg jgt fhty tuqic esff efsf effe esed ooics gdgd dggdf"+
    			" jres iisiy wss bngg tuqic esaf ewqv hrtyh fbjg njyu hth hntgf"+
    			" bkyui uuut fttt btar dfvb miefdss dwabn dbwd ddqw drwd drww fghfb"+
    			" eyi tthi wety ggar rrgj jtyr hterr rgruu uewqjd feggr htrsz gedgsg"+
    			" gruio yyyi ajbg aklga aifgo aiof tuqt dsid geshe apjog fpkjga jfpakl"+
    			"aas errr iyuus inger erty ghir toax oosd daws wgqic iogf fegqer"+
    			"arqon bagaeql bqbe bbrqa bdqel elaqd ododq iodq qqoe nqik qaqd qiqop"+
    			"aqai trqr qdi eqrq towqms ioqas ppdqle tqtis lytqis ooqck ipqoot iqur"+
    			" sfqgc aqfgas quqwz ioqcdaz tuqqaic mqsas tuqqat bbaiqs ahiqp ooqaics gqaic xaqcs"+
    			" cgsqah eawqqq wqeqgu rtqdy yqiqe eeqyu ggqgr heqwh thqqa wfgbb seqdf eqghh swqsaef"+
    			" tdqc rsfqgg jqkjy wdqad adewaq esfqsa ntyqea vsqqds vrqrdyh aeqfvv feaeeq qfggre"+
    			" ryqg dqdgdr hqtwff geqws gseqegg qjftj jjqtsg jtqjt uwiqii jdrqqw qaqeed fqgghh"+
    			" jquo wdwdqv hhwqt thagqh tuqqqic qmifass tauqtq bbqis qip ooqics qaic xcqgas"+
    			" feqwi ffqee uiduq ryhq thqgha thtqtf vsseq fesqvb bdbqbdr rydqd gqrd gqrdd"+
    			" qdqhj nnwnqgg jqqt fqhty tuqqic eqsff efqsf effqe esqed ooqics gqdgd dggqdf"+
    			" jreqs iiqsiy wsqs bngqg tuqqic esaqf ewqqv hrtqyh fbqjg njyqu hqth hqntgf"+
    			" bkyuqi uuqut ftqtt btaqr dfvbq mqiefdss dwqabn dbwqd ddqqw drqwd drwqw fgqhfb"+
    			" eqyi tqtqhi wqety gqgar rrqgj jtqyr htqerr rgruqu uewqqjd fegqgr htrqsz gedgsqg"+
    			" gruiqo yyyi ajbqg aklqga aifqgo aiqof tquqt dsqid gesqhe apjoqg fqpkjga qjfpakl"+
    			"qaas eqrrr qiyuqus inqger erqty gqqhir tqoax qoosd daqws wgqqic iogqf feqgqer";
    	
    	//产生随机姓
    	int family_index=(int)(Math.random()*(family_name.length));
    	
    	//产生随机名
    	//不能这样写，因为空格在字符串中也算字符，这样匹配到空格的话，就只有姓了
    	//int name_index=(int) (Math.random()*(name1.length()));//接下来用name1.charAt(name_index);
    	//正确方法：
    	//字符串分割(结果：字符串数组)
    	String[] first_name = name1.split(" ");//转换成字符串数组
    	int first_index = (int)(Math.random()*(first_name.length));
    	//产生随机姓名(字符串拼接)
    	String name=""+family_name[family_index]+first_name[first_index];
    	return name;
    }
}
