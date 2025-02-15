const Base = require("./base.js");
const fs = require("fs");
const path = require("path");

module.exports = class extends Base {
  async brandPicAction() {
    const brandFile = this.file("brand_pic");
    if (think.isEmpty(brandFile)) {
      return this.fail("保存失败");
    }
    const that = this;
    const filename = "/static/upload/brand/" + think.uuid(32) + ".jpg";
    const is = fs.createReadStream(brandFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + "/www" + filename);
    is.pipe(os);

    return that.success({
      name: "brand_pic",
      fileUrl: "http://127.0.0.1:8360" + filename,
    });
  }

  async brandNewPicAction() {
    const brandFile = this.file("brand_new_pic");
    if (think.isEmpty(brandFile)) {
      return this.fail("保存失败");
    }
    const that = this;
    const filename = "/static/upload/brand/" + think.uuid(32) + ".jpg";

    const is = fs.createReadStream(brandFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + "/www" + filename);
    is.pipe(os);

    return that.success({
      name: "brand_new_pic",
      fileUrl: "http://127.0.0.1:8360" + filename,
    });
  }

  async categoryWapBannerPicAction() {
    const imageFile = this.file("wap_banner_pic");
    if (think.isEmpty(imageFile)) {
      return this.fail("保存失败");
    }
    const that = this;
    const filename = "/static/upload/category/" + think.uuid(32) + ".jpg";
    const savePath = path.join(think.ROOT_PATH, "www", filename);

    console.log("==>", imageFile.path, filename, savePath);
    const is = fs.createReadStream(imageFile.path);
    const os = fs.createWriteStream(savePath);
    is.on("end", () => {
      console.log("==> end");
    });
    os.on("error", (...args) => {
      console.log("==> error", ...args);
    });
    is.pipe(os);

    return that.success({
      name: "wap_banner_url",
      fileUrl: "http://127.0.0.1:8360" + filename,
    });
  }

  async adThumbAction() {
    const imageFile = this.file("image_url");
    if (think.isEmpty(imageFile)) {
      return this.fail("保存失败");
    }
    const that = this;
    const filename = "/static/upload/ad/" + think.uuid(32) + ".jpg";

    const is = fs.createReadStream(imageFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + "/www" + filename);
    is.pipe(os);

    return that.success({
      name: "ad_pic_url",
      fileUrl: "http://127.0.0.1:8360" + filename,
    });
  }

  async topicThumbAction() {
    const imageFile = this.file("scene_pic_url");
    if (think.isEmpty(imageFile)) {
      return this.fail("保存失败");
    }
    const that = this;
    const filename = "/static/upload/topic/" + think.uuid(32) + ".jpg";

    const is = fs.createReadStream(imageFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + "/www" + filename);
    is.pipe(os);

    return that.success({
      name: "scene_pic_url",
      fileUrl: "http://127.0.0.1:8360" + filename,
    });
  }

  async classesThumbAction() {
    const imageFile = this.file("classes_pic_url");
    if (think.isEmpty(imageFile)) {
      return this.fail("保存失败");
    }
    const that = this;
    const filename = "/static/upload/classes/" + think.uuid(32) + ".jpg";

    const is = fs.createReadStream(imageFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + "/www" + filename);
    is.pipe(os);

    return that.success({
      name: "classes_pic_url",
      fileUrl: "http://127.0.0.1:8360" + filename,
    });
  }

  async assessmentThumbAction() {
    const imageFile = this.file("assessment_pic_url");
    if (think.isEmpty(imageFile)) {
      return this.fail("保存失败");
    }
    const that = this;
    const filename = "/static/upload/assessment/" + think.uuid(32) + ".jpg";

    const is = fs.createReadStream(imageFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + "/www" + filename);
    is.pipe(os);

    return that.success({
      name: "assessment_pic_url",
      fileUrl: "http://127.0.0.1:8360" + filename,
    });
  }
};
