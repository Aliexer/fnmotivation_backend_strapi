'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/v3.x/concepts/controllers.html#core-controllers)
 * to customize this controller
 */

module.exports = {
  async thumbDown(ctx) {
    // return 'fda'
    const { article_id, user_id } = ctx.params;
    const entity = await strapi.query('article-like').delete({ article_id, user_id });
    return entity
  },
};
