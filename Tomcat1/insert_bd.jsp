<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays,java.util.List"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rpg Card Generator</title>
 <link rel="stylesheet" href="css/styles.css" type="text/css" />
</head>
<body>
<%// variables per fer la connexio:
	 String user="RPG_user";
	String password="123456";
	String host="localhost:3306";
	String db = "cartaRPG";
	String url = "jdbc:mysql://"+host+"/"+db;
	Connection conn = null;
	Statement statement = null;
	ResultSet rs = null;
	
	
	// recollim valors formulari:
	String nom=request.getParameter("nombre");
	String race=request.getParameter("raza");
	String picture=request.getParameter("picture");
	String fue=request.getParameter("fue");
	int nfue=Integer.parseInt(fue);
	String des=request.getParameter("des");
	int ndes=Integer.parseInt(des);
	String con=request.getParameter("con");
	int ncon=Integer.parseInt(con);
	String intt=request.getParameter("intt");
	int nint=Integer.parseInt(intt);
	String sab=request.getParameter("sab");
	int nsab=Integer.parseInt(sab);
	String car=request.getParameter("car");
	int ncar=Integer.parseInt(car);
/*	String pv=request.getParameter("vida");
	int npv=Integer.parseInt(pv);
	String pm=request.getParameter("mana");
	int npm=Integer.parseInt(pm);
*/

try{

	Class.forName("com.mysql.jdbc.Driver").newInstance ();
		conn = DriverManager.getConnection(url, user, password);
		statement = conn.createStatement();
		//inmediatamente hacemos un insert amb les dades
		//creamos la consulta
int i=statement.executeUpdate("insert into carta(nombre,raza,picture,fuerza,destreza,constitucion,inteligencia,sabiduria,carisma,vida,mana)values('"+nom+"','"+race+"','"+picture+"',"+nfue+","+ndes+","+ncon+","+nint+","+nsab+","+ncar+",0,0)");
out.println("Data is successfully inserted!");
}catch(SQLException error) {
out.print("Error de Conexión : "+error.toString());
} %>
