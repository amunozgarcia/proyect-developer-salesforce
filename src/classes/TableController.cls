/**
 * Created by aure.munoz on 08/02/2017.
 *
 */

public with sharing class TableController {

    public List<Conceptos> conceptos{ get; set;}
    public List<DataObject> dataObjects = new List<DataObject>();
    //mapa en el que se le da un String = Token (CANAL+PERSONA+AÑO)
    public Map<String, Groups> mapGroups = new Map<String, Groups>();
    public List<String> headFixed = new List<String>{'Canal','Usuario','Fecha','Tienda'};
    //variables estatica
    public static String COLSPAN = 'colspan';
    public static String ROWSPAN = 'rowspan';

    //datos de tabla
    public String thead = '<thead>{0}</thead>';
    public String tr = '<tr>{0}</tr>';
    public String th = '<th {0}="{1}">{2}</th>';
    public String th2 = '<th>{0}</th>';
    public String htmlThead;

    public TableController()
    {
        //init();
        //group();
        //read();
        //assigment();
    }

    @RemoteAction
    public static String testData(String data)
    {
        return 'He llegado al '+ data;
    }

    public Void init()
    {
        //==============================>
        DataObject dataObject = new DataObject();
        dataObject.canal = 'STA';
        dataObject.usuario = 'Aure';
        dataObject.fecha = '2017';
        dataObject.concepto = 'Seguros';
        dataObject.subConcepto = null;
        DataObject.valor = '7';
        DataObject.idValor = 'ID001';

        //add
        this.dataObjects.add(dataObject);

        //==============================>
        dataObject = new DataObject();
        dataObject.canal = 'STA';
        dataObject.usuario = 'Aure';
        dataObject.fecha = '2017';
        dataObject.concepto = 'Seguros';
        dataObject.subConcepto = 'Acc. total';
        DataObject.valor = '309000';
        DataObject.idValor = 'ID002';

        //add
        this.dataObjects.add(dataObject);

        //==============================>
        dataObject = new DataObject();
        dataObject.canal = 'STA';
        dataObject.usuario = 'Aure';
        dataObject.fecha = '2017';
        dataObject.concepto = 'Financiación';
        dataObject.subConcepto = null;
        DataObject.valor = '309000';
        DataObject.idValor = 'ID003';

        //add
        this.dataObjects.add(dataObject);

        //==============================>
        dataObject = new DataObject();
        dataObject.canal = 'STA';
        dataObject.usuario = 'Aure';
        dataObject.fecha = '2017';
        dataObject.concepto = 'Concepto 1';
        dataObject.subConcepto = 'Sub2';
        DataObject.valor = '3';
        DataObject.idValor = 'ID004';

        //add
        this.dataObjects.add(dataObject);

        //==============================>
        dataObject = new DataObject();
        dataObject.canal = 'STA';
        dataObject.usuario = 'Aure';
        dataObject.fecha = '2017';
        dataObject.concepto = 'Concepto 2';
        dataObject.subConcepto = null;
        DataObject.valor = '3';
        DataObject.idValor = 'ID005';

        //add
        this.dataObjects.add(dataObject);

        //==============================>
        dataObject = new DataObject();
        dataObject.canal = 'STA';
        dataObject.usuario = 'Aure';
        dataObject.fecha = '2017';
        dataObject.concepto = 'Concepto 1';
        dataObject.subConcepto = 'Sub3';
        DataObject.valor = '6';
        DataObject.idValor = 'ID006';

        //add
        this.dataObjects.add(dataObject);
        //==============================>
        dataObject = new DataObject();
        dataObject.canal = 'STA';
        dataObject.usuario = 'Aure';
        dataObject.fecha = '2017';
        dataObject.concepto = 'Concepto 3';
        dataObject.subConcepto = null;
        DataObject.valor = 'Hola';
        DataObject.idValor = 'ID007';

        //add
        this.dataObjects.add(dataObject);

        //==============================>
//        dataObject = new DataObject();
//        dataObject.canal = 'STA';
//        dataObject.usuario = 'Pepito';
//        dataObject.fecha = '2017';
//        dataObject.concepto = 'Seguros';
//        dataObject.subConcepto = 'pepe';
//        DataObject.valor = 'Hola';
//
//        //add
//        this.dataObjects.add(dataObject);
//
        //==============================>
        dataObject = new DataObject();
        dataObject.canal = 'STA';
        dataObject.usuario = 'Pepito';
        dataObject.fecha = '2017';
        dataObject.concepto = 'Seguros';
        dataObject.subConcepto = 'S.segurin';
        DataObject.valor = 'Hola Aure';
        DataObject.idValor = 'ID008';

        //add
        this.dataObjects.add(dataObject);
//        //==============================>
        dataObject = new DataObject();
        dataObject.canal = 'STA';
        dataObject.usuario = 'Pepito';
        dataObject.fecha = '2016';
        dataObject.concepto = 'Concepto 4';
        dataObject.subConcepto = 'prueba';
        DataObject.valor = 'Hola Aure 2';
        DataObject.idValor = 'ID009';

        //add
        this.dataObjects.add(dataObject);
        //==============================>
        dataObject = new DataObject();
        dataObject.canal = 'STA';
        dataObject.usuario = 'Pepito';
        dataObject.fecha = '2016';
        dataObject.concepto = 'Seguros';
        dataObject.subConcepto = 'Segurr';
        DataObject.valor = 'x';
        DataObject.idValor = 'ID010';

        //add
        this.dataObjects.add(dataObject);

//        dataObject = new DataObject();
//        dataObject.canal = 'STA';
//        dataObject.usuario = 'Pepito';
//        dataObject.fecha = '2015';
//        dataObject.concepto = 'Seguros';
//        dataObject.subConcepto = 'pepe';
//        DataObject.valor = 'x';
//
//        //add
//        this.dataObjects.add(dataObject);

//        //==============================>
        dataObject = new DataObject();
        dataObject.canal = 'STA';
        dataObject.usuario = 'Pepito';
        dataObject.fecha = '2016';
        dataObject.concepto = 'Seguros';
        dataObject.subConcepto = null;
        DataObject.valor = 'Segurazo';
        DataObject.idValor = 'ID011';

        //add
        this.dataObjects.add(dataObject);
        dataObject = new DataObject();
        dataObject.canal = 'STA';
        dataObject.usuario = 'Pepito';
        dataObject.fecha = '2017';
        dataObject.concepto = 'Seguros';
        dataObject.subConcepto = null;
        DataObject.valor = 'Segurazo 2';
        DataObject.idValor = 'ID012';

        //add
        this.dataObjects.add(dataObject);

        System.debug(this.dataObjects);

    }

    /**
     * Metodo para agrupar los datos de la consultaS
     */
    public Void group()
    {
        //primero tengo que agrupar por gerarquia de datos
        //1 Filtro por canal
        //2 Filtro por usuario
        //3 Filtro por Año

        //inicializo nuevo grupo
        Groups newGroup = new Groups();

        for(DataObject data: this.dataObjects)
        {
            //token (canal + usuario + fecha)
            String token = data.canal+data.usuario+data.fecha;
            //instancia de conceptos
            Conceptos concepto = new Conceptos();
            //comprobación si es concepto
            Boolean isConcepto = false;

            //si existe el token del grupo
            if (mapGroups.containsKey(token))
            {
                //obtengo grupo para añadirle subconceptos
                newGroup = mapGroups.get(token);

                //recorro los conceptos para meter la agrupacion
                for(Conceptos c: newGroup.conceptos)
                {
                    //compruebo si es igual al nombre de concepto
                    if (c.name == data.concepto){

                        System.debug('C='+ c.name +' V='+ c.valor +' VR='+ data.valor);
                        //compruebo si es un concepto repetido pero sin subconceptos
                        if (c.subconceptos.size()>0 && data.subConcepto != null)
                        {
                            System.debug('Entro '+ c.name);
                            //si encuentro el concepto lo marco
                            isConcepto = true;
                            //Objecto concepto
                            concepto = c;
                        }
                        break;
                    }
                }
                //si no encuentro el concepto tengo que resetearlo
                if (concepto.name == null){
                    concepto.name = data.concepto;
                }
            }
            else {
                newGroup = new Groups();
                //añado los datos principales
                newGroup.canal  = data.canal;
                newGroup.usuario = data.usuario;
                newGroup.fecha = data.fecha;
                newGroup.conceptos = new List<Conceptos>();

                //nombre del concepto
                concepto.name = data.concepto;
            }

            //si hay suboonceptos
            if (data.subConcepto != null)
            {
                //añado subconcepto
                Subconceptos sc = new Subconceptos(data.subConcepto,data.valor);
                concepto.subConceptos.add(sc);
                //pongo null el valor de concepto
                concepto.valor = null;
            }
            else {
                //mando una lista vacía
                //concepto.subconceptos.add(new Subconceptos());
                //le añado el valor al concepto porque no tiene subconcepto
                concepto.valor = data.valor;
            }

            //añado a la lista de conceptos el concepto cuando es nuevo
            if (!isConcepto) {
                newGroup.conceptos.add(concepto);
            }
            //añado en la agrupacion
            mapGroups.put(token, newGroup);

        }

        //mapGroups: {STAAure2017=Groups:[canal=STA, conceptos=(Conceptos:[name=Concepto 1, subconceptos=(Subconceptos:[name=Sub1, valor=7], Subconceptos:[name=Sub2, valor=3], Subconceptos:[name=Sub3, valor=6]), valor=null], Conceptos:[name=Concepto 2, subconceptos=(), valor=3], Conceptos:[name=Concepto 3, subconceptos=(), valor=Hola]), fecha=2017, usuario=Aure]}
        System.debug('+++ mapGroups: '+ mapGroups);
        //assigmentTest();
    }
    /**
     * Método de asignacion de columnas
     * @format: [('concepto' : 'C', 'subconcepto': 'SB')]
     */
    public Map<String, String> assigmentColumns()
    {
        //mapa donde asignamos las columnas (combre columna, tipo concepto)
        Map<String, String> mapAssigment = new Map<String, String>();
        Set<String> setIssets = new Set<String>();
        //mapa para asignar por grupos
        Map<String, Set<String>> mapGroup = new Map<String, Set<String>>();
        //Mapa para asignar el nombre real de un subconcepto
        Map<String, String> mapSC = new Map<String, String>();
        //mapa para asignar el nombre real de un concepto
        Map<String, String> mapC = new Map<String, String>();


        Boolean isExistingSB = false;
        String tempTH2 = '';
        String tempTH = '';

        //recorro los grupos (filas)
        for (String name: mapGroups.keySet()) {
            //obtengo la instancia del grupo
            Groups g = mapGroups.get(name);

            //debug
            System.debug('----------------------');
            System.debug('Canal: '+g.canal+' - Usuario: '+g.usuario+' - Fecha: '+g.fecha);

            //recorro los conceptos
            for(Conceptos c : g.conceptos)
            {
                System.debug('Concepto Name: '+c.name+ ' - Valor: '+ c.valor + ' - Subconceptos: '+ c.subconceptos);

                //tiene subconcptos?
                if (!c.subconceptos.isEmpty()) {
                    isExistingSB = true;
                    String tokenC = decodeToken(c.name);
                    if (!setIssets.contains(c.name)) {
                        //mapa de concepto
                        mapC.put(tokenC,c.name);
                        setIssets.add(c.name);
                    }
                    //recorro los subonceptos
                    for (Subconceptos sc : c.subconceptos) {
                        //token (nombre de concepto + nombre de suboncepto)
                        String token = decodeToken(c.name+sc.name);

                        //si en el mapa no existe el token lo añado
                        if (!mapGroup.containsKey(token))
                        {
                            //agrupacion de subconceptos dentro de un concepto
                            if (mapGroup.containsKey(tokenC)) {
                                //lista de subconceptos dentro de un concepto
                                Set<String> temp = mapGroup.get(tokenC);
                                //compruebo si no existe en la lista
                                if (!temp.contains(token))
                                {
                                    temp.add(token);
                                    //add mapa de grupo
                                    mapGroup.put(tokenC, temp);

                                }

                            }
                            else {
                                mapGroup.put(tokenC, new Set<String>{token});
                            }
                            //mapa subconcetp
                            mapSC.put(token,sc.name);
                        }
                    }
                }
                else {
                    String token = decodeToken('&'+c.name);
                    System.debug('Conceptos: '+ token);
                    //si no tenemos la asignacion la añadimos
                    if (!mapGroup.containsKey(token))
                    {
                        mapGroup.put(token,null);
                        mapC.put(token,c.name);
                    }
                }
            }

        }

        //asignacion automatica de columnas fijas
        for (String hf : headFixed){
            //asignaciones
            mapAssigment.put(hf, 'C');
            //Cabecera
            if (isExistingSB){
                tempTH += String.format(this.th,new String[]{ROWSPAN,'2',hf});
            }
            else {
                tempTH += String.format(this.th2,new String[]{hf});
            }
        }
        System.debug('MapC: '+ mapC);
        System.debug('MapSC: '+ mapSC);
        String strTH = '';
        for (String g : mapGroup.keySet()) {

            Set<String> lst = mapGroup.get(g);

            //cuando es un concepto
            if (lst == null)
            {
                mapAssigment.put(g, 'C');
                if (isExistingSB){
                    strTH += String.format(this.th,new String[]{ROWSPAN,'2',mapC.get(g)});
                }
                else {
                    strTH += String.format(this.th2,new String[]{mapC.get(g)});
                }
            }
            else {
                //añado linea html subconcepto <TH>
                strTH += String.format(this.th,new String[]{COLSPAN,lst.size()+'',mapC.get(g)});
                //recorro las lineas de la agrupacion para sacar la lista set<String>
                for (String gsc : lst) {
                    mapAssigment.put(gsc, 'SC');
                    tempTH2 += String.format(this.th2,new String[]{mapSC.get(gsc)});
                }
            }
        }
        System.debug('strTH ---->>>>>>'+strTH);
        System.debug('tempTH2 ---->>>>>>'+tempTH2);

        System.debug('mapAssigment: '+mapAssigment);
        System.debug(tempTH);
        System.debug(tempTH2);
        tempTH += strTH;
        String head = String.format(this.tr,new String[]{tempTH});
        String sHead = String.format(this.tr,new String[]{tempTH2});
        String fthead = String.format(this.thead,new String[]{(tempTH2 == '')?head:head+sHead});

        //retorno la vista final en HTML
        this.htmlThead = fthead;
        System.debug(this.htmlThead);

        System.debug('mapGroup: '+mapGroup);

        //devuelvo el mapa
        return mapAssigment;
    }

    //decode token
    public String decodeToken(String str) {
        return str.replace('.','$');
    }

    /**
     * Metodo que lee las agrupaciones (filas) y asignaciones (columnas) para establecer los valores
     * en cada columna.
     * Tengo que añadir un array con los siguientes cabeceras (RESULT & COLUMNS)
     * @format: [[RESULT] : List<Object> filas]
     * @format: [[COLUMNS] : List<ColumnsData> columns]
     * @format: [[THEAD]]
     */
    Private Map<String, Object> readGroupsAssigments()
    {
        //Map general de retorno
        Map<String, Object> ob = new Map<String, Object>();
        //listado de filas
        List<Object> filas = new List<Object>();
        //listado de columnas
        List<ColumnsData> columns = new List<ColumnsData>();
        //mapa de asignaciones de columnas
        Map<String,String> mapAssigment = assigmentColumns();

        //recorro los grupos (filas)
        for (String name: mapGroups.keySet()) {
            //obtengo la instancia del grupo
            Groups g = mapGroups.get(name);
            //Map de fila, una vez terminada la fila la añdo a la lista de filas
            Map<String, String> fila = new Map<String, String>();

            //recorro las asignaciones establecidas en cada columna
            for (String ass : mapAssigment.keySet())
            {
                String assty = mapAssigment.get(ass);
                fila.put(ass,'');
                System.debug(ass +' = '+assty);

                for(Conceptos c : g.conceptos)
                {
                    Boolean isBreak = false;
                    if (!c.subconceptos.isEmpty()) {

                        for (Subconceptos sc : c.subconceptos) {
                            String token = decodeToken(c.name+sc.name);
                            //si el nombre de la asigancion es igual a la cabera
                            if  (token== ass){
                                System.debug('------>'+c.name+sc.name +' = '+ ass+ ' = '+ sc.valor);
                                fila.put(ass, sc.valor);
                                isBreak = true;
                                break;
                            }
                        }
                    }
                    else {
                        String token = decodeToken('&'+c.name);
                        //si el nombre de la asigancion es igual a la cabera
                        if (token== ass){
                            fila.put(ass, c.valor);
                            isBreak = true;
                            break;
                        }
                    }
                    if (isBreak) break;
                }
            }

            fila.put('Canal', g.canal);
            fila.put('Usuario', g.usuario);
            fila.put('Fecha', g.fecha);
            fila.put('Tienda', g.tienda);

            filas.add(fila);
        }
        System.debug(filas);



        //recorro las asignaciones para crear las columnas
        for (String ass : mapAssigment.keySet()) {
            System.debug('Colum:--> '+ ass);
            ColumnsData item = new ColumnsData();
            item.data = ass;
            columns.add(item);
        }
        System.debug('Colums: '+ columns);
        System.debug('Filas: '+ filas);

        //añado las filas
        ob.put('RESULT', filas);
        //añado las columnas
        ob.put('COLUMNS',columns);
        //
        ob.put('THEAD',htmlThead);

        return ob;
    }


    @RemoteAction
    public static Map<String,Object> result(){
        TableController controller = new TableController();
        controller.init(); //base de datos
        controller.group();
        //controller.htmlToThead();
        return controller.readGroupsAssigments();
    }


    /**
     * Clase que agrupa las ID de las cabeceras para añadirlas a Jquery
     * @format: [{'data' : 'ID', 'data' : 'ID_2', 'data' : 'ID_3', }]
     */
    Public class ColumnsData
    {
        public string data {get; set;}
    }

    /**
     * Agrupacion de filas, hay tantas agrupaciones como filas
     * Hay que tener presente los datos fijos en cada columna (canal, usuario, fecha, tienda..)
     * Se añade en cada fila un listado de conceptos y dentro otro listado de subconceptos
     * @format: [{}]
     * { Groups:[
     *       canal=STA,fecha=2017,usuario=Aure,tienda=granada
     *       conceptos=(
     *           Conceptos:[
     *               name=Concepto 1,
     *               subconceptos=(
     *                   Subconceptos:[name=Sub1, valor=7],
     *                   Subconceptos:[name=Sub2, valor=3],
     *                   Subconceptos:[name=Sub3, valor=6]),
     *               valor=null
     *           ])
     *       ]
     *   }
     */
    Public Class Groups
    {
        public String canal {get; set;}
        public String usuario {get; set;}
        public String fecha {get; set;}
        public String tienda {get; set;}
        public List<Conceptos> conceptos {get; set;}

        public Groups() {
            this.tienda = 'Granada';
        }
    }

    /**
     * Clase modelo: Conceptos
     * @format: conceptos=(Conceptos:[name=String, valor=String, subconceptos=List<Subconceptos>])
     */
    public class Conceptos {
        //nombre del concepto
        public String name { get; set; }
        //valor del concepto (el valor es null cuando tiene subconceptos)
        public String valor { get; set; }
        public String idValor { get; set;}
        //listado de subconceptos
        public List<Subconceptos> subconceptos { get; set; }
        //constructor
        public Conceptos() {
            //inicializo los subconceptos
            subconceptos = new List<Subconceptos>();
        }
    }

    /**
     * Clase modelo: Subconceptos
     * @format: subconceptos=(Subconceptos:[name=String, valor=String])
     */
    public class Subconceptos {

        public String name { get; set; }
        public String valor{ get; set; }
        public String idValor { get; set;}

        //constructor
        public Subconceptos() {}

        //conctructor with params
        public Subconceptos(String name, String valor)
        {
            this.name = name;
            this.valor = valor;
        }
    }

    /**
     *
     */
    public class DataObject {

        Public String canal {get; set;}
        Public String usuario {get; set;}
        Public String fecha {get; set;}
        Public String concepto {get; set;}
        Public String subConcepto {get; set;}
        Public String valor {get; set;}
        Public String idValor {get; set;}

    }


    /**
     * Método para la clase de Test
     */
    public Void conceptosTest()
    {

        List<Conceptos> conceptos = new List<Conceptos>();

        //inicializo el concepto
        Conceptos concepto = new Conceptos();
        //nombre del concepto
        concepto.name = 'PRUEBA';

        //add subconceptos
        Subconceptos sc = new Subconceptos('SB1','5');
        concepto.subconceptos.add(sc);
        sc = new Subconceptos('SB2','4');
        concepto.subconceptos.add(sc);
        sc = new Subconceptos('SB3','3');
        concepto.subconceptos.add(sc);
        sc = new Subconceptos('SB4','2');
        concepto.subconceptos.add(sc);

        //add concepto
        conceptos.add(concepto);
        System.debug('Hay un total de '+conceptos.size()+' Conceptos');
        System.debug(conceptos);
        for(Conceptos c : conceptos) {
            System.debug('Concepto: '+ c.name);
            System.debug('Hay un total de '+ c.subconceptos.size() +' dentro de '+ c.name);
            for (Subconceptos sb: c.subconceptos){
                System.debug(sb.name + ' = ' + sb.valor);
            }
        }
    }




    @RemoteAction
    public static Map<String, Object> resultTest(){

        //TableController controller = new TableController();
        Map<String, Object> ob = new Map<String, Object>();

        List<Object> lo = new List<Object>();

        Map<String, String> ma = new Map<String, String>();
        ma.put('d1','3');
        ma.put('Los cojones','2');
        ma.put('d3','pruieba');

        lo.add(ma);

        ma = new Map<String, String>();
        ma.put('d1','hola');
        ma.put('Los cojones','xxx');
        ma.put('d3','');

        lo.add(ma);

        ob.put('result', lo);

        List<ColumnsData> h = new List<ColumnsData>();

        ColumnsData hitem = new ColumnsData();
        hitem.data = 'd1';
        h.add(hitem);

        hitem = new ColumnsData();
        hitem.data = 'Los cojones';
        h.add(hitem);

        hitem = new ColumnsData();
        hitem.data = 'd3';
        h.add(hitem);

        ob.put('ColumnsData',h);

        System.debug(ob);

        return ob;

    }

}