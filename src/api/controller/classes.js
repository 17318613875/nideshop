const Base = require('./base.js');

module.exports = class extends Base {
  async listAction() {
    const model = this.model('classes');
    const data = await model.field(['id', 'name', 'media_type', 'image_url', 'content', 'sort_order']).page(this.get('page') || 1, this.get('size') || 10).countSelect();

    return this.success(data);
  }

  async detailAction() {
    const model = this.model('classes');
    const data = await model.where({id: this.get('id')}).find();

    return this.success(data);
  }

  async relatedAction() {
    const model = this.model('classes');
    const data = await model.field(['id', 'name', 'media_type', 'image_url', 'content']).limit(4).select();

    return this.success(data);
  }
};
