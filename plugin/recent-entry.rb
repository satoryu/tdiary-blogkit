# recent_entry.rb $Revision: 1.1.1.1 $
#
# recent_entry: title_list��ɽ�����¤��������
#   �ѥ�᥿(���å����̤���������):
#     max:       
#     extra_erb: �����ȥ�ꥹ�������夵���ERb���̤���(false)
#
def recent_entry( max = 5, extra_erb = false )
	result = "<ul>\n"
	@diaries.keys.sort.reverse.each_with_index do |date, idx|
		break if idx >= max
		diary = @diaries[date]
		next unless diary.visible?
		result << %Q[<li><a href="#{@index}#{anchor date}">#{diary.title}</a></li>\n]
	end
	result << "</ul>\n"
	if extra_erb and /<%=/ === result
		result.untaint if $SAFE < 3
		ERbLight.new( result ).result( binding )
	else
		result
	end
end

