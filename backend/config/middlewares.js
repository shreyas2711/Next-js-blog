module.exports = [
    {
      name: 'strapi::public',
      config: {
        maxAge: 31536000,
        path: './public/uploads',
      },
    },
  'strapi::errors',
  'strapi::security',
  'strapi::cors',
  'strapi::poweredBy',
  'strapi::logger',
  'strapi::query',
  'strapi::body',
  'strapi::session',
  'strapi::favicon',
  'strapi::public',
];
