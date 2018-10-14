package dao;

import db.DbContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Random;
import model.SingerModel;

/**
 *
 * @author lenovo
 */
public class SingerDao extends BaseDao<SingerModel> {

    @Override
    public List<SingerModel> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean insert(SingerModel singer) {
        Connection conn = DbContext.getConnection();
        int result = 0;
        try {
            String query = "insert into [Singer](code,lastname,firstname,gender,cityId,countryId,phone,email,company)"
                    + " values(?,?,?,?,?,?,?,?,?)";

            PreparedStatement psmt = conn.prepareStatement(query);
            psmt.setString(1, singer.getCode());
            psmt.setString(2, singer.getLastName());
            psmt.setString(3, singer.getFirstName());
            psmt.setInt(4, singer.getGender());
            psmt.setInt(5, singer.getCity());
            psmt.setInt(6, singer.getCountry());
            psmt.setString(7, singer.getPhone());
            psmt.setString(8, singer.getEmail());
            psmt.setString(9, singer.getCompany());
            result = psmt.executeUpdate();

            psmt.close();
            conn.close();

        } catch (SQLException ex) {
        }
        return result == 1;
    }

    @Override
    public boolean update(SingerModel t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
