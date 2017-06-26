@RestResource(urlMapping='/mypost/*')
global with sharing class MyRestResource {

    @HttpPost
    global static String doPost(String name) {

        return RestContext.request.requestBody.toString();
    }
}