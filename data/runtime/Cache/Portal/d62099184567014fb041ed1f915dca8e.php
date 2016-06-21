<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
	<html>
	<head>
		<title><?php echo ($site_seo_title); ?> <?php echo ($site_name); ?></title>
		<meta name="keywords" content="<?php echo ($site_seo_keywords); ?>" />
		<meta name="description" content="<?php echo ($site_seo_description); ?>">
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
      <div style="clear:both;"></div>

     <div style="width:1100px;margin:0 auto;">
    <style type="text/css">
    /* play */
    .play{width:398px;height:270px;overflow:hidden;position:relative;margin:0px auto;}
    .play ol{position:absolute;bottom:31px;z-index:99999;right:5px; }
    .play ol li{list-style:none;float:left;height:25px;width:25px;display:inline;cursor:pointer;margin-left:5px; text-align:center; line-height:25px; background-color:#444444;color:#fff;font-size:12px;}
    .play ol li.active{font-weight:bold;color:#ffffff;background-color:#E5B07C;position:relative;}
    .play ul{position:absolute;top:0;left:0;z-index:1;padding:0;margin:0;}
    .play ul li{width:398px;height:270px;float:left;list-style:none; }
    .play ul img{float:left;height:100%;width:100%; border:none;}
    .play ul div{height:30px;line-height:30px;width:393px;overflow:hidden;color:#fff;padding-left:5px;position:absolute;bottom:0;background:#5E5E5E; filter:alpha(opacity=50);-moz-opacity:0.7; -khtml-opacity: 0.7;opacity: 0.7;}
    .play ul p{height:30px;line-height:30px;width:380px;white-space:nowrap; text-overflow:ellipsis; -o-text-overflow:ellipsis; overflow:hidden;}



    .lhx p{background:url('/thinkcmf/themes/zuojia/Public/images/pic5.png') no-repeat 0 7px;padding:1px 0 7px 14px;color:#666;height:38px;line-height:22px; overflow:hidden;margin-top:5px;margin-bottom:5px;}
    .lhx a{color:#666;font-size:14px;}
    .lhx a:hover{color:#CE0808;}

    .news p{background:url('/thinkcmf/themes/zuojia/Public/images/pic5.png') no-repeat 0 7px;padding:1px 0 0px 14px;color:#666;max-height:40px;margin-bottom:3px;line-height:22px; overflow:hidden;}
    .news a{color:#666;font-size:14px;}
    .news a:hover{color:#CE0808;}


    .anone{color:#873D0B;}
    .anone:hover{color:#873D0B;}
    img{border:none;}
    </style>



    <div style="width:1100px;height:472px;">
        <div style="float:left;width:398px;height:465px;border:1px solid #EBC199;">
            <div class="play" id="play" >
            	<ol></ol>
                <?php $home_slides=sp_getslide("portal_index"); $home_slides=empty($home_slides)?$default_home_slides:$home_slides; ?>
                <ul id="homeslider" class="unstyled">
                    <?php if(is_array($home_slides)): foreach($home_slides as $key=>$vo): ?><li>
                        <div class="caption-wraper">
                            <div class="caption"><?php echo ($vo["slide_name"]); ?></div>
                        </div>
                        <a href="<?php echo ($vo["slide_url"]); ?>"><img src="<?php echo sp_get_asset_upload_path($vo['slide_pic']);?>" alt=""></a>
                    </li><?php endforeach; endif; ?>
                </ul>
           </div>

           <div style="float:left;width:196px;height:280px;">

                    <p style="height:30px;line-height:30px; text-align:center; color:#873D0B;border-bottom:1px dashed #dcdcdc;font-weight:bold;font-size:16px;margin-right:5px;">精彩推荐</p>
          <div class="lhx" style="padding:5px;width:185px;height:155px; overflow:hidden;">
										<?php $hot_articles=sp_sql_posts("cid:$portal_hot_articles;field:post_title,post_excerpt,tid,term_id,smeta;order:post_hits desc;limit:5;"); ?>
 											 <?php if(is_array($hot_articles)): foreach($hot_articles as $key=>$vo): $top=$key<3?"top3":""; ?>

												 <p><i><?php echo ($key+1); ?></i><a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" title='<?php echo ($vo["post_title"]); ?>'><?php echo ($vo["post_title"]); ?></a></p><?php endforeach; endif; ?>
                    </div>
           </div>
           <!-- 作协动态 -->
          <div style="float:right;width:196px;height:200px;">
          <p style="height:30px;line-height:30px; text-align:center; color:#666;border-bottom:1px dashed #dcdcdc;font-weight:bold;font-size:16px;margin-left:5px;">
         <a class="anone" href="./index.php?m=list&a=index&id=<?php echo ($cat_id[5]); ?>"><?php echo ($term[5]['name']); ?></a>
          </p>
          <div class="lhx" style="padding:5px;width:185px;height:155px; overflow:hidden;">
      			<?php $lists = sp_sql_posts_paged("cid:$cat_id[5];order:post_date DESC;",10); ?>
      			<?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
      				 <ul>
      					 <li style="margin:5px 0">
      						 <p><a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" title='<?php echo ($vo["post_title"]); ?>'><?php echo ($vo["post_title"]); ?></a></p>
      					 </li>
      					</ul><?php endforeach; endif; else: echo "" ;endif; ?>
          </div>
          </div>
    </div>

   <!-- 上中盒子 -->
    <div style="float:left;width:420px;height:467px;margin:0 15px;background:#F7F2EC; overflow:hidden;">

      <div style=" height:125px;width:410px;margin-top:10px; margin-bottom:20px;">
      <?php $lists = sp_sql_posts_paged("cid:$cat_id[12];order:post_date DESC;",10); ?>
            <?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>

                 <ul>
                     <li style="margin:5px 0">
                         <p style="height:30px;line-height:30px;color:#666;font-weight:bold;font-size:16px;margin-left:5px;">
             <a style="color:#873D0B;" href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" title="<?php echo ($vo["post_title"]); ?>"><?php echo ($vo["post_title"]); ?></a>
                         </p>
                         <div style="height:86px;width:410px; color:#666;font-size:13px;padding:5px; line-height:22px;">
                             <?php echo ($vo["post_excerpt"]); ?>
                            <a style='color:#873D0B;text-decoration:none;' href='<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>'>...【详细】</a>
                             </div>
                     </li>

                    </ul><?php endforeach; endif; else: echo "" ;endif; ?>

    

      </div>

    </div>
    
    <!-- 公告与下载 -->
    <div style="float:left;border:1px solid #EBC199;width:248px;height:465px;">
        <div style="height:3px; background:#964b08;"></div>
        <a href="./index.php?m=list&a=index&id=<?php echo ($cat_id[10]); ?>" style=" text-decoration:none;">
       <div style="background:url(/thinkcmf/themes/zuojia/Public/images/20160331164822667.png) no-repeat;height:46px;width:100%;font-size:18px;font-weight:bold;color:#777;line-height:46px;">
        <span style="padding-left:20px;"><?php echo ($term[9]['name']); ?></span>
        </div>
        </a>

    	    <div class="ztbd" style="padding:8px;width:232px;height:400px; overflow:hidden;">

    		    <?php $lists = sp_sql_posts_paged("cid:$cat_id[9];order:post_date DESC;",10); ?>
    		    <?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
    					 <ul>
    						 <li style="margin:5px 0">
    							 *<a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" title="<?php echo ($vo["post_title"]); ?>"><?php echo ($vo["post_title"]); ?></a>
    						 </li>
    	          </ul><?php endforeach; endif; else: echo "" ;endif; ?>
    	    </div>
    </div>
</div>
    <div style="clear:both;"></div>

    <div style="margin-top:10px;width:1100px;height:100px;">
    <a href="http://baidu.com"><img src="/thinkcmf/themes/zuojia/Public/picture/20160331164258988.png" style="width:833px;height:100px;border:none;float:left;" /></a>
    <a href=""> <img src="/thinkcmf/themes/zuojia/Public/picture/20160331164720218.png" style="width:250px;height:100px;float:right;"></a>
    </div>

    <div style="clear:both;"></div>
    <div style="width:840px;margin-top:10px;float:left;">
    <div style="float:left;">
    <div style="width:580px;float:left;height:585px;margin-right:20px; overflow :hidden;">
    <p style="height:30px;line-height:30px;color:#666;font-weight:bold;font-size:16px;margin-left:5px;">
    <a class="anone" href="./index.php?m=list&a=index&id=<?php echo ($cat_id[0]); ?>"><?php echo ($term[1]['name']); ?></a>
    <span style="background:url(/thinkcmf/themes/zuojia/Public/images/pic1.png) no-repeat;padding:0 0 0 40px;margin-left:10px;position: relative;top:3px;"></span>
     <div style="float:left;background:#EFE7DC;width:580px;height:4px;"></div>

    </p>
  <?php $lists = sp_sql_posts_paged("cid:$cat_id[10];order:post_date DESC;",10); ?>
  <?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
    <div style="width:580px;height:130px;padding:10px 5px 0 5px;">
        <div style="float:left;width:150px;height:130px;"> 
        <img src="./data/upload/<?php echo ($smeta['thumb']); ?>" style="width:150px;height:110px;margin-top:8px;" />
        </div>
        <div style="width:420px;float:left;padding-left:10px;">
				 <ul>
					 <li style="margin:5px 0">
						 <p style="height:30px;line-height:30px;color:#666;font-weight:bold;font-size:16px;margin-left:5px;">
             <a style="color:#873D0B;" href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" title="<?php echo ($vo["post_title"]); ?>"><?php echo ($vo["post_title"]); ?></a>
						 </p>
						 <div style="height:86px;width:410px; color:#666;font-size:13px;padding:5px; line-height:22px;">
							 <?php echo ($vo["post_excerpt"]); ?>
							<a style='color:#873D0B;text-decoration:none;' href='<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>'>...【详细】</a>
							 </div>
					 </li>
					</ul>
        </div>
        <div style="margin-top:-8px;width:575px;border-bottom:1px dashed #dcdcdc;"></div>
    </div><?php endforeach; endif; else: echo "" ;endif; ?>

    </div>


    <div style="width:230px;float:left;">
    <div style="float:right;width:230px;height:195px;">
    <p style="height:30px;line-height:30px; color:#666;font-weight:bold;font-size:15px;">
    <a class="anone" href="./index.php?m=list&a=index&id=<?php echo ($cat_id[10]); ?>"><?php echo ($term[10]['name']); ?></a>
     <span style="background:url(/thinkcmf/themes/zuojia/Public/images/pic1.png) no-repeat;padding:0 0 0 40px;margin-left:10px;position: relative;top:3px;"></span>
    <div style="float:left;background:#EFE7DC;width:230px;height:4px;"></div>
    </p>
     <div class="news" style="padding:5px;margin-top:3px;padding-left:0px;width:230px;height:155px; overflow:hidden;">
			 <?php $lists = sp_sql_posts_paged("cid:$cat_id[10];order:post_date DESC;",10); ?>
			 <?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
					<ul>
						<li style="margin:5px 0">
						<p>
							<a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" title="<?php echo ($vo["post_title"]); ?>"><?php echo ($vo["post_title"]); ?></a>
            </p>
						</li>
					 </ul><?php endforeach; endif; else: echo "" ;endif; ?>

    </div>
    </div>
    <div style="float:right;width:230px;height:195px;">
    <p style="height:30px;line-height:30px; color:#666;font-weight:bold;font-size:15px;">
    <a class="anone" href="./index.php?m=list&a=index&id=<?php echo ($cat_id[11]); ?>"><?php echo ($term[11]['name']); ?></a>
     <span style="background:url(/thinkcmf/themes/zuojia/Public/images/pic1.png) no-repeat;padding:0 0 0 40px;margin-left:10px;position: relative;top:3px;"></span>
   <div style="float:left;background:#EFE7DC;width:230px;height:4px;"></div>
    </p>
     <div class="news" style="padding:5px;margin-top:3px;padding-left:0px;width:230px;height:155px; overflow:hidden;">
        
        <?php $lists = sp_sql_posts_paged("cid:$cat_id[11];order:post_date DESC;",10); ?>
             <?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
                    <ul>
                        <li style="margin:5px 0">
                        <p>
                            <a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" title="<?php echo ($vo["post_title"]); ?>"><?php echo ($vo["post_title"]); ?></a>
            </p>
                        </li>
                     </ul><?php endforeach; endif; else: echo "" ;endif; ?>
       


    </div>
    </div>
    <div style="float:right;width:230px;height:195px;">
    <p style="height:30px;line-height:30px;  color:#666;font-weight:bold;font-size:15px;">
    <a class="anone" href="./index.php?m=list&a=index&id=<?php echo ($cat_id[13]); ?>"><?php echo ($term[13]['name']); ?></a>
    <span style="background:url(/thinkcmf/themes/zuojia/Public/images/pic1.png) no-repeat;padding:0 0 0 40px;margin-left:10px;position: relative;top:3px;"></span>
    <div style="float:left;background:#EFE7DC;width:230px;height:4px;"></div>
    </p>
    <div class="news" style="padding:5px;margin-top:3px;padding-left:0px;width:230px;height:155px; overflow:hidden;">

        <?php $lists = sp_sql_posts_paged("cid:$cat_id[13];order:post_date DESC;",10); ?>
             <?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
                    <ul>
                        <li style="margin:5px 0">
                        <p>
                            <a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" title="<?php echo ($vo["post_title"]); ?>"><?php echo ($vo["post_title"]); ?></a>
            </p>
                        </li>
                     </ul><?php endforeach; endif; else: echo "" ;endif; ?>


    </div>
    </div>
    </div>
    <div style="clear:both;"></div>
    <div style="margin-top:10px;width:833px;height:100px;margin-top:10px;">
    <a href="http://www.sougou.com"><img src="/thinkcmf/themes/zuojia/Public/picture/20160331164258988.png" style="width:833px;height:100px;border:none;float:left;" /></a>
    </div>
     </div>

    <div style="width:835px;float:left;margin-top:10px;">
    <div style="float:left;width:405px;height:270px;">
    <p style="height:30px;line-height:30px; color:#666;font-weight:bold;font-size:15px;margin-right:10px;">
    <a class="anone" href="./index.php?m=list&a=index&id=<?php echo ($cat_id[14]); ?>"><?php echo ($term[14]['name']); ?></a>
    <span style="background:url(/thinkcmf/themes/zuojia/Public/images/pic1.png) no-repeat;padding:0 0 0 40px;margin-left:10px; position:relative;top:3px;"></span>
   <div style="float:left;background:#EFE7DC;width:400px;height:4px;"></div>
    </p>
    <div class="ztbd" style="padding:5px;margin-top:10px;padding-left:0px;width:410px;height:227px; overflow:hidden;">

         <?php $lists = sp_sql_posts_paged("cid:$cat_id[14];order:post_date DESC;",10); ?>
             <?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
                    <ul>
                        <li style="margin:5px 0">
                            <p>
                                <a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" title="<?php echo ($vo["post_title"]); ?>"><?php echo ($vo["post_title"]); ?></a>
                            </p>
                        </li>
                     </ul><?php endforeach; endif; else: echo "" ;endif; ?>





    </div>
    </div>
    <div style="float:right;width:405px;height:270px;">
    <p style="height:30px;line-height:30px; color:#666;font-weight:bold;font-size:15px;margin-right:10px;">
    <a class="anone" href="./index.php?m=list&a=index&id=<?php echo ($cat_id[14]); ?>"><?php echo ($term[15]['name']); ?></a>
    <span style="background:url(/thinkcmf/themes/zuojia/Public/images/pic1.png) no-repeat;padding:0 0 0 40px;margin-left:10px; position:relative;top:3px;"></span>
  <div style="float:left;background:#EFE7DC;width:400px;height:4px;"></div>
    </p>
    <div class="ztbd" style="padding:5px;margin-top:10px;padding-left:0px;width:410px;height:227px; overflow:hidden;">

        <?php $lists = sp_sql_posts_paged("cid:$cat_id[15];order:post_date DESC;",10); ?>
             <?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
                    <ul>
                        <li style="margin:5px 0">
                            <p>
                                <a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" title="<?php echo ($vo["post_title"]); ?>"><?php echo ($vo["post_title"]); ?></a>
                            </p>
                        </li>
                     </ul><?php endforeach; endif; else: echo "" ;endif; ?>


    </div>
    </div>
    <div style="float:left;width:430px;height:270px;">
    <p style="height:30px;line-height:30px;  color:#666;font-weight:bold;font-size:15px;margin-right:10px;">
    <a class="anone" href="./index.php?m=list&a=index&id=<?php echo ($cat_id[16]); ?>"><?php echo ($term[16]['name']); ?></a>
    <span style="background:url('/thinkcmf/themes/zuojia/Public/images/pic1.png') no-repeat;padding:0 0 0 40px;margin-left:10px; position:relative;top:3px;"></span>
    <div style="float:left;background:#EFE7DC;width:400px;height:4px;"></div>
    </p>
    <div class="ztbd" style="padding:5px;margin-top:10px;padding-left:0px;width:410px;height:227px; overflow:hidden;">

      <?php $lists = sp_sql_posts_paged("cid:$cat_id[16];order:post_date DESC;",10); ?>
             <?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
                    <ul>
                        <li style="margin:5px 0">
                            <p>
                                <a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" title="<?php echo ($vo["post_title"]); ?>"><?php echo ($vo["post_title"]); ?></a>
                            </p>
                        </li>
                     </ul><?php endforeach; endif; else: echo "" ;endif; ?>




    </div>
    </div>
    <div style="float:right;width:405px;height:270px;">
    <p style="height:30px;line-height:30px;  color:#666;font-weight:bold;font-size:15px;margin-right:10px;">
    <a class="anone" href="./index.php?m=list&a=index&id=<?php echo ($cat_id[7]); ?>"><?php echo ($term[7]['name']); ?></a>
    <span style="background:url(/thinkcmf/themes/zuojia/Public/images/pic1.png) no-repeat;padding:0 0 0 40px;margin-left:10px; position:relative;top:3px;"></span>
    <div style="float:left;background:#EFE7DC;width:400px;height:4px;"></div>
    </p>
     <p style="height:30px;line-height:38px;color:#666;font-size:12px;font-weight:bold;margin-right:10px;margin-left:10px;">
    <a class="anone" href="#" style="margin-right:30px;">作品</a>
    <a class="anone" href="#" style="margin-right:30px;">作品1</a>
    <a class="anone" href="#" style="margin-right:30px;">作品2</a>
    <a class="anone" href="#" style="margin-right:30px;">作品3</a>

    </p>
    <div class="ztbd" style="padding:5px;margin-top:7px;padding-left:0px;width:410px;height:197px; overflow:hidden;">

        <?php $lists = sp_sql_posts_paged("cid:$cat_id[7];order:post_date DESC;",10); ?>
         <?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
                <ul>
                    <li style="margin:5px 0">
                        <p>
                            <a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" title="<?php echo ($vo["post_title"]); ?>"><?php echo ($vo["post_title"]); ?></a>
                        </p>
                    </li>
                 </ul><?php endforeach; endif; else: echo "" ;endif; ?>


    </div>
    </div>

    </div>


    </div>


    <div style="width:250px;margin-top:10px;float:right;">
    <div style="width:250px;float:left;">
      <!-- 新书架 -->
    <div style="float:left;border:1px solid #EBC199;width:248px;height:433px; overflow:hidden;">
    <div style="height:3px; background:#964b08;"></div>
     <a href="./index.php?m=list&a=index&id=<?php echo ($cat_id[17]); ?>" style=" text-decoration:none;">
   <div style="background:url(/thinkcmf/themes/zuojia/Public/images/20160401103118686.png) no-repeat;height:46px;width:100%;font-size:18px;font-weight:bold;color:#777;line-height:46px;">
    <span style="padding-left:20px;"><?php echo ($term[17]['name']); ?></span>

    </div>
    </a>
   <div style="width:250px;height:125px;">
   <table cellspacing="0" id="ContentPlaceHolder1_FormView1" style="border-collapse:collapse;">
	<tr>
		<td colspan="2">
  <div style="float:left;">
       <?php $lists = sp_sql_posts_paged("cid:$cat_id[17];order:post_date DESC;",10); ?>
          <?php $vo = $lists['posts'][0]; $smeta=json_decode($vo['smeta'], true); ?>
         <img src="./data/upload/<?php echo ($smeta['thumb']); ?>" onerror="this.src='/thinkcmf/themes/zuojia/Public/images/defualt.jpg'" style="width:90px;height:120px;margin-left:8px;margin-top:8px;" />
    </div>
    <div style="float:right;width:150px;padding-top:6px;height:50px;">
   
          <ul>
            <li style="margin:5px 0">
              <p style="padding:0 5px;line-height:18px;"><a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" style="color:#873D0B;font-size:14px;font-weight:bold;" title="<?php echo ($vo["post_title"]); ?>"><?php echo ($vo['post_title']); ?></a>
              </p>
             <p style="color:#666;font-size:10px;line-height:21px;width:140px;height:85px;padding:0 5px; overflow:hidden;"> <span><?php echo ($vo['post_excerpt']); ?></span><a style='color:#873D0B;text-decoration:none;' href='<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>'>...【详细】</a> </p>
             
            </li>
           </ul>
    
    </div>
    </td>
	</tr>
</table>
    </div>
    <div class="ztbd" style="padding:8px;margin-top:2px;">
     
        <?php $list = sp_sql_posts_paged("cid:$cat_id[17];order:post_date DESC;",10); ?>
         <?php if(is_array($list['posts'])): $i = 0; $__LIST__ = $list['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo2): $mod = ($i % 2 );++$i;?><ul>
                    <li style="margin:5px 0">
                        <p>
                            <a href="<?php echo leuu('article/index',array('id'=>$vo2['tid'],'cid'=>$vo2['term_id']));?>" title="<?php echo ($vo2["post_title"]); ?>"><?php echo ($vo2["post_title"]); ?></a>
                        </p>
                    </li>
                 </ul><?php endforeach; endif; else: echo "" ;endif; ?>

      


    </div>
 
     </div>

    <!-- 作家动态 -->
     <div style="float:left;border:1px solid #EBC199;width:248px;height:400px;margin-top:15px; overflow:hidden;">
    <div style="height:3px; background:#964b08;"></div>
     <a href="./index.php?m=list&a=index&id=<?php echo ($cat_id[18]); ?>" style=" text-decoration:none;">
   <div style="background:url(/thinkcmf/themes/zuojia/Public/images/20160331164850375.png) no-repeat;height:46px;width:100%;font-size:18px;font-weight:bold;color:#777;line-height:46px;">
    <span style="padding-left:20px;"><?php echo ($term[18]['name']); ?></span>
    </div>
    </a>

    <div class="ztbd" style="padding:8px;">

        
        <?php $lists = sp_sql_posts_paged("cid:$cat_id[18];order:post_date DESC;",10); ?>
         <?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
                <ul>
                    <li style="margin:5px 0">
                        <p>
                            <a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" title="<?php echo ($vo["post_title"]); ?>"><?php echo ($vo["post_title"]); ?></a>
                        </p>
                    </li>
                 </ul><?php endforeach; endif; else: echo "" ;endif; ?>

    </div>

     </div>
     </div>

    <!-- 文学现场 -->
    <div style="float:right;width:250px;margin-top:15px;">
    <div style="float:left;border:1px solid #EBC199;width:248px;height:400px; overflow:hidden;">
    <div style="height:3px; background:#964b08;"></div>
     <a href="./index.php?m=list&a=index&id=<?php echo ($cat_id[19]); ?>" style=" text-decoration:none;">
   <div style="background:url(/thinkcmf/themes/zuojia/Public/images/20160331164901342.png) no-repeat;height:46px;width:100%;font-size:18px;font-weight:bold;color:#777;line-height:46px;">
    <span style="padding-left:20px;"><?php echo ($term[19]['name']); ?></span>
    </div>
    </a>

    <div class="ztbd" style="padding:8px;">

        
        <?php $lists = sp_sql_posts_paged("cid:$cat_id[19];order:post_date DESC;",10); ?>
         <?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
                <ul>
                    <li style="margin:5px 0">
                        <p>
                            <a href="<?php echo leuu('article/index',array('id'=>$vo['tid'],'cid'=>$vo['term_id']));?>" title="<?php echo ($vo["post_title"]); ?>"><?php echo ($vo["post_title"]); ?></a>
                        </p>
                    </li>
                 </ul><?php endforeach; endif; else: echo "" ;endif; ?>


    </div>

     </div>


    </div>

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


<?php echo hook('footer_end');?>
</div>


</body>
</html>