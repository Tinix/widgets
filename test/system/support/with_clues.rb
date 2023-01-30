# frozen_string_literal: true

#
# with_clues.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
module TestSupport
  module WithClues
    # Wrap any assertion with this method to get more
    # useful context and diagnostics when a test is
    # unexpectedly failing
    def with_clues(&block)
      block.call
    rescue Exception => ex
			puts "[ with_clues ] Test failed: #{ex.message}"
			if page.driver.respond_to?(:browser)
				if page.driver.browser.respond_to?(:manage)
					if page.driver.browser.manage.respond_to?(:logs)
						logs = page.driver.browser.manage.logs
						browser_logs = logs.get(:browser)
						browser_logs.each do |log|
							puts log.message
						end
						puts "[ with_clues ] } END Browser Logs"
					else
						puts "[ with_clues ] NO BROWSER LOGS: " +
							"page.driver.browser.manage " +
							"#{page.driver.browser.manage.class} " +
							"does not respond to #logs"
					end
				else
					puts "[ with_clues ] NO BROWSER LOGS: " +
						"page.driver.browser #{page.driver.browser.class} " +
						"does not respond to #manage"
				end
			else
				puts "[ with_clues ] NO BROWSER LOGS: page.driver " +
					"#{page.driver.class} does not respond to #browser"
			end
      puts "[ with_clues ] Test failed: #{e.message}"
      puts '[ with_clues ] HTML {'
      puts
      puts page.html
      puts
      puts '[ with_clues ] } END HTML'
      raise e
    end
  end
end
