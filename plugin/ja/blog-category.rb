# blog-category.rb $Revision: 1.2 $
#
#  resource file for blog-category.rb
#
# Copyright (c) 2003 Junichiro KITA <kita@kitaj.no-ip.com>
# Distributed under the GPL
#

@blog_category_conf_label = 'BlogKit���ƥ���'
@blog_category_desc_label = <<HTML
	<h3 class="subtitle">���ƥ��굡ǽ�λȤ���</h3>
	<p>BlogKit�Ǥϡ������Υ����ȥ�Ǥ��ε����Υ��ƥ������ꤷ�ޤ������ƥ���̾�� [ ] �ǰϤ�ǻ��ꤷ�ޤ���</p>
	<p>�㡧</p>
	<pre>[BlogKit] ���ƥ��굡ǽ��Ƴ�����ޤ���</pre>
	<p>���Τ褦�˽񤯤ȡ��ºݤ˵�����ɽ������ݤ� [BlogKit] ����ʬ�����ƥ���ɽ�����̤ؤΥ�󥯤ؼ�ưŪ���Ѵ�����ޤ�����Ĥε����ˤ����ĤǤ⥫�ƥ������ꤹ�뤳�Ȥ��Ǥ��ޤ���</p>
	<p>�����ɥС��ʤɤ˥��ƥ���˴�Ϣ��������ɽ�������������ϡ�<a href="#{@update}?conf=header">�إå����եå�</a>�ǥإå���եå��˼��Τ褦��������ɲä��ޤ��礦��</p>
	<pre>&lt;div class="sidemenu"&gt;Category: &lt;/div&gt;
&lt;%=blog_category_form%&gt;
&lt;%=blog_category_entry%&gt;</pre>
	<dl>
		<dt>blog_category_form</dt>
		<dd>ɽ�����륫�ƥ��������Ǥ���ɥ�åץ�����ꥹ�Ȥ�ɽ�����ޤ���</dd>
		<dt>blog_category_entry</dt>
		<dd>���򤷤����ƥ���ε����Τ���ɽ��������ʤ��ä������Υ����ȥ������ɽ�����ޤ���</dd>
	</dl>
	<p>blog_category_cache_restore�Ȥ����᥽�åɤǡ��������Υ��ƥ���ȥ����ȥ������Ǥ���Τǡ����ξ�����Ѥ����ȼ���ɽ����ˡ������ळ�Ȥ��ǽ�Ǥ���</p>
	<h3 class="subtitle">���ƥ��ꥤ�ǥå����ν����</h3>
	<p>BlogKit�Υ��ƥ��굡ǽ�ϥ��ƥ��ꥤ��ǥå������������ʤ��Ȼ��ѤǤ��ޤ��󡥲���OK�ܥ���򲡤��ȥ��ƥ��ꥤ��ǥå����ν������¹Ԥ��ޤ����������̤�¿������¿�����֤������뤫�⤷��ޤ���</p>
	<p>�������ɲä����깹���������ϡ���ưŪ�˥��ƥ�����󤬥���ǥå������ɲä���ޤ��Τǡ�������ϰ��٤Ƿ빽�Ǥ���</p>
	<p>����å���ǥ��쥯�ȥ�ˤ���blog_category�Ȥ����ե������ä��Ƥ��ޤä��ꡤ���ƥ���ξ��󤬤��������ʤäƤ��ޤä����ϡ����٥��ƥ��ꥤ��ǥå������������Ƥ���������</p>
	<input type="hidden" name="blog_category_initialize" value="true">
HTML
@blog_category_desc_label_for_mobile = <<HTML
	<H3>���ƥ��ꥤ��ǥå����ν����</H3>
	<P>���Υܥ���򲡤��ȥ��ƥ��ꥤ��ǥå��������������ޤ���</P>
HTML

# vim: ts=3
