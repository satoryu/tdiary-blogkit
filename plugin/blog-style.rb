# blog-style.rb: customize to blog like labels. $Revision: 1.8 $
#
# Copyright (c) 2003 TADA Tadashi <sho@spc.gr.jp>
# Distributed under the GPL
#
# THIS PLUGIN IS ALMOST MADE BY LANGUAGE RESOURCE. SEE ja OR en DIRECTORY.
#

#
# title
#
alias title_tag_ title_tag
def title_tag
	case @mode
	when 'day'
		diary = @diaries[@date.strftime('%Y%m%d')]
		if diary
			title = %Q|#{DiaryBase.method_defined?(:stripped_title) ? diary.stripped_title : diary.title}|
			return "<title>#{@html_title} - #{title}</title>"
		else
			return title_tag_
		end
	when 'month'
		list = archive_make_list.sort.push( nil ).unshift( nil )
		index = list.index( @date.strftime("%Y%m") )
		return "<title>#{@html_title} - #{'%05d' % (index)}</title>"
	else
		return title_tag_
	end
end

#
# disable section specify in sending TrackBack
#
@conf['tb.no_section'] = true

