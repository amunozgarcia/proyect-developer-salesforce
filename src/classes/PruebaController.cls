/**
 * class de prueba
 */
public with sharing class PruebaController {

    //objeto get set
    public ApexPages.StandardSetController setCon { get; set; }


//    public static void test()
//    {
//        System.debug(ClassTest.name+'='+ClassTest.id);
//    }
    /**
     * Función get ; set
     * resultado de lista de ventas
     */
    public List<Ventas__c> ventas
    {
        
        get {
            if (setCon != null )
                return (List<Ventas__c>)setCon.getRecords();
            else
                return null;
        }
        set;
    }


    /**
     * Constructor
     */
    public PruebaController()
    {
        //seleccionamos un listado limitado de ventas
        List<Ventas__c> result = [SELECT Name, Name__c, Locations__c,
                State__c, Vendedor__r.Name, Vendedor__r.Phone,
                Vendedor__r.Email, Account__r.Name FROM Ventas__c limit 100];

        //añadimos el resultado al apex pages
        setCon = new ApexPages.StandardSetController(result);

    }



    /*
     *  lectura
     */
    public void read()
    {
        //try
        try
        {
            //debug
        }
        catch (Exception e) {
//           System.debug('Prueba');
        }


        //recorremos las lineas
        for(Ventas__c v : (List<Ventas__c>) ventas)
        {
            //system debug
            System.debug('Nombre: '+ v.Name__c +
                    ' Vendedor: '+ v.Vendedor__r.Name);
        }
    }


}