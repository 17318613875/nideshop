const Base = require("./base.js");

module.exports = class extends Base {
  /**
   * index action
   * @return {Promise} []
   */
  async indexAction() {
    const page = this.get("page") || 1;
    const size = this.get("size") || 10;
    const name = this.get("name") || "";
    const id = this.get("id") || undefined;

    const model = this.model("goods");
    const data = await model
      .where(Object.assign({ name: ["like", `%${name}%`] }, (id && { id }) || {}))
      .order(["id DESC"])
      .page(page, size)
      .countSelect();

    return this.success(data);
  }

  async infoAction() {
    const id = this.get("id");
    const model = this.model("goods");
    const data = await model.where({ id: id }).find();

    return this.success(data);
  }

  async storeAction() {
    if (!this.isPost) {
      return false;
    }

    const values = this.post();
    const id = this.post("id");

    const model = this.model("goods");
    values.is_on_sale = values.is_on_sale ? 1 : 0;
    values.is_new = values.is_new ? 1 : 0;
    values.is_hot = values.is_hot ? 1 : 0;
    if (id > 0) {
      await model.where({ id: id }).update(values);
    } else {
      delete values.id;
      await model.add(values);
    }
    return this.success(values);
  }

  async destoryAction() {
    const id = this.post("id");
    await this.model("goods").where({ id: id }).limit(1).delete();
    // TODO 删除图片

    return this.success();
  }
};
