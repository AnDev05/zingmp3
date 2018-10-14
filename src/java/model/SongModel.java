
package model;

/**
 *
 * @author lenovo
 */
public class SongModel extends BaseModel{
    private int songId;
    private int singerId;
    private int genreId;
    private String songName;
    private String desc;
    private String path;
    public SongModel() {
    }

    public SongModel(int songId, int singerId, int genreId,
            String songName, String desc, String path) {
        this.songId = songId;
        this.singerId = singerId;
        this.genreId = genreId;
        this.songName = songName;
        this.desc = desc;
        this.path = path;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public int getSongId() {
        return songId;
    }

    public void setSongId(int songId) {
        this.songId = songId;
    }

    public int getSingerId() {
        return singerId;
    }

    public void setSingerId(int singerId) {
        this.singerId = singerId;
    }

    public int getGenreId() {
        return genreId;
    }

    public void setGenreId(int genreId) {
        this.genreId = genreId;
    }

    public String getSongName() {
        return songName;
    }

    public void setSongName(String songName) {
        this.songName = songName;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
    
    
    
}
