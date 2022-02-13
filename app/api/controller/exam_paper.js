function _asyncToGenerator(fn) { return function () { var gen = fn.apply(this, arguments); return new Promise(function (resolve, reject) { function step(key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { return Promise.resolve(value).then(function (value) { step("next", value); }, function (err) { step("throw", err); }); } } return step("next"); }); }; }

const Base = require("./base.js");

module.exports = class extends Base {
  listAction() {
    var _this = this;

    return _asyncToGenerator(function* () {
      const model = _this.model("exam_paper");
      const data = yield model.field(["id", "name", "subject_id", "paper_type", "grade_level", "score", "question_count", "suggest_time", "limit_start_time", "limit_end_time", "frame_text_content_id", "create_user", "create_time", "deleted", "task_exam_id"]).page(_this.get("page") || 1, _this.get("size") || 10).countSelect();

      return _this.success(data);
    })();
  }

  detailAction() {
    var _this2 = this;

    return _asyncToGenerator(function* () {
      const model = _this2.model("exam_paper");
      const data = yield model.where({ id: _this2.get("id") }).find();

      return _this2.success(data);
    })();
  }

  relatedAction() {
    var _this3 = this;

    return _asyncToGenerator(function* () {
      const model = _this3.model("exam_paper");
      const data = yield model.field(["id", "name"]).limit(4).select();

      return _this3.success(data);
    })();
  }
};