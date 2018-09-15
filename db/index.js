const mysql = require('mysql')
const db_config = require('../config/db')

const pool = mysql.createPool({...db_config})

const query = (sql, values) => {
  return new Promise((resolve, reject) => {
    pool.getConnection((err, connection) => {
      if (err) {
        reject(err)
        return 
      }
      connection.query(sql, values, (err, rows) => {
        if (err) {
          reject(err)
          return 
        }
        resolve(rows)
        connection.release()
      })
    })
  })
}
module.exports = query