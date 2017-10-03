require 'pg'

class Bounty

  attr_accessor :species, :homeworld, :danger_level, :collected_by

def initialize(bounties)
  @id = bounties['id'].to_i if bounties['id']
  @species = bounties['species']
  @homeworld = bounties['homeworld']
  @danger_level = bounties['danger_level']
  @collected_by = bounties['collected_by']

end


# Implement Save, Update, Delete Methods below (CRUD)

def save()
  # Connect to our db
  db = PG.connect({dbname: 'bounties', host: 'localhost'})
  # Insert SQL command to be exacuted when save() is called
  # Below inserts values $1, 2, 3, 4 into the columns called
  #
  sql = "INSERT INTO bounties (
    species,
    homeworld,
    danger_level,
    collected_by
  )
    VALUES (
      $1, $2, $3, $4
    )
    RETURNING * ;
  "
# tell the save function what your values are
  values = [@species, @homeworld, @danger_level, @collected_by]
  db.prepare('save', sql)
  @id = db.exec_prepared("save", values)[0]['id'].to_i
  db.close()

end

def self.delete_all()
  db = PG.connect({dbname: 'bounties', host: 'localhost'})
  sql = "DELETE FROM bounties;"
  values = []
  db.prepare("delete_all", sql)
  db.exec_prepared("delete_all", values)
  db.close()
end

def delete()
  db = PG.connect({dbname: 'bounties', host: 'localhost'})
  sql = "DELETE FROM bounties WHERE id = $1;"
  values = [@id]
  db.prepare("delete_one", sql)
  db.exec_prepared("delete_one", values)
  db.close()
end

def update()
  db = PG.connect({dbname: 'bounties', host: 'localhost'})
  sql = "UPDATE bounties SET (
  species,
  homeworld,
  danger_level,
  collected_by
  ) =
  ($1, $2, $3, $4)
  WHERE id = $5;
  "
  values = [@species, @homeworld, @danger_level, @collected_by, @id]
  db.prepare("update", sql)
  db.exec_prepared("update", values)
  db.close()
end
