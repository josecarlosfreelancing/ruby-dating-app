// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries



// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
apiKey: "AIzaSyAVF15SNujzuM5oGccnWwhk-Fm51yaxPtI",
authDomain: "sinder-web-react.firebaseapp.com",
projectId: "sinder-web-react",
storageBucket: "sinder-web-react.appspot.com",
messagingSenderId: "915988182739",
appId: "1:915988182739:web:25db4639b29fd183098626",
measurementId: "G-DJG6VK4541"
};



// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);

export { app, analytics };