const {
  DB_USER,
  DB_PASS,
  DB_HOST,
  DB_PORT,
  DB_NAME,
  DB_SCHEMA,
  SUPER_USER,
  SUPER_USER_PASSWORD,
  DB_ANON_ROLE,
  JWT_SECRET
} = process.env;
module.exports = {
  app_name: "A Game of Theories",
  db: {
    connection: {
      host: DB_HOST,
      port: DB_PORT,
      database: DB_NAME,
      user: SUPER_USER,
      password: SUPER_USER_PASSWORD
    },
    pool: {
      min: 2,
      max: 10
    },
    schema: DB_SCHEMA,
    table: "users"
  },
  email: {
    from: "contact@agameoftheories.com",
    host: "mail.privateemail.com",
    port: 465,
    secure: true,
    auth: {
      user: "contact@agameoftheories.com",
      pass: "thepassword"
    }
  },
  payload: {
    exp: 604800,
    iss: "https://agameoftheories.com"
  },
  port: 3001,
  roles: {
    anonymous: "normal_user",
    user: "normal_user"
  },
  secret: JWT_SECRET
};
