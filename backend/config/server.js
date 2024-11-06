const externalUrl = process.env.RENDER_EXTERNAL_URL;
module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  url: env('RENDER_EXTERNAL_URL',`${externalUrl}`),
  app: {
    keys: env.array('APP_KEYS', ['myKeyA', 'myKeyB']),
  },
});
