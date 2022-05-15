<%@ page import="java.util.Arrays, java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CARTA RPG</title>
<style>
	
</style>
</head>
<body>
	<%!public int getValue() {
		int value = 0;
		int[] dau = { 0, 0, 0, 0 };
		for (int i = 0; i < 4; i++) {
			dau[i] = (int) (Math.random() * 6 + 1);
		}
		;

		Arrays.sort(dau);
		for (int i = 1; i < dau.length; i++) {
			value = dau[i] + value;
		}
		return value;
	}

	public int modFUE(int a) {
		int mod = 0;
		switch (a) {
		case 0:
			break;
		case 1:
			break;
		case 2:
			mod = -2;
			break;
		case 3:
			mod = -2;
			break;
		case 4:
			mod = +2;
			break;
		case 5:
			break;
		}
		return mod;
	}

	public int modDES(int a) {
		int mod = 0;
		switch (a) {
		case 0:
			mod = +2;
			break;
		case 1:
			break;
		case 2:
			break;
		case 3:
			mod = +2;
			break;
		case 4:
			break;
		case 5:
			break;
		}
		return mod;
	}

	public int modCON(int a) {
		int mod = 0;
		switch (a) {
		case 0:
			break;
		case 1:
			break;
		case 2:
			mod = -2;
			break;
		case 3:
			mod = -2;
			break;
		case 4:
			break;
		case 5:
			break;
		}
		return mod;
	}

	public int modINT(int a) {
		int mod = 0;
		switch (a) {
		case 0:
			mod = +2;
			break;
		case 1:
			break;
		case 2:
			break;
		case 3:
			break;
		case 4:
			mod = -2;
			break;
		case 5:
			break;
		}
		return mod;
	}

	public int modSAB(int a) {
		int mod = 0;
		switch (a) {
		case 0:
			break;
		case 1:
			mod = +2;
			break;
		case 2:
			break;
		case 3:
			break;
		case 4:
			break;
		case 5:
			break;
		}
		return mod;
	}

	public int modCAR(int a) {
		int mod = 0;
		switch (a) {
		case 0:
			break;
		case 1:
			mod = -2;
			break;
		case 2:
			mod = +2;
			break;
		case 3:
			break;
		case 4:
			mod = -2;
			break;
		case 5:
			break;
		}
		return mod;

	}%>
	<%
	String[] raza = { "Elfs", "Nans", "Gnoms", "Mitjans", "semiorcs", "Humans" };
	String[] raza_imagen = { "0", "1", "2", "3", "4", "5" };

	int raza_random = (int) (Math.random() * raza.length);
	%>
	<div class="table">
		<table border="1">
			<caption>
				<b> <%
 out.print(raza[raza_random]);
 %>
				</b>
			</caption>
			<tbody>
				<tr>
					<th rowspan="9"><img
						src="img/<%out.print(raza_imagen[raza_random]);%>.png"
						alt="imagenes" width="80" height="100"></th>
					<th>Carac.</th>
					<th>Valor Base</th>
					<th>Mod.</th>
					<th>Valor Final</th>
				</tr>
				<tr>
					<td><i>FUE:</i></td>
					<td>
						<%
						int fue = getValue();
						out.print(fue);
						%>
					</td>
					<td>
						<%
						int fue2 = modFUE(raza_random);
						out.print(fue2);
						%>

					</td>
					<td>
						<%
						int fue3 = fue + fue2;
						out.print(fue3);
						%>
					</td>
				</tr>
				<tr>
					<td><i>DES:</i></td>
					<td>
						<%
						int des = getValue();
						out.print(des);
						%>
					</td>
					<td>
						<%
						int des2 = modDES(raza_random);
						out.print(des2);
						%>

					</td>
					<td>
						<%
						int des3 = des + des2;
						out.print(des3);
						%>
					</td>
				</tr>
				<tr>
					<td><i>CON:</i></td>
					<td>
						<%
						int con = getValue();
						out.print(con);
						%>
					</td>
					<td>
						<%
						int con2 = modCON(raza_random);
						out.print(con2);
						%>
					</td>
					<td>
						<%
						int con3 = con + con2;
						out.print(con3);
						%>
					</td>
				</tr>
				<tr>
					<td><i>INT:</i></td>
					<td>
						<%
						int int1 = getValue();
						out.print(int1);
						%>
					</td>
					<td>
						<%
						int int2 = modINT(raza_random);
						out.print(int2);
						%>
					</td>
					<td>
						<%
						int int3 = int1 + int2;
						out.print(int3);
						%>
					</td>
				</tr>
				<tr>
					<td><i>SAB:</i></td>
					<td>
						<%
						int sab = getValue();
						out.print(sab);
						%>
					</td>
					<td>
						<%
						int sab1 = modSAB(raza_random);
						out.print(sab1);
						%>
					</td>
					<td>
						<%
						int sab3 = sab + sab1;
						out.print(sab3);
						%>
					</td>
				</tr>
				<tr>
					<td><i>CAR:</i></td>
					<td>
						<%
						int car = getValue();
						out.print(car);
						%>
					</td>
					<td>
						<%
						int car1 = modCAR(raza_random);
						out.print(car1);
						%>
					</td>
					<td>
						<%
						int car3 = car + car1;
						out.print(car3);
						%>
					</td>
				</tr>
				<tr>
					<td><i>P.V <%
					int vida = con * ((int) (1 + Math.random() * 8));
					out.print(vida);
					%></i></td>
					<td colspan="3"><table width=<%out.print(vida);%>
							bgcolor="red">
							<tbody>
								<tr>
									<td></td>
								</tr>
							</tbody>
						</table></td>
				</tr>
				<tr>
					<td>P.M <%
					int mana = (int) (((int1 + sab) / 2)) * (int) (1 + Math.random() * 4);
					out.print(mana);
					%></td>
					<td colspan="3"><table width=<%out.print(mana);%>
							bgcolor="blue">
							<tbody>
								<tr>
									<td></td>
								</tr>
							</tbody>
						</table></td>
				</tr>
			</tbody>
		</table>

	</div>
	<form action="insert_bd.jsp" method="post">
	<label>NOMBRE</label>
	<br>
		<input type="text" name="nombre">
	<br>
		<input type="hidden" name="raza" value="<% out.print(raza[raza_random]); %>">
		<input type="hidden" name="picture" value="<%out.print(raza_imagen[raza_random]);  %>">
		<input type="hidden" name="fue"	value="<%out.print(fue3);%>">
		<input type="hidden" name="des" value="<%out.print(des3);%>">
		<input type="hidden" name="con"	value="<%out.print(con3);%>">
		<input type="hidden" name="intt" value="<%out.print(int3);%>">
		<input type="hidden" name="sab"	value="<%out.print(sab3);%>">
		<input type="hidden" name="car"	value="<%out.print(car3);%>">
		<input type="hidden" name="vida" value="<%out.print(vida);%>">
		<input type="hidden" name="mana" value="<%out.print(mana);%> ">
		<br>
		<input type="submit" name="enviar" value="Guardar carta" >
		<br>
	</form>

</body>
</html>