package tools;

import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

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
    public void time1 () {

    }

}
