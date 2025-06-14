import react from '@vitejs/plugin-react';
import { fileURLToPath, URL } from 'node:url';
import { defineConfig } from 'vite';
import svgr from 'vite-plugin-svgr';

// https://vitejs.dev/config/
export default defineConfig({
    plugins: [react(), svgr()],
    resolve: {
        alias: {
            'src': fileURLToPath(new URL('./src', import.meta.url)),
            '@images': fileURLToPath(new URL('./src/assets/images', import.meta.url)),
            '@css': fileURLToPath(new URL('./src/assets/css', import.meta.url)),
            '@components': fileURLToPath(new URL('./src/components', import.meta.url)),
            '@services': fileURLToPath(new URL('./src/services', import.meta.url)),
            '@hooks': fileURLToPath(new URL('./src/hooks', import.meta.url))
        }
    },
    server: {
        host: true,
        port: 5173,
        watch: {
            usePolling: true,
            interval: 1000
        }
    }
})
