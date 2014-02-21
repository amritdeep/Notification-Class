require 'active_support/notifications'

class Notification

  def initialize(*args)
    @event = ActiveSupport::Notifications::Event.new(*args)
  end

  def process
    begin
      @event.name
      @event.time
      @event.end
      @event.transcation_id
      @event.children
      @event.payload
    rescue Exception => e
      raise NotImplementedError
    end 
  end

end





          # @event.name = name  ## name of event
          # @event.start = start ## star time
          # @event.finish = finish ## end time
          # @event.id = id  ## event id
          # @event.payload = payload ## payload of event in hash i.e {user: 123}