const query = require('../db/index.js')

class ItemsModel {
  static getItems (values) {
    const _sql = 'SELECT id, (SELECT avatar FROM t_users WHERE id = t_items.userid) as avatar, (SELECT name FROM t_users WHERE id = t_items.userid) as name, imgurl, title, detail, DATE_FORMAT(postdate,"%Y/%m/%d") as postdate FROM t_items LIMIT ?'
    return query(_sql, values )
  }
  static getItemById (values) {
    const _sql = 'SELECT id, (SELECT avatar FROM t_users WHERE id = t_items.userid) as avatar, (SELECT name FROM t_users WHERE id = t_items.userid) as name, imgurl, title, content, DATE_FORMAT(postdate,"%Y/%m/%d") as postdate FROM t_items WHERE id = ?'
    return query(_sql, values)
  }
}

module.exports = ItemsModel