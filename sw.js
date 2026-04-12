// source/sw.js
const CACHE_NAME = 'my-blog-cache-v1';
const urlsToCache = [
  '/',
  '/index.html',
  '/styles/main.css', // 请替换为你的 CSS 文件路径
  '/js/main.js'       // 请替换为你的 JS 文件路径
];

self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(cache => cache.addAll(urlsToCache))
  );
});

self.addEventListener('fetch', event => {
  event.respondWith(
    caches.match(event.request)
      .then(response => response || fetch(event.request))
  );
});