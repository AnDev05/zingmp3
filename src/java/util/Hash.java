package util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author lenovo
 */
public class Hash {
    
    private static final String MD5_ALGORITHM ="MD5";

    //Md5 function to encrypt password
    public static String md5(String password){

        final byte[] defaultBytes = password.getBytes();

        try {
            final MessageDigest md5MsgDigest = MessageDigest.getInstance(MD5_ALGORITHM);
            md5MsgDigest.reset();
            md5MsgDigest.update(defaultBytes);
            final byte messageDigest[] = md5MsgDigest.digest();
            final StringBuilder hexString = new StringBuilder();
            for (final byte element : messageDigest) {
                final String hex = Integer.toHexString(0xFF & element);
                if (hex.length() == 1) {
                    hexString.append('0');
                }
                hexString.append(hex);
            }
            password = hexString + "";

        } catch (final NoSuchAlgorithmException ex) {
        }
        return password;
    }

    public static String generateToken(String email,String password){
        return md5(email+password);
    }
}
