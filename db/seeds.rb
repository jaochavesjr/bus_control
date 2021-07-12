# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'net/http'
require 'net/https' # for ruby 1.8.7
require 'json'

module BRPopulate
  def self.states
    http = Net::HTTP.new('raw.githubusercontent.com', 443); http.use_ssl = true
    JSON.parse http.get('/celsodantas/br_populate/master/states.json').body
  end

  def self.populate
    states.each do |state|
      state_obj = State.new(acronym: state['acronym'], name: state['name'])
      state_obj.save

      state['cities'].each do |city|
        c = City.new
        c.name = city['name']
        c.state = state_obj
        c.save
        puts "Adicionando a cidade #{c.name} ao estado #{c.state.name}"
      end
    end
  end
end

BRPopulate.populate
