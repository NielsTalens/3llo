# frozen_string_literal: true
require_relative '../shared_functions.rb'

module Tr3llo
  module Command
    module Board
      class FeedCommand

        def execute
          board_id = load_board(select_board)
          @board_id = board_id[:id]

          $container.register(:board, board_id)
          interface.print_frame do
            Tr3llo::Presenter::Board::FeedPresenter
              .new(interface)
              .print!(list_feed)
          end
        end

        private

        def list_feed
          API::Board.find_feeds_by_board(@board_id)
        end

        def select_board
          interface.input.select('Board to select: ', board_choices)
        end

        def board_choices
          user_id = $container.resolve(:user)[:id]
          API::Board
            .find_all_by_user(user_id)
            .map { |board| [board[:name], board[:id]] }
            .to_h
        end

        def load_board(board_id)
          API::Board.find(board_id)
        end

        def interface
          $container.resolve(:interface)
        end
      end
    end
  end
end