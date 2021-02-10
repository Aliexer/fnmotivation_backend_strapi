module.exports = {
  async deleteByWhere(ctx) {
    const { article_id, user_id } = ctx.params;

    const entity = await strapi.query('article_like').delete({ article_id, user_id });
    return sanitizeEntity(entity, { model: strapi.models.article_like })
  },

};
