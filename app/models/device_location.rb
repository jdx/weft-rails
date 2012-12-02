class DeviceLocation
  include Mongoid::Document
  include Mongoid::Timestamps

  field :lat, type: Float
  field :lon, type: Float
  field :elevation, type: Float

  validates :lat, presence: true
  validates :lon, presence: true

  after_create :update_pusher

  def update_pusher
    Pusher.trigger('test_channel', 'update', {})
  end
end
