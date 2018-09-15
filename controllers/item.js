const item_model = require('../models/item')
class ItemsControllers {
  static async getItems (ctx, next) {
    const page = ctx.query.page
    const limit = ctx.query.limit || 10
    const start = (page - 1) * limit
    const items = await item_model.getItems([[start, limit]])
    console.log(items)
    ctx.body = {result: items}
    ctx.status = 202
  }
  static async getItemsById (ctx, next) {
    const id = ctx.params.id
    const [item] = await item_model.getItemById(id)
    ctx.status = 202
    ctx.body = {result: item}
  }
}
module.exports = ItemsControllers