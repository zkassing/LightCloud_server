module.exports = async (ctx, next) => {
  try {
    await next()
    ctx.body = {
      code: ctx.status,
      msg: '请求成功',
      ...ctx.body
    }
  } catch (err) {
    ctx.body = {
      res_code: err.status,
      res_msg: err.message
    }
  }
}