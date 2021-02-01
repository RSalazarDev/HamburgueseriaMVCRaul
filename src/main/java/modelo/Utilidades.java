/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

/**
 *
 * @author salaz
 */
public class Utilidades {
    public static ArrayList<Producto> getProductos(String fichero) throws FileNotFoundException, IOException{
		ArrayList<Producto> productos = new ArrayList<Producto>();
		
		try {
			
			BufferedReader buffer = new BufferedReader(new InputStreamReader(new FileInputStream(fichero), "utf-8"));
			String linea;			
			try {
				
				while((linea = buffer.readLine())!=null) {
                                    
                                    String [] lin = linea.split(",");
                                    Producto prod = new Producto(Integer.parseInt(lin[0]),lin[1],lin[2],lin[3],Float.parseFloat(lin[4]),Integer.parseInt(lin[5]));
                                    
					productos.add(prod);					
				 }
				
				buffer.close();
			} catch (IOException e) {
				
			}
		
		} catch (UnsupportedEncodingException e) {
			
		}
		return productos;		
	}
}
