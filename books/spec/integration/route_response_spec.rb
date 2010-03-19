require 'spec_helper'

describe "Route requirements" do
  before do
    @all_routes = ENV['CONTROLLER'] ? ActionController::Routing::Routes.routes.select { |route| route.defaults[:controller] == ENV['CONTROLLER'] } : ActionController::Routing::Routes.routes
  end

  it "should have a controller that responds to action where specified" do
    pending
    reqs = @all_routes.find_all { |route| not route.requirements.empty? }.map { |route| route.requirements.inspect }
    reqs.each do |req|
      p reqs
      action = req[:action]
      controller_class = Kernel.const_get(req[:controller].camelize + "Controller")
      controller_class.instance_methods.should include(action)
    end
  end
end