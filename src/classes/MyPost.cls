@RestResource(urlMapping='/MyPost/*')
global with sharing class MyPost {

    @HttpPost
    global static String doPost(String name) {
        //return
        return 'test';
    }

    @HttpGet
    global static String doGet() {
        //global get prueba 3
        return 'Get';
    }

}