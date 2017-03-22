module TinyTds
  class Result

    include Enumerable

    def receive_message(&block)
      @message_handler = block
    end

    def forward_message(e)
      if @message_handler
        @message_handler.call(e)
      end
    end
  end
end
