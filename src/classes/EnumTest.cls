/**
 * Created by aure.munoz on 17/02/2017.
 */

public class EnumTest {
    public Enum Season {
        WINTER,SPRING,SUMMER,FALL
    }

    public Enum Month {
        JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC
    }
    public List<Month> seasonMonths(Season s)
    {

        List<Month> listMonths = new List<Month>();

        if(s==season.WINTER)
        {
            listMonths.add(Month.DEC);
            listMonths.add(Month.JAN);
            listMonths.add(Month.FEB);

        }
        else if(s==season.SPRING)
        {
            listMonths.add(Month.MAR);
            listMonths.add(Month.APR);
            listMonths.add(Month.MAY);

        }
        else if(s==season.SUMMER)
        {
            listMonths.add(Month.JUN);
            listMonths.add(Month.JUL);
            listMonths.add(Month.AUG);
        }
        else if(s==season.FALL)
        {
            listMonths.add(Month.SEP);
            listMonths.add(Month.OCT);
            listMonths.add(Month.NOV);
        }

        return listMonths;
    }


}