<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<title><?php echo ($name); ?> <?php echo ($seo_title); ?> <?php echo ($site_name); ?></title>
<meta name="keywords" content="<?php echo ($seo_keywords); ?>" />
<meta name="description" content="<?php echo ($seo_description); ?>">
	<?php  function _sp_helloworld(){ echo "hello ThinkCMF!"; } function _sp_helloworld2(){ echo "hello ThinkCMF2!"; } function _sp_helloworld3(){ echo "hello ThinkCMF3!"; } ?>
	<?php $portal_index_lastnews="2"; $portal_hot_articles="1,2"; $portal_last_post="1,2"; $tmpl=sp_get_theme_path(); $default_home_slides=array( array( "slide_name"=>"ThinkCMFX2.1.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/1.jpg", "slide_url"=>"", ), array( "slide_name"=>"ThinkCMFX2.1.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/2.jpg", "slide_url"=>"", ), array( "slide_name"=>"ThinkCMFX2.1.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/3.jpg", "slide_url"=>"", ), ); ?>
    <style type="text/css">
    body,button,dd,dl,dt,fieldset,form,h1,h2,h3,h4,h5,h6,hr,input,legend,li,ol,p,td,textarea,th,ul{margin:0;padding:0;}
    body { margin:0; background:#FAFAFA; }
    body,button,input,select,textarea{font:14px/1.5 "微软雅黑";}
    li,ol,ul{list-style:none;}
    p{margin:0;padding:0;}
    a{ text-decoration:none;color:#666;}
    a:hover{ text-decoration:underline;color:#CE0808;}    
        
        
    .wxzt a{color:#873D0B;}
    .wxzt a:hover{color:#CE0808;}
    .ztbd p{background:url('/thinkcmf/themes/zuojia/Public/images/pic5.png') no-repeat 0 7px;padding:0px 10px 0px 14px;max-height:40px; overflow:hidden; color:#666;line-height:22px;margin-bottom:8px;}
    .ztbd a{color:#666;font-size:14px;}
    .ztbd a:hover{color:#CE0808;}
    
    
    .wzgg p{background:url('/thinkcmf/themes/zuojia/Public/images/pic5.png') no-repeat 0 7px;padding:0px 0px 3px 10px; white-space:nowrap; text-overflow:ellipsis; -o-text-overflow:ellipsis; overflow:hidden;color:#666;}
    .wzgg a{color:#666;font-size:14px; }
    .wzgg a:hover{color:#CE0808;}
    
    .zxxw a{color:#C6271A;}
    .zxxw a:hover{color:#CE0808;}
    
    .top2 p{background:url('/thinkcmf/themes/zuojia/Public/images/pic5.png') no-repeat 0 11px;padding:0px 20px 7px 14px; float:left;color:#873D0B;margin-left:10px; cursor:pointer;}
    .top2 a{color:#873D0B;}
    .top1 a{color:#873D0B;}
    .top1 a:hover{color:#873D0B;}
    
    .yq span{padding-right:15px;float:left;}
    .yq a{color:#666;}
    .yq a:hover{color:#CE0808;}
    </style>
</head>
<body>
	<?php echo hook('body_start');?>
<div style="width:1100px;margin:0 auto;padding:0 10px;">

    <div style=" background:url(/thinkcmf/themes/zuojia/Public/images/topbg22.jpg) no-repeat;height:150px;width:1100px;">
    <div style="height:105px;width:860px;background:url(/thinkcmf/themes/zuojia/Public/images/topbg2.jpg) no-repeat; position:relative;left:260px;top:40px;">
    <div class="top1" style="height:75px;color:#873D0B;">
    <div style="width:175px;height:75px;line-height:75px;text-align:center;font-size:16px;font-weight:bold;float:left;">
    <a href=".">网站首页</a>
    </div>
    
    <div style="width:546px;height:46px;line-height:24px;margin-top:8px;font-size:15px;font-weight:bold;float:left; text-align:center;">
        
      <?php
 $effected_id="main-menu"; $filetpl="<div style='height:20px;width:109px;float:left;margin-top:5px'><a href='\$href' target='\$target'>\$label</a>"; $foldertpl="</div>"; $ul_class="" ; $li_class="" ; $style=""; $showlevel=6; $dropdown=''; echo sp_get_menu("main",$effected_id,$filetpl,$foldertpl,$ul_class,$li_class,$style,$showlevel,$dropdown); ?>
    </div>


    <div style="width:109px;padding-top:15px;padding-left:5px;text-align:center;font-size:15px;font-weight:bold;float:left;">
    <a href="#">广东残联爱心文学专页</a>
    </div>
    </div>




      <div class="top2" style="height:30px;line-height:30px;">
        <p><a href="javascript:;" onclick="JavaScript:window.location.href;this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.gdzuoxxie.com/');" class="hei12">设为首页</a></p>
        <p><a href="javascript:;" onclick="JavaScript:window.external.addFavorite('http://www.gdzuoxxie.com/','广东作家协会');" class="hei12">加入收藏</a></p>
        <p><a href="List.aspx?tyid=6">网站公告</a></p>

        <div style="float:right;width:420px;margin-top:-2px;margin-right:10px;">
         <span style="background:url(/thinkcmf/themes/zuojia/Public/images/pic1.png) no-repeat;padding:0 0 0 40px;margin-left:10px;"></span> 
         <span style="margin-left:10px;font-size:16px; font-weight:bold;color:#666;">站内搜索</span>
          <form method="post" class="form-inline" action="<?php echo U('portal/search/index');?>" style="margin:-27px 5px;">
               <span style="margin-left:140px;">
                <input type="text" style="width:200px;" placeholder="Search" name="keyword" value="<?php echo I('get.keyword');?>"/>
               </span>
               <span>
                <input type="submit" value="搜索" style="margin-left:5px;padding:1px 10px;color:#fff; border:1px solid #873D0B; background:#E5B07C; cursor:pointer; "/>
               </span>
          </form>
        </div>
      </div>
    </div>
  </div>
   
    <div style="background:url(/thinkcmf/themes/zuojia/Public/images/topbg3.jpg) no-repeat;height:33px;width:1100px;margin:0 auto;margin-bottom:13px;">
    <div class="wxzt" style="height:33px;line-height:30px;width:1100px; font-size:14px;color:#873D0B;">
    <span style="font-size:16px;padding-left:15px;">文学专题：</span>
        
        <span style="padding-right:20px;"><a href="">第二届“桂成杯”诗歌奖</a></span>
        
        <span style="padding-right:20px;"><a href="">文学进校园</a></span>
        
        <span style="./index.php?m=list&a=index&id=<?php echo ($cat_id[9]); ?>"><a href=""><?php echo ($term[12]['name']); ?></a></span>
        
    </div>
    <div style="height:30px;line-height:30px;width:1100px;font-size:14px;color:#873D0B; ">
   
   <div id="login1" style="float:left;width:650px;"> 
    
   <span style="background:url(/thinkcmf/themes/zuojia/Public/images/pic1.png) no-repeat;padding:0 0 0 40px;margin-left:10px;"></span>
   <span id="mylogin" style="margin-left:10px;padding:1px 10px;color:#fff; border:1px solid #873D0B; background:#E5B07C; cursor:pointer; "><a href="<?php echo leuu('user/login/index');?>"><i class="fa fa-sign-in"></i> &nbsp;登录</a></span>
   <span style="margin-left:10px;"><a href="<?php echo leuu('user/register/index');?>"><i class="fa fa-user"></i> &nbsp;注册</a></span>
   <span style="margin-left:10px;"><a href="#" style="color:#CE0808">忘了密码？</a></span> 
   </div>
    </div>
    </div>
	<div class="container">


		<div class="pg-opt pin">
			<div class="container">
				<h2><?php echo ($name); ?></h2>
			</div>
		</div>

		<div class="container">
			<div>
				<?php $lists = sp_sql_posts_paged("cid:$cat_id;order:post_date
				DESC;",20); ?>
				<div id="container">
					<div class="grid-sizer"></div>
					<?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>

					<div class="item">
						<div class="tc-gridbox">
							<div class="header">

								<?php if(!empty($smeta['thumb'])): ?><div class="item-image">
									<a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>">
										<img src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>"
										class="img-responsive" alt="<?php echo ($vo["post_title"]); ?>">
									</a>
								</div>
								<?php else: endif; ?>

								<h3>
									<a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>"><?php echo ($vo["post_title"]); ?></a>
								</h3>
								<hr>
							</div>
							<div class="body">
								<a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>"><?php echo (msubstr($vo["post_excerpt"],0,256)); ?></a>
							</div>
							<div class="footer">
								<div class="pull-left">
									<span class="meta"><?php echo ($vo["post_date"]); ?></span>
								</div>
								<div class="pull-right">
									<a href="javascript:;"><i class="fa fa-eye"></i><span><?php echo ($vo["post_hits"]); ?></span></a>
									<a href="<?php echo U('article/do_like',array('id'=>$vo['object_id']));?>" class="js-count-btn"><i class="fa fa-thumbs-up"></i><span class="count"><?php echo ($vo["post_like"]); ?></span></a> 
									<a href="<?php echo U('user/favorite/do_favorite',array('id'=>$vo['object_id']));?>" class="js-favorite-btn" data-title="<?php echo ($vo["post_title"]); ?>" data-url="<?php echo leuu('portal/article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" data-key="<?php echo sp_get_favorite_key('posts',$vo['object_id']);?>">
										<i class="fa fa-star-o"></i>
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div><?php endforeach; endif; else: echo "" ;endif; ?>
				</div>
				<div class="pagination"><ul><?php echo ($lists['page']); ?></ul></div>
			</div>
		</div>


		
<hr>
<?php echo hook('footer');?>
   <div style="clear:both;height:20px"></div>
    <div class="yq" style="width:1100px;margin:0 auto;color:#666;padding:3px 10px;">
       <span>友情链接：</span>
      <span><a href='http://www.rjzzs.com/' target="_blank">人间杂志社</a></span>
      <span><a href='http://www.gdzuoxie.com/Show.aspx?wzid=84' target="_blank">全国各省市作协官网</a></span>
      <span><a href='http://www.chinawriter.com.cn/' target="_blank">中国作家网</a></span>
      <span><a href='http://yuedu.163.com/book?pek=1' target="_blank">网易读书频道</a></span>
      <span><a href='http://www.gdzuoxie.com/Show.aspx?wzid=81' target="_blank">国内各大文学网站论坛博客</a></span>
      <span><a href='http://www.gdzuoxie.com/Show.aspx?wzid=76' target="_blank">广东各地市作协文联官网</a></span>
      <span><a href='http://www.gdzuoxie.com/Show.aspx?wzid=74' target="_blank">广东各大文学网络论坛博客</a></span>
    </div>
  <div style="clear:both;"></div>
	    <div style="width:1100px;margin-top:10px;">
		    <div style="background:#E5B07D;height:5px;width:1100px;"></div>
		    <div style="background:#FBF9F6;height:120px;width:1100px; text-align:center;color:#666;font-size:14px;">
		   
			    <p style="padding-top:20px;">关于广东作家协会 | 投诉建议 | <a href="">管理入口</a></p>
			  
			    <p style="padding-top:10px;">©广东省作家协会版权所有 粤ICP备06014976号</p>
			    
			    <p style="padding-top:10px;">Copyright©  2005-2016，All Rights Reserved 
		    </div>
	    </div>
   </div>
<?php echo ($site_tongji); ?>

	</div>


	<!-- JavaScript -->
	<script type="text/javascript">
//全局变量
var GV = {
    DIMAUB: "/thinkcmf/",
    JS_ROOT: "public/js/",
    TOKEN: ""
};
</script>
<!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/thinkcmf/public/js/jquery.js"></script>
    <script src="/thinkcmf/public/js/wind.js"></script>
    <script src="/thinkcmf/themes/zuojia/Public/simpleboot/bootstrap/js/bootstrap.min.js"></script>
    <script src="/thinkcmf/public/js/frontend.js"></script>
	<script>
     $(function () {
            var oDiv = $("#play");  //外部盒子
            var count = $("#play ul li").length;  //内部图片数量
            var countwidth = $("#play ul li").width();  //图片边框宽度
            var oUl = $("#play ul").css("width", count * countwidth);  //ul li总宽度
            var now = 0;
            var next = $("#next");
            var prev = $("#prev");
            //点击按钮数量
            for (var i = 0; i < count; i++) {
                $("#play ol").append("<li>" + Number(i + 1) + "</li>");
                $("#play ol li:first").addClass("active");
            }
            //左右点击图片获取
            var nI = $("#play ul li:nth-child(2)").find("img").attr("src");
            $(".nextImg img").attr("src", nI);
            var pI = $("#play ul li:last-child").find("img").attr("src");
            $(".prevImg img").attr("src", pI);
            //按钮点击事件
            var aBtn = $("#play ol li");
            aBtn.each(function (index) {
                $(this).click(function () {
                    clearInterval(timer);
                    tab(index);
                    nextImg();
                    prevImg();
                    timer = setInterval(autoRun, 5000);
                });
            });
            //图片循环事件
            function tab(index) {
                now = index;
                aBtn.removeClass("active");
                aBtn.eq(index).addClass("active");
                oUl.stop(true, false).animate({ "left": -countwidth * now }, 500);
            }
            //下一张按钮图片切换
            function nextImg() {
                var d = $("#play ul li").find("img").eq(now + 1).attr("src");
                var nI = $("#play ul li:nth-child(1)").find("img").attr("src");
                $(".nextImg").find("img").attr("src", d);
                if (now == count - 1) {
                    $(".nextImg").find("img").attr("src", nI);
                }
            }
            //上一张图片按钮切换
            function prevImg() {
                var f = $("#play ul li").find("img").eq(now - 1).attr("src");
                $(".prevImg").find("img").attr("src", f);
            }

            //下一张点击事件
            next.click(function () {
                clearInterval(timer);
                now++;
                if (now == count) {
                    now = 0;
                }
                tab(now);
                nextImg();
                prevImg();
                timer = setInterval(autoRun, 5000);
            });
            //上一张点击事件
            prev.click(function () {
                clearInterval(timer);
                now--;
                if (now == -1) {
                    now = count - 1;
                }
                tab(now);
                nextImg();
                prevImg();
                timer = setInterval(autoRun, 5000);
            });
            //自动轮播定义
            function autoRun() {
                now++;
                if (now == count) {
                    now = 0;
                }
                tab(now);
                nextImg();
                prevImg();
            };
            var timer = setInterval(autoRun, 5000);
        });
    </script>


	<script src="/thinkcmf/themes/zuojia/Public/js/imagesloaded.pkgd.min.js"></script>
	<script src="/thinkcmf/themes/zuojia/Public/js/masonry.pkgd.min.js"></script>
	<script>
		var $container = $('#container').masonry({
			columnWidth : '.grid-sizer',
			itemSelector : '.item'
		});
		// layout Masonry again after all images have loaded
		$container.imagesLoaded(function() {
			$container.masonry();
		});
	</script>
</body>
</html>