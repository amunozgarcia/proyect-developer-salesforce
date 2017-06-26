/**
 * Created by aure.munoz on 08/02/2017.
 */

public class Conceptos {

    public String name { get; set; }
    public String valor { get; set; }
    public List<Subconceptos> subconceptos { get; set; }

    //constructor
    public Conceptos() {
        subconceptos = new List<Subconceptos>();
    }

}