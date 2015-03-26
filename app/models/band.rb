class Band < ActiveRecord::Base
	has_many :band_events, inverse_of: :event
	has_many :events, :through => :band_events

	accepts_nested_attributes_for :band_events
end
