public with sharing class ClassTest {

    public static String name;
    public static Integer id;
    static public Map<String, RGB> colorMap = new Map<String, RGB>();

    class RGB {

        Integer red;
        Integer green;
        Integer blue;

        RGB(Integer red, Integer green, Integer blue) {
            this.red = red;
            this.green = green;
            this.blue = blue;
        }
    }
    static {
        colorMap.put('red', new RGB(255, 0, 0));
    }

    public ClassTest()
    {
        name = 'test';
        id = 1;
        colorMap.put('red', new RGB(255, 0, 0));


    }


    //
    public void test1()
    {
        name = 'prueba';
        id = 2;
        System.debug(name + id);
    }

    //
    public void test2()
    {
        System.debug(name + id);
    }


    static public void test3()
    {
        System.debug(name + id);
    }
}