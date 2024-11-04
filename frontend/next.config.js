    // ./frontend/next.config.js
    
    /** @type {import('next').NextConfig} */

    const Protocol = process.env.NEXT_PROTOCOL;
    const Hostname = process.env.NEXT_HOSTNAME;
    
    const nextConfig = {
      experimental: {
        appDir: true,
      },
      images: {
        domains: ['next-js-blog-vvss.onrender.com','images.pexels.com'], 
        remotePatterns: [
          {
            protocol: `${Protocol}`,
            hostname: `${Hostname}`,
            port: '1337',
            pathname: '/uploads/**',
          },
          {
            protocol: `${Protocol}`,
            hostname: 'images.pexels.com',
          }
        ],
      },
    }
    
    module.exports = nextConfig