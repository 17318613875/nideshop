const mysql = require("think-model-mysql");
const isDev = think.env === 'development';
console.log("isDev =>", isDev);

module.exports = {
  handle: mysql,
  database: "cms_admin",
  prefix: "nideshop_",
  encoding: "utf8mb4",
  host: isDev
    ? "sh-cynosdbmysql-grp-0syinc58.sql.tencentcdb.com"
    : "10.0.224.11",
  port: isDev ? "23892" : "3306",
  user: "binbin",
  password: "qweasd123!@#",
  dateStrings: true,
};
