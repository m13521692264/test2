<?php /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-23 18:11 CST */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>您访问的页面不存在！</title>
<meta name="author" content="骑士CMS" />
<meta name="copyright" content="74cms.com" />
<link rel="shortcut icon" href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
favicon.ico" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/404.css" rel="stylesheet" type="text/css" />
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.js" type='text/javascript' ></script>
</head>
<body <?php if ($this->_vars['QISHI']['body_bgimg']): ?>style="background:url(<?php echo $this->_vars['QISHI']['site_domain'];  echo $this->_vars['QISHI']['site_dir']; ?>
data/<?php echo $this->_vars['QISHI']['updir_images']; ?>
/<?php echo $this->_vars['QISHI']['body_bgimg']; ?>
) repeat-x center 38px;"<?php endif; ?>>
<!--头部-->
<div id="head">
  <div class="header_con">
    <a href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
"><img src="<?php echo $this->_vars['QISHI']['upfiles_dir'];  echo $this->_vars['QISHI']['web_logo']; ?>
" title="<?php echo $this->_vars['QISHI']['site_name']; ?>
" alt="<?php echo $this->_vars['QISHI']['site_name']; ?>
" /></a>
        <ul class="header_tiao">
          <li><a href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
">返回首页</a></li>
          <li><a href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
help">查看帮助</a></li>
        </ul>
    </div>
</div>
<!--内容-->
<div id="con_404">
  <div class="con_404_left"></div>
    <div class="con_404_right">
      <h2>抱歉 SORRY !</h2>
        <p>您访问的页面丢了！</p>
        <a href="javascript:history.go(-1);">返回上一页</a>
    </div>
</div>
</body>
</html>
