import path from 'path'
import { fileURLToPath } from 'url'

const __dirname = fileURLToPath(new URL('.', import.meta.url))

/** @type {import('next').NextConfig} */
const nextConfig = {
  webpack: (config) => {
    // Force a single React instance — prevents duplicate React errors in monorepos
    config.resolve.alias['react'] = path.resolve(__dirname, 'node_modules/react')
    config.resolve.alias['react-dom'] = path.resolve(__dirname, 'node_modules/react-dom')
    return config
  },
}

export default nextConfig
