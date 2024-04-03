	import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.sql.*;
 
@WebServlet("/AddProductServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB
public class AddProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();	
	try{
	        String appPath = request.getServletContext().getRealPath("/");


	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop", "root", "root");
		String pname = request.getParameter("pname");
		String prate = request.getParameter("prate");
		String uom = request.getParameter("uom");
		String pdisc = request.getParameter("pdisc");
		String cat = request.getParameter("cat");

		con.createStatement().executeUpdate("insert into products(prod_name, prod_uom, prod_rate, prod_desc, prod_category) values('"+pname+"', '"+uom+"', "+prate+", "+pdisc+", '"+cat+"')");

		ResultSet rs = con.createStatement().executeQuery("SELECT * From products WHERE prod_id = LAST_INSERT_ID();");
		rs.next();
		int pid = rs.getInt(1);

	        for (Part part : request.getParts()) {
	            String fileName = extractFileName(part);

		    if(!fileName.equals(""))
		    {
                    	part.write(appPath + "images/"+pid+".jpg");
		    }
	        }

		response.sendRedirect("add_product.jsp");
	}
	catch(Exception e){
		out.println("<h4>"+e+"</h4>");
	}	
    }
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
    }
}
