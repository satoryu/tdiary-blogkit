#
# blog-style.rb: customize for blog style tDiary.
#
def no_diary
	"Article ##{@date.strftime( '%Y%m%d' )} dose not exist."
end

def comment_today
	'Comments'
end

def comment_total( total )
	"(#{total})"
end

def comment_new
	'Post a comment'
end

def comment_description
	'Post a comment'
end

def comment_description_short
	'Post a comment'
end

def comment_name_label
	'Name'
end

def comment_name_label_short
	'Name'
end

def comment_mail_label
	'Email Address'
end

def comment_mail_label_short
	'Email'
end

def comment_body_label
	'Comments'
end

def comment_body_label_short
	'Comments'
end

def comment_submit_label
	'Post'
end

def comment_submit_label_short
	'Post'
end

def comment_date( time )
	format = @options['blog.date_format'] || 'on %B %d, %Y %H:%M'
	time.strftime( format )
end

def referer_today
	"Today's Link"
end

def navi_index
	'Index'
end

def navi_latest
	'Main'
end

def navi_update
	"Update"
end

def navi_edit
	"Edit"
end

def navi_preference
	"Preference"
end

def label_hidden_diary
	'This article is now HIDDEN.'
end

def mobile_label_hidden_diary
	'This article is now HIDDEN.'
end

#
# title
#
alias title_tag_ title_tag
def title_tag
	return title_tag_ unless @mode == 'day'
	diary = @diaries[@date.strftime('%Y%m%d')]
	if diary
		title = %Q|#{diary.title}|
		return "<title>#{@html_title} - #{title}</title>"
	else
		return title_tag_
	end
end
