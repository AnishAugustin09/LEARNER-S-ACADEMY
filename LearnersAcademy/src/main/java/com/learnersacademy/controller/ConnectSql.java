package com.learnersacademy.controller;
import static com.learnersacademy.controller.Provider.*;
import java.sql.*;

public class ConnectSql {

	private static Connection con=null; 
	static{  
		try{  
		Class.forName(DRIVER);  
		con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
		}catch(Exception e){}  
		}  
		  
		public static Connection getCon(){  
		    return con;  
		}
}
