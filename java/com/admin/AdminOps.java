package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ScanDAO;
import com.dao.UserDAO;
import com.model.User;
import com.scanner.ScanUtils;

@WebServlet("/AdminOps")
public class AdminOps extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
    	String name;
    	User user = new User();
        try{
        	switch (action){
        	case "/deleteUser":
        		name = request.getParameter("name");
        		user.setName(name);
        		UserDAO.deleteUser(user);
                break;
            case "/editUser":
            	name = request.getParameter("name");
                user.setName(name);
                //TODO implement update user
                break;
            case "/deleteScan":
            	String hash = request.getParameter("hash");
            	ScanDAO.deleteScan(hash);
                break;
        	case "/deleteFile":
        		String fileName = request.getParameter("fileName");
        		//TODO implement file delete.
        		break;
        		}
        	}
        catch (Exception e) {
        	e.printStackTrace();
        }
	}
}
