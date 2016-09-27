<?php /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-20 16:50 CST */ ?>
<div class="topnav">
<a href="?act=list"<?php if ($this->_vars['navlabel'] == 'list'): ?>class="select"<?php endif; ?>><u>队列</u></a>
<a href="?act=smsqueue_add"<?php if ($this->_vars['navlabel'] == 'add'): ?>class="select"<?php endif; ?>><u>添加</u></a>
<a href="?act=smsqueue_batchadd" <?php if ($this->_vars['navlabel'] == 'batchadd'): ?>class="select"<?php endif; ?>><u>批量添加</u></a>
<div class="clear"></div>
</div>