# whatsnew-list.rb Japanese resources
begin
	require 'uconv'
	@whatsnew_list_encode = 'UTF-8'
	@whatsnew_list_encoder = Proc::new {|s| Uconv.euctou8( s ) }
rescue LoadError
	@whatsnew_list_encode = @conf.encoding
	@whatsnew_list_encoder = Proc::new {|s| s }
end

if /conf/ =~ @mode then
	@whatsnew_list_label_rdf_out = '�ե�����(RSS)�ե����������'
	@whatsnew_list_label_rdf_out_notice = '���������뤿�Ӥˡ������Υȥåץڡ�����index.rdf�Ȥ����ե�������������ޤ���index.rdf�ˤ�Web�����Ф��񤭹���븢�¤�ɬ�פǤ���'
	@whatsnew_list_label_rdf_out_yes = '��������'
	@whatsnew_list_label_rdf_out_no = '�������ʤ�'
	@whatsnew_list_msg_access = '�˽񤭹���ޤ��󡣥ѡ��ߥå������ǧ���Ƥ���������'
end

@whatsnew_list_edit_label = '����äȤ�������(�ե����ɤ򹹿����ʤ�)'
