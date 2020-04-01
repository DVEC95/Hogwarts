require_relative("../db/sqlrunner.rb")
require_relative("./student")

class House

  attr_accessor :name, :logo
  attr_reader :id

  def initialize(house)
    @id = house['id'].to_i if house['id']
    @name = house['name']
    @logo = house['logo']
  end

  def save()
    sql = "INSERT INTO houses (name, logo)
          VALUES ($1, $2) RETURNING id"
    values = [@name, @logo]
    @id = SQLRunner.run(sql, values)[0]["id"].to_i
  end

  def update()
    sql = "UPDATE houses SET (name, logo)
          = ($1, $2) WHERE id = $3"
    values = [@name, @logo, @id]
    SQLRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM houses WHERE id = $1"
    values = [@id]
    SQLRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    SQLRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SQLRunner.run(sql)
    return houses.map {|house| House.new(house)}
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    house = SQLRunner.run(sql, values).first
    return nil if house == nil
    return House.new(house)
  end

end
