package com.download.test;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DownloadServlet
 */
@WebServlet("/downloadServlet")
public class DownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DownloadServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 处理请求
		// 读取要下载的文件
		String fileName = request.getParameter("file");

		// 获取项目的物理磁盘路径
		String path = request.getSession().getServletContext().getRealPath("doc");

		System.out.println("path" + path);
		// 构造完整的文件路径及文件名
		String filea = path + "\\" + fileName;

		System.out.println(filea);

		File f = new File(filea);

		if (f.exists()) {
			FileInputStream fis = new FileInputStream(f);
			URLEncoder.encode(f.getName(), "utf-8");
			// 解决中文文件名下载后乱码的问题
			byte[] b = new byte[fis.available()];

			fis.read(b);
			response.setCharacterEncoding("utf-8");
			response.setHeader("Content-Disposition", "attachment; filename=" + fileName + "");

			// 获取响应报文输出对象
			ServletOutputStream out = response.getOutputStream();

			// 输出
			out.write(b);
			out.flush();
			out.close();

		}

	}

}
