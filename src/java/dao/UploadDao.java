
package dao;

import db.DbContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import model.SongModel;

/**
 *
 * @author lenovo
 */
public class UploadDao extends BaseDao<SongModel>{

    @Override
    List<SongModel> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    boolean insert(SongModel song) {
        
        Connection conn = DbContext.getConnection();
        int result =0;
         try {  
            String query = "insert into [song] (singerId,genreId,name,desc,path) values(?,?,?,?,?)";
            
            PreparedStatement psmt = conn.prepareStatement(query);
            
            psmt.setInt(1, song.getSingerId());
            psmt.setInt(2, song.getGenreId());
            psmt.setString(3, song.getSongName());
            psmt.setString(4, song.getDesc());
            psmt.setString(5, song.getPath());
            
            result = psmt.executeUpdate();
            System.err.println("Result "+result);

            psmt.close();
            conn.close();
          
        } catch (SQLException ex) {
        }
         return result == 1;
    }

    @Override
    boolean update(SongModel t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    boolean delete(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
