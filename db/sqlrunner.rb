require ('pg')

class SQLRunner

  def SQLRunner.run(sql, values=[])
    begin
      db = PG.connect({dbname: 'Hogwarts', host: 'localhost'})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close()
    end
    return result
  end

end
