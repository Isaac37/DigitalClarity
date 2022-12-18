'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "404.html": "0a27a4163254fc8fce870c8cc3a3f94f",
"assets/AssetManifest.json": "17c53de1fbc3e09474751f15e9ed8b66",
"assets/assets/fonts/RobotoMono-Regular.ttf": "e5ca8c0ac474df46fe45840707a0c483",
"assets/assets/fonts/RubikMoonrocks-Regular.ttf": "d600125e8597b91eff5e33fa3ba79be8",
"assets/assets/images/about.PNG": "e73664050471d301ad749d68622c55a4",
"assets/assets/images/access.png": "36083fb7192a53c311deeda11293557a",
"assets/assets/images/arow.PNG": "c830057c670fc0b74a29eddb40ec64da",
"assets/assets/images/arrow.json": "3a909a2635f65e90cf1798c86013e008",
"assets/assets/images/b.png": "dbdb07b21835532a810e8eb9659299c8",
"assets/assets/images/blu.jpg": "d9c465c7e49b5156a779e950f98b4432",
"assets/assets/images/cancel.png": "68039c31a30ca0d7a7216932e39a38e2",
"assets/assets/images/consult.png": "5bdf4c33ab6d0beacd675264a83c49bf",
"assets/assets/images/contact.png": "12280e4170fbd16a130e5490edf274c2",
"assets/assets/images/goal.png": "3a96ae2aa4cd04bb853759efdd8a734f",
"assets/assets/images/goal1.png": "f01dc8d9c85a1cb4309718ac1a1311a6",
"assets/assets/images/goal2.png": "43d0459138119981093cb1cc8256d2ab",
"assets/assets/images/help.png": "d5eec52a0ec58be9d81b0e6d3bf8ed62",
"assets/assets/images/home.png": "18818c2b45d6e4847019c1a35e8f86b5",
"assets/assets/images/install.png": "b89d1d045c520f31250b98d493b44b5d",
"assets/assets/images/log.png": "627a4de20b29f1c31491504387f61947",
"assets/assets/images/logo.jpg": "65010eedb6caff7c0fe0bac074543ddd",
"assets/assets/images/n.PNG": "ffe5974b5cd4375584afe52d3b3b34cf",
"assets/assets/images/p.jpg": "2029f78c30008eb43f0d5bd986effbb6",
"assets/assets/images/phone.png": "9f49f079c6a8633b1553146ac53cb81e",
"assets/assets/images/q.jpg": "115b8e1844500b039ad4734f699572de",
"assets/assets/images/recover.png": "3318747208c3260588b72721015df13e",
"assets/assets/images/team.png": "936e02fd3a4f569a0d49f77aed488477",
"assets/assets/images/training.png": "dc84f631966a1973304157e84828ccbf",
"assets/assets/images/w.png": "43d0459138119981093cb1cc8256d2ab",
"assets/assets/images/wave.svg": "5826b3ef5175710cb68a5a71b769dfe5",
"assets/assets/images/web.png": "da9250ed58167a16d978abb686b4d163",
"assets/assets/images/zac.jpg": "2d9b9906932d1702876894251da210ac",
"assets/FontManifest.json": "58183b5ee8890aa46ca23c4756f0a4f9",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "35de782ab29e8c4dd089ed031c31ea37",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "4e20cb87b0d43808c49449ffd69b1a74",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "1f7cb220b3f5309130bd6d9ad87e0fc0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "26f5af2d93473531f82ef5060f9c6d45",
"assets/shaders/ink_sparkle.frag": "ae6c1fd6f6ee6ee952cde379095a8f3f",
"build/404.html": "0a27a4163254fc8fce870c8cc3a3f94f",
"build/index.html": "0d934af793327dd28118a6ad3b958bd8",
"/": "1efc5d0ee568173d16020038a3992303",
"favicon.ico": "efb887921605478d515f1dbb35507ae7",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "1efc5d0ee568173d16020038a3992303",
"main.dart.js": "646d018e81adb80b7ef7903e21cdda68",
"manifest.json": "5049fc80f198887b92952b2fbd3a0f35",
"version.json": "431c5ad8513d3ad92261c01f85860f44"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
