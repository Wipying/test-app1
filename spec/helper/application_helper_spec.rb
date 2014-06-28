require 'spec_helper'

describe ApplicationHelper do
	describe "full_title" do
		it "should have the page title" do
			expect(full_title('foo')).to match(/foo/)
		end

		it "should have the base title" do
			expect(full_title('foo')).to match(/^The demo app for the Shinny Rock/)
		end

		it "should not include a bar for the home page" do
			expect(full_title('')).not_to match(/\|/)
		end
	end
end