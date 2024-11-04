// ./frontend/next.config.js

const nextConfig = {
  experimental: {
    appDir: true,
  },
  images: {
    domains: ['next-js-blog-vvss.onrender.com', 'images.pexels.com'],
    remotePatterns: [
      {
        protocol: 'https',
        hostname: 'next-js-blog-vvss.onrender.com',
        pathname: '/uploads/**',
      },
      {
        protocol: 'https',
        hostname: 'images.pexels.com',
      },
    ],
  },
}

module.exports = nextConfig;
