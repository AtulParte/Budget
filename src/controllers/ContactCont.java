package controllers;

import java.io.IOException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContactCont
 */
@WebServlet("/ContactCont")
public class ContactCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String name, subject, email, msg;
    public ContactCont() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        name = request.getParameter("name");
        email = request.getParameter("email");
        subject = request.getParameter("subject");
        msg = request.getParameter("message");

        final String username = "atulparte345@gmail.com";//your email id
        final String password = "atulparte555@999##";// your password
        Properties props = new Properties();
        props.put("mail.smtp.auth", true);
        props.put("mail.smtp.starttls.enable", true);
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(email));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(username));
            MimeBodyPart textPart = new MimeBodyPart();
            Multipart multipart = new MimeMultipart();
            String final_Text = "Name: " + name + "    " + "Email: " + email + "    " + "Subject: " + subject + "    " + "Message: " + msg;
            textPart.setText(final_Text);
            message.setSubject(subject);
            multipart.addBodyPart(textPart);
            message.setContent(multipart);
            message.setSubject("Budget Project Contact Email");
            //out.println("Sending");
            Transport.send(message);
            alertSuccess("Thank you, your message has been submitted to us.", response.getWriter());
            //out.println("<center><h2 style='color:green;'>Email Sent Successfully.</h2>");
            //out.println("Thank you " + name + ", your message has been submitted to us.</center>");
        } catch (Exception e) {
            out.println(e);
        }
    }

		// For SweetAlert
				public void alertSuccess(String message, PrintWriter out) {
					out.println("<!DOCTYPE html>"); 
					out.println("<html>"); 
					out.println("<head>");
					out.println("<script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>"); 
					out.println("</head>");
					out.println("<body>\r\n");
					out.println("<script type=\"text/javascript\">"); 
					out.println("swal(\"Success\", \""+message+"\", \"success\")"); 
					out.println(".then((value) => {"); 
					out.println("location='http://localhost:8080/Budget/contact.jsp'"); 
					out.println("});");
					out.println("</script>");
					out.println("</body>");
					out.println("</html>"); 
				}
		
	}



