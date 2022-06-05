package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class recover_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/forgot-password.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:38 GMT -->\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=0\">\n");
      out.write("        <title>Mentoring</title>\n");
      out.write("\n");
      out.write("        <link rel=\"icon\" href=\"assets/img/favicon.png\" type=\"image/x-icon\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/plugins/fontawesome/css/fontawesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/plugins/fontawesome/css/all.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body class=\"account-page\">\n");
      out.write("\n");
      out.write("        <div class=\"main-wrapper\">\n");
      out.write("\n");
      out.write("            <div class=\"bg-pattern-style\">\n");
      out.write("                <div class=\"content\">\n");
      out.write("\n");
      out.write("                    <div class=\"account-content\">\n");
      out.write("                        <div class=\"account-box\">\n");
      out.write("                            <div class=\"login-right\">\n");
      out.write("                                <div class=\"login-header\">\n");
      out.write("                                    <h3>Forgot Password?</h3>\n");
      out.write("                                    <p class=\"text-muted\">Enter your email to get a password reset link</p>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <form action=\"https://mentoring-html.dreamguystech.com/template-1/login.html\">\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label class=\"form-control-label\">Email Address</label>\n");
      out.write("                                        <input type=\"email\" class=\"form-control\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"text-right\">\n");
      out.write("                                        <a class=\"forgot-link\" href=\"login.html\">Remember your password?</a>\n");
      out.write("                                    </div>\n");
      out.write("                                    <button class=\"btn btn-primary login-btn\" type=\"submit\">Reset Password</button>\n");
      out.write("                                </form>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"assets/js/jquery-3.6.0.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"assets/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"assets/js/script.js\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/forgot-password.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:38 GMT -->\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
