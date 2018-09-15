const router = require('koa-router')()
const items_controllers = require('../controllers/item')
router.get('/', items_controllers.getItems)
router.get('/:id', items_controllers.getItemsById)

module.exports = router