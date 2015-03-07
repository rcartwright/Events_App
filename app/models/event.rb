class Event < ActiveRecord::Base
	has_many :band_events
	has_many :bands, :through => :band_events

	accepts_nested_attributes_for :bands
end
