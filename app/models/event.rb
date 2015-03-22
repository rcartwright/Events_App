class Event < ActiveRecord::Base
	has_many :band_events, inverse_of: :band
	has_many :bands, :through => :band_events

	accepts_nested_attributes_for :band_events
end
