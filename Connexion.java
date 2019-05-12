/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modéle;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author serignemor
 */
public class Connexion {
      private static Connection con;
static{
    try { /* chargement du driver */
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (Exception er_dv) {
			System.out.println("Erreur driver:  " + er_dv.getMessage());
		}

		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost/edacy", "root", "");
		} catch (Exception er_con) {
			System.out.println("Erreur de connexion " + er_con.getMessage());
		}
		
}
public static Connection getCon() {
        return con;
    }
    
}
