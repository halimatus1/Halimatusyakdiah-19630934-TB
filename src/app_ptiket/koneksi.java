/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app_ptiket;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author USER
 */
public class koneksi {

    private static Object mysqlkonek;
     public static Object koneksiDB() throws SQLException {
        if (mysqlkonek==null){
            try {
                String DB="jdbc:mysql://localhost:3306/app_ptiket";
                String user="root";
                String pass="";
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                mysqlkonek=(Connection) DriverManager.getConnection(DB,user,pass);
            } catch(SQLException e){
                JOptionPane.showMessageDialog(null, "koneksi gagal");
            }
        } return mysqlkonek;
    }   
}
