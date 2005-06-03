# blog-style.rb: Japanese resource of BlogKit. $Revision: 1.2 $
#
# Copyright (c) 2003 TADA Tadashi <sho@spc.gr.jp>
# Distributed under the GPL
#
def no_diary
	"�����ֹ�##{@date.strftime( '%Y%m%d' )}��¸�ߤ��ޤ���"
end

def comment_today
	'������'
end

def comment_total( total )
	"(#{total})"
end

def comment_new
	'�����Ȥ���Ƥ���'
end

def comment_description
	'�����Ȥ���Ƥ��Ƥ���������E-mail���ɥ쥹�ϸ�������ޤ���'
end

def comment_description_short
	'�����Ȥ���Ƥ���'
end

def comment_name_label
	'̾��'
end

def comment_name_label_short
	'̾��'
end

def comment_mail_label
	'E-mail'
end

def comment_mail_label_short
	'E-mail'
end

def comment_body_label
	'������'
end

def comment_body_label_short
	'������'
end

def comment_submit_label
	'���'
end

def comment_submit_label_short
	'���'
end

def comment_date( time )
	format = @options['blog.date_format'] || '(%Y-%m-%d %H:%M)'
	time.strftime( format )
end

def referer_today
	"�����Υ�󥯸�"
end

def navi_index
	'�ȥå�'
end

def navi_latest
	'�ǿ�'
end

def navi_update
	"����"
end

def navi_edit
	"�Խ�"
end

def navi_preference
	"����"
end

def navi_prev_ndays
	"��#{@conf.latest_limit}��"
end

def navi_next_ndays
	"��#{@conf.latest_limit}��"
end

def label_hidden_diary
	'���ε����ϸ��ߡ�������Ƥ��ޤ���'
end

def mobile_label_hidden_diary
	'���ε����ϸ��ߡ�������Ƥ��ޤ���'
end

