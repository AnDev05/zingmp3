/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.SingerDao;
import java.util.Calendar;
import java.util.Random;
import javax.servlet.http.HttpSession;
import model.SingerModel;

/**
 *
 * @author lenovo
 */
public class SingerService {
    SingerDao dao;
    
    public SingerService() {
        dao = new SingerDao();
    }
    
    public boolean save(SingerModel singer,HttpSession session){
        singer.setCreatedTime(Calendar.getInstance().getTime());
        singer.setCode(String.valueOf(new Random().nextInt(11111)));

        return dao.insert(singer);
    }
    
    public boolean update(SingerModel singer){
        return dao.update(singer);
    }

}
