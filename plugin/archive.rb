# archive.rb $Revision: 1.3 $
#
# archive: �����Υ��������ְ�����ɽ������
#   �ѥ�᥿: �ʤ�
#
def archive_make_list
	list = []
	@years.keys.sort.reverse_each do |year|
		@years[year.to_s].sort.reverse_each do |month|
			list << "#{year}#{month}"
		end
	end
	list
end

def archive
	result = %Q[<ul>\n]
	list = archive_make_list
	count = list.length
	list.each do |month|
		result << %Q[<li><a href="#{@index}#{anchor "#{month}"}">#{'%05d' % count}</a></li>\n]
		count -= 1
	end
	result << %Q[</ul>\n]
end

def archive_dropdown( label = 'Go' )
	result = %Q[<form method="get" action="#{@index}">\n]
	result << %Q[<select name="date">\n]
	list = archive_make_list
	count = list.length
	list.each do |month|
		result << %Q[<option value="#{month}">#{'%05d' % count}</option>\n]
		count -= 1
	end
	result << %Q[</select>\n<input type="submit" value="#{label}">\n]
	result << %Q[</form>\n]
end
