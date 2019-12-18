# frozen_string_literal: true
require_relative '../shared_functions.rb'

module Tr3llo
  module Command
    module Feed
      class FeedCommand
        def initialize(board_id)
          @board_id = board_id
        end

        def execute

          puts 'hoi hoi hoi hoi'
          # interface.print_frame do
          #   load_lists(@board_id)
          #   Tr3llo::Presenter::List::CardsPresenter
          #     .new(interface)
          #     .print!(list_feed)
          end
        end

        private

        def list_feed
          API::List.find_feeds_by_board(@board_id)
        end

        def load_lists(board_id)
          @list_id = interface.input.select(
            'Choose a list:',
            API::List
              .find_all_by_board(board_id)
              .map { |list| [list[:name], list[:id]] }
              .to_h
          )
        end

        def interface
          $container.resolve(:interface)
        end
      end
    end
  end
end