class Band < ActiveRecord::Base
	has_many :band_events
	has_many :events, :through => :band_events
end
