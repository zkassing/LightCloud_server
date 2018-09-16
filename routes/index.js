const router = require('koa-router')()
const items = require('./items')
router.prefix('/api')

router.use('/items', items.routes(), items.allowedMethods())

module.exports = router
