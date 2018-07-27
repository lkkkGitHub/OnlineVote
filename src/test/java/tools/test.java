package tools;

import org.junit.Test;

import java.util.Calendar;
import java.util.Date;

import static org.apache.commons.lang3.time.DateUtils.parseDate;

/**
 * @author lk
 * 2018/7/27 14:45
 * @description:
 */
public class test {

    @Test
    public void time() {
        String a = "7";
        int i = Integer.parseInt(a);
        Calendar ca = Calendar.getInstance();
        Date now = ca.getTime();
        ca.add(Calendar.DAY_OF_MONTH, i);
        Date fu = ca.getTime();
        java.sql.Date sqlDate = new java.sql.Date(fu.getTime());
        System.out.println(sqlDate);
    }

    @Test
    public void compareDate() {
        int x;
        Date date1 = new Date(2018-7-29);
        Date date2 = new Date(2017-8-1);
        if (date1.getTime() > date2.getTime())
            x=1;
        else if (date1.getTime() < date2.getTime())
            x=2;
        else
            x=3;
        System.out.println(x);
    }

}
