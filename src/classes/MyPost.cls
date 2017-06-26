@RestResource(urlMapping='/MyPost/*')
global with sharing class MyPost {

    @HttpPost
    global static String doPost(String name) {

        return 'test';
    }

    @HttpGet
    global static String doGet() {

        return 'Get';
    }

}