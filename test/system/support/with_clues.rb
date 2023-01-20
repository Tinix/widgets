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
    rescue Exception => e
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
