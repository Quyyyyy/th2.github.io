<%-- 
    Document   : sanphamAdmin
    Created on : Jun 21, 2022, 12:59:47 AM
    Author     : QUYTVM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/sanphamAdmin.css">
        <title>JSP Page</title>
    </head>
    <body>
        <button>
            <a href="dangxuat">
                            <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                            <p>Đăng xuât</p>
                        </a>
        </button>
        <header>
        <div class="thanhdautien">
            <div class="tieude">
                <h1>admin</h1>
            </div>
            <div class="menu">
                <ul>
                    <li><a href="#">Trang chủ</a></li>
                    <li><a href="#">Danh mục</a></li>
                    <li><a href="#">Hàng hóa</a></li>
                    <li><a href="#">Khách hàng</a></li>
                    <li><a href="#">Bình luận</a></li>
                    <li><a href="#">Thống kê</a></li>
                </ul>
            </div>


        </div>
        
            <div class="tentrang_header">
                 Hàng hóa -Thêm mới
            </div>
            
            <div class="formthem">
                <form action="them">
                    <div class="demuc">
                        Tên sản phẩm <br>                 
                    <input class="nhap" type="text" name="maloai" >
                    </div>
                    <div class="demuc">
                        Hãng điện thoại <br>
                        <input class="nhap" type="text" name="hangdth">
                    </div>
                    <div class="demuc">
                        pin <br>
                        <input class="nhap" type="text" name="pin">
                    </div>
                    <div class="demuc">
                        Ram <br>
                        <input class="nhap" type="text" name="ram">
                    </div>
                    <div class="demuc">
                        Rom <br>
                        <input class="nhap" type="text" name="rom">
                    </div>
                    <div class="demuc">
                        Cpu <br>
                        <input class="nhap" type="text" name="cpu">
                    </div>
                    <div class="demuc">
                        Kích thước màn hình <br>
                        <input class="nhap" type="text" name="kichthuocmanhinh">
                    </div>
                    <div class="demuc">
                        Camera trước <br>
                        <input class="nhap" type="text" name="camtruoc">
                    </div>
                    <div class="demuc">
                        Camera sau <br>
                        <input class="nhap" type="text" name="camsau">
                    </div>
                    <div class="demuc">
                        Giá <br>
                        <input class="nhap" type="text" name="gia">
                    </div>
                    <div class="demuc">
                        link ảnh <br>
                        <input class="nhap" type="url" name="linkanh">
                    </div>
                    <div>
                        mô tả hình ảnh<br>
                        <input class="nhap" type="text" name="motahinhanh">
                    </div>
                    <div>
                        <input class="submit" type="submit"  value="thêm mới">
                        <input class="submit" type="reset" value="nhập lại">
                        <a href="/Web_ban_dien_thoai/list"><input class="submit" type="button" value="danh sách"></a>
                    </div>

                </form>
            </div>
        
    
    </header>
    </body>
</html>
