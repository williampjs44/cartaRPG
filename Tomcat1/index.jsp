<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Pagina de inicio</title>
      <script src="https://www.google.com/recaptcha/api.js"></script>
   </head>
   <body>
      <form action="LoginServlet" method="post">
         <table>
            <tbody>
               <tr>
                  <td>
                     usuarios:
                  </td>
                  <td>
                     <input type="text" name="usuario">
                  </td>
               </tr>
               <tr>
                  <td>
                     password:
                  </td>
                  <td>
                     <input type="password" name="password">
                  </td>
               </tr>
               <tr>
                  <td></td>
                  <td>
                     <div class="g-recaptcha" data-sitekey="6LckCvAfAAAAAD7lwMNwRAAwxVIT5pent5XQychH"></div>
                  </td>
               </tr>
               <tr>
                  <td></td>
                  <td>
                     <input type="submit" value="Login">
                  </td>
               </tr>
            </tbody>
         </table>
      </form>
   </body>
</html>