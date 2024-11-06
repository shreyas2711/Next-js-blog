module.exports = [
  'strapi::errors',
  {
    name: 'strapi::security',
    config: {
      contentSecurityPolicy: {
        directives: {
          'img-src': ["'self'", 'data:', 'blob:', 'https://next-js-blog-vvss.onrender.com'],
          'media-src': ["'self'", 'data:', 'blob:', 'https://next-js-blog-vvss.onrender.com'],
        },
      },
    },
  },
  {
    name: 'strapi::cors',
    config: {
      origin: ['https://next-js-blog-vvss.onrender.com'],
      methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'],
      credentials: true,
    },
  },
  'strapi::poweredBy',
  'strapi::logger',
  'strapi::query',
  'strapi::body',
  'strapi::session',
  'strapi::favicon',
  'strapi::public',
];
