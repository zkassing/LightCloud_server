const router = require('koa-router')()
const demo = require('./demo')
router.prefix('/api')

router.use('/demo', demo.routes(), demo.allowedMethods())
module.exports = router
