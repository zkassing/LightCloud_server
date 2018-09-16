const router = require('koa-router')()
const itemsControllers = require('../controllers/item')

router.get('/', itemsControllers.getItems)
router.get('/:id', itemsControllers.getItemsById)

module.exports = router