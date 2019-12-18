# frozen_string_literal: true

module Tr3llo
    module Presenter
      module Board
        class FeedPresenter
          def initialize(interface)
            @interface = interface
          end

          def print!(feed)
            interface.print_frame do
              feed.each { |feed| present_feed(feed) }
            end
          end

          private

          attr_reader :interface

          def present_feed(feed)
            date = Date.parse(feed[:date]).strftime("%a %d %b %H:%M")

            # if feed.key?(:idList)
            #     status_change = [:board][:listBefore][:name] - [:board][:listAfter][:name]
            # else
            #   status_change = 'ggrggrggrh'
            # end
            # {feed[:data][:card][:name]} - #{feed[:data][:old][:name]}

            # [:listBefore][:name] - [:listAfter]

            interface.puts "On #{date} - #{feed[:memberCreator][:fullName].labelize} did: #{feed[:type]}"
          end
        end
      end
    end
  end