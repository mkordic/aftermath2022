importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-messaging-compat.js");

firebase.initializeApp({
  apiKey: "AIzaSyBB7E7P5M8Qzh2we1Go3W7Mvufsstwp0o8",
     authDomain: "aftermath-30412.firebaseapp.com",
     databaseURL: "https://aftermath-30412-default-rtdb.firebaseio.com",
     projectId: "aftermath-30412",
     storageBucket: "aftermath-30412.appspot.com",
     messagingSenderId: "349709736353",
     appId: "1:349709736353:web:c6205c95089ddbf4fb13e0",
});
// Necessary to receive background messages:
const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((m) => {
  console.log("onBackgroundMessage", m);
});