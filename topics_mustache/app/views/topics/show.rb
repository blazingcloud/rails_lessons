module Views
	module Topics
		class Show < ActionView::Mustache
			def topic
				{
					:title => @topic.title,
					:body => simple_format(@topic.body)
				}
			end

			def topics_list_link
				link_to "See All Topics", topics_path
			end

		end
	end
end