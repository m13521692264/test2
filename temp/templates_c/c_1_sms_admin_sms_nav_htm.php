<?php /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-20 16:48 CST */ ?>
<div class="topnav">
<a href="?act=" <?php if ($this->_vars['navlabel'] == 'set'): ?>class="select"<?php endif; ?>><u>配置</u></a>
<a href="?act=testing" <?php if ($this->_vars['navlabel'] == 'testing'): ?>class="select"<?php endif; ?>><u>测试</u></a>
<a href="?act=rule" <?php if ($this->_vars['navlabel'] == 'rule'): ?>class="select"<?php endif; ?>><u>发送规则</u></a>
<a href="?act=set_tpl" <?php if ($this->_vars['navlabel'] == 'templates'): ?>class="select"<?php endif; ?>><u>短信模板</u></a>
<a href="?act=meal" <?php if ($this->_vars['navlabel'] == 'meal'): ?>class="select"<?php endif; ?>><u>短信套餐</u></a>
<div class="clear"></div>
</div>