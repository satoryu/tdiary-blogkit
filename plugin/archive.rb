# archive.rb $Revision: 1.8 $
#
# archive: show list of past news archive
#   parameter: none.
#
# archive_dropdown: show list of past news archive in dropdown.
#   parameter(default):
#      label: label of submit button ('Go')
#
# Copyright (c) 2002 TADA Tadashi <sho@spc.gr.jp>
# Distributed under the GPL
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
	result = %Q[<form method="get" action="#{@index}"><div>\n]
	result << %Q[<select name="date">\n]
	list = archive_make_list
	count = list.length
	list.each do |month|
		result << %Q[<option value="#{month}">#{'%05d' % count}</option>\n]
		count -= 1
	end
	result << %Q[</select>\n<input type="submit" value="#{label}">\n]
	result << %Q[</div></form>\n]
end

if @mode == 'month'
	list = archive_make_list.sort.push( nil ).unshift( nil )
	this = @date.strftime( "%Y%m" )
	@archive_index = list.index( this )
end

def navi_prev_month
	'%05d' % (@archive_index - 1)
end

def navi_next_month
	'%05d' % (@archive_index + 1)
end

