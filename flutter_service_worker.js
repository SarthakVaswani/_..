'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "android-chrome-192x192.png": "d747bb448e2601cca8963639acd0ddcc",
"android-chrome-512x512.png": "50428f84e0bc789022d8040137909bcf",
"apple-touch-icon.png": "21eafada1eb16e90802b56106803b043",
"assets/AssetManifest.json": "8219297c9583868dba3dfd8082c6f87d",
"assets/assets/fonts/Exo2-VariableFont_wght.ttf": "afd53ab0d9cb6142bfb815b8c9226401",
"assets/assets/images/github-logo.png": "3e22b5ef18f9a7c3e1a68c842dd13159",
"assets/assets/images/instagram.png": "7a7fda3b3009d91a6e4f80e94e74cf9b",
"assets/assets/images/l.png": "1a9291b12d642cb2fa8aa8fbef5c7be1",
"assets/assets/images/sv.jpg": "981207b23efd6590564c9bffb1bf1f2a",
"assets/FontManifest.json": "8eb532a5b4bc8fe1743405cf619ae5b4",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "7f1df1ee47854388e684afc0845ea820",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon-16x16.png": "088eee77ed00e43433fcb05bb1b5a775",
"favicon-32x32.png": "1043bb3eeb6dacef5fb2a59f64b56878",
"favicon.ico": "890a8bb695a4fcc03528c323ed924291",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "fd38216d7c49e9cd475b330e3c695b22",
"/": "fd38216d7c49e9cd475b330e3c695b22",
"main.dart.js": "a459962b3a9c5a08d0872e59d2ee8ca3",
"manifest.json": "35d6110b8786714dd40187f90d568dc3"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
