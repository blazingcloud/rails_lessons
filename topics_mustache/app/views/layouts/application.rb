module Views
	module Layouts
		class Application < ActionView::Mustache
			def title
				"Topics with Mustache"
			end
		end
	end
end
