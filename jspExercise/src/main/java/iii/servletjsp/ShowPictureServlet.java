package iii.servletjsp;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/xyz/ShowPicture")
public class ShowPictureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sa[] = { "fs.jpg", "m001.jpg", "m12.jpg", "m46.jpg", "m536.jpg", "v06.jpg" };
		int idx = (int) (Math.random() * sa.length);   //介於0到陣列元素個數-1
		String filename = sa[idx];    //取出檔名
		ServletContext ctx = getServletContext();  //取出ServletContext物件
		String mimeType = ctx.getMimeType(filename);   //他可以得到檔案的MIME TYPE
		response.setContentType(mimeType);
		try (InputStream is = ctx.getResourceAsStream("/images/" + filename);
				OutputStream os = response.getOutputStream();) {
			byte[] b = new byte[8192];   //512的整數倍
			int len = 0;
			while ((len = is.read(b)) != -1) {
				os.write(b, 0, len);
			}
		} // end of-try

	}
}
