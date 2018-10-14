/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import db.DbContext;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.City;
import model.Country;

/**
 *
 * @author lenovo
 */
public class LocaleDao {

    public List<Country> getAllCountry() {
        List<Country> countryList = new ArrayList<>();
        Connection conn = DbContext.getConnection();
        try {  
            String query = "select * from [country]";

            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(query);


            while(resultSet.next()){
              int id = resultSet.getInt("id");
              String name = resultSet.getString("name");
              countryList.add(new Country(id, name));
            }
            statement.close();
            conn.close();
        } catch (SQLException ex) {
       }
       return countryList;
    }
    
    public List <City> getAllCity(){
        List<City> cityList = new ArrayList<>();
        Connection conn = DbContext.getConnection();
        try {  
            String query = "select * from [city]";

            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(query);


            while(resultSet.next()){
              int id = resultSet.getInt("id");
              String name = resultSet.getString("name");
              cityList.add(new City(id, name));
            }
            statement.close();
            conn.close();
        } catch (SQLException ex) {
       }
       return cityList;
    }
}
