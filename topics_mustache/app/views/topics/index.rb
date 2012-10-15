module Views
	module Topics
		class Index < ActionView::Mustache
			def topics?
				!@topics.empty?
			end

			def topics
				@topics.map do |topic|
					{
						:title => topic.title,
						:body => simple_format(truncate(topic.body, :length=>100)),
						:url => url_for(topic)
					}
					
				end
			end

			def new_topic_link
				link_to "New Topic", new_topic_path
			end

		end
	end
end