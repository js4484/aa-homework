require_relative 'plays.rb'

class Play
  attr_accessor :id, :title, :year, :playwright_id

  def self.all
    data = PlayDBConnection.instance.execute("SELECT * FROM plays")
    data.map { |datum| Play.new(datum) }
  end
  def self.find_by_name(name)
    PlayDBConnection.instance.execute(<<-SQL, self.name, self.id, self.year)
    SELECT
        id
    FROM
        plays
    WHERE
        self.name = name
    SQL
  end
 

  def initialize(options)
    @name = name
    @id = options['id']
    @year = options['year']
  end

  def create
    raise "#{self} already in database" if self.id
    PlayDBConnection.instance.execute(<<-SQL, self.name, self.id, self.year)
      INSERT INTO
        plays (name, id, year)
      VALUES
        (?, ?, ?)
    SQL
    self.id = PlayDBConnection.instance.last_insert_row_id
  end

  def update
    raise "#{self} not in database" unless self.id
    PlayDBConnection.instance.execute(<<-SQL, self.name, self.id, self.year)
      UPDATE
        plays
      SET
        name = ?, id = ?, year = ?
      WHERE
        id = ?
    SQL
  end
  def get_plays
    PlayDBConnection.instance.execute(<<-SQL, self.name, self.id, self.year)
      SELECT 
        *
      
    SQL
  end
end
