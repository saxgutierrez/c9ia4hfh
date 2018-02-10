# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  beds        :integer
#  guests      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
#


class Room < ActiveRecord::Base
	validates :title, presence: true, on: :create
	validates :description, presence: true, length: {in: 0..400}, on: :create
	validates :beds, presence: true, numericality: true, on: :create
	validates :guests, presence: true,numericality: true, on: :create
	validates :image_url, presence: true, on: :create
	validates :price_per_night, presence: true, numericality: true, on: :create
end
