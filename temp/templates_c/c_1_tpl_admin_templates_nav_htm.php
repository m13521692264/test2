<?php /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-20 16:50 CST */ ?>
<div class="topnav">
<a href="?act=list" <?php if ($this->_vars['navlabel'] == 'list' || $this->_vars['navlabel'] == 'edit'): ?>class="select"<?php endif; ?>><u>风格模版</u></a>
<a href="?act=com_tpl" <?php if ($this->_vars['navlabel'] == 'com_tpl'): ?>class="select"<?php endif; ?>><u>企业模版</u></a>
<a href="?act=resume_tpl" <?php if ($this->_vars['navlabel'] == 'resume_tpl'): ?>class="select"<?php endif; ?>><u>简历模版</u></a>
<div class="clear"></div>
</div>