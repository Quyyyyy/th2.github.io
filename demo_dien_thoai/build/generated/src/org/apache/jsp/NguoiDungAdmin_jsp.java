package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import model.NguoiDung;
import model.NguoiDung;
import java.util.ArrayList;

public final class NguoiDungAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/danhsachAdmin.css\">\n");
      out.write("    \n");
      out.write("    <script type = \"text/javascript\">\n");
      out.write("         function doDelete(id){\n");
      out.write("             if(confirm(\"ban co muon xoa nguoi dung khong\")){\n");
      out.write("                 window.location = \"XoaNguoiDung?idNguoiDung=\"+id;\n");
      out.write("             }\n");
      out.write("         }\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <header>\n");
      out.write("        <button>\n");
      out.write("            <a href=\"dangxuat\">\n");
      out.write("                            <i class=\"fa fa-user-circle-o\" aria-hidden=\"true\"></i>\n");
      out.write("                            <p>Đăng xuât</p>\n");
      out.write("                        </a>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"thanhdautien\">\n");
      out.write("            <div class=\"tieude\">\n");
      out.write("                <h1>admin</h1>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"menu\">\n");
      out.write("                <ul>\n");
      out.write("                   \n");
      out.write("                    <li><a href=\"list\">Hàng hóa</a></li>\n");
      out.write("                    <li><a href=\"#\">Khách hàng</a></li>\n");
      out.write("                    \n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <form class=\"formthem\">\n");
      out.write("            <div class=\"tentrang_header\">\n");
      out.write("                Danh sach nguoi dung\n");
      out.write("            </div>\n");
      out.write("           <form action=\"\">\n");
      out.write("                        Nhap id can tim<input type = \"text\" value=\"\" id=\"timid\">\n");
      out.write("                        <a onclick=\"alo()\">tim kiem</a>\n");
      out.write("                            <div class=\"box\"></div>\n");
      out.write("                        \n");
      out.write("                    </form>\n");
      out.write("                        \n");
      out.write("                        <script>\n");
      out.write("                            function alo(){\n");
      out.write("                                var box = document.querySelector('.box');\n");
      out.write("                               var a =  document.getElementById(\"timid\").value;\n");
      out.write("                               var b ='<a href=\"SuaThongTinNguoiDung?idNguoiDung=' + a+ '\">Hien thi thong tin</>'\n");
      out.write("                               console.log(b);\n");
      out.write("                               box.innerHTML = b;\n");
      out.write("                               \n");
      out.write("                            }\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        </script>\n");
      out.write("           <div class=\"danhsachloai\">\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        \n");
      out.write("                        <th>Id user</th>\n");
      out.write("                        <th>Username</th>\n");
      out.write("                        <th>Password</th>\n");
      out.write("                        <th>Thao tác</th>                       \n");
      out.write("                    </tr>\n");
      out.write("                    ");

                        ArrayList<NguoiDung> list = ( ArrayList<NguoiDung>)request.getAttribute("data");
                        
                        for(NguoiDung i : list){
                        
                        int id = i.getIdNguoiDung();
                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print( i.getIdNguoiDung());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( i.getTaiKhoan());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( i.getMatKhau());
      out.write("</td>\n");
      out.write("                        <td><a href=\"SuaThongTinNguoiDung?idNguoiDung=");
      out.print( id );
      out.write("\"> sua</a>\n");
      out.write("                            <a href=\"XoaNguoiDung?idNguoiDung=");
      out.print( id );
      out.write("\" >xoa</a>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
 } 
      out.write("\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </table>\n");
      out.write("                    \n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <a href=\"ThemNguoiDung.jsp\"><input class=\"submit\" type=\"button\" value=\"Thêm người dùng\"></a>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
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
