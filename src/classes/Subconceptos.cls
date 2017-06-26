/**
 * Created by aure.munoz on 08/02/2017.
 */

public class Subconceptos {

    public String name { get; set; }
    public String valor{ get; set; }

    public Subconceptos() {}

    //conctructor
    public Subconceptos(String name, String valor)
    {
        this.name = name;
        this.valor = valor;
    }
}