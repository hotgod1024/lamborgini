package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionController
 */
/*@WebServlet("/session_servlet/*")
public class SessionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, 
	IOException {
		String uri=request.getRequestURI();
		System.out.println(uri);
		MemberDAO dao=new MemberDAO();
		if(uri.indexOf("login.do") != -1){//로그인 처리
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			MemberDTO dto=new MemberDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			String result=dao.loginCheck(dto);
			System.out.println(result);
			String page="/ch07/session_login.jsp";
			if(!result.equals("로그인 실패")) {//로그인 성공
				//세션 객체 생성
				HttpSession session=request.getSession();
				//세션에 값을 저장
				session.setAttribute("userid", userid);
				session.setAttribute("message", result);
				page="/ch07/main.jsp";
				response.sendRedirect(request.getContextPath()+page);
			}else {//로그인 실패
				response.sendRedirect(
						request.getContextPath()+
						page+"?message=error");
			      }
			}else if(uri.indexOf("logout.do") != -1) {//로그아웃 처리
				HttpSession session=request.getSession();
				//세션을 비움(초기화시킴)
				session.invalidate();
				//로그인 페이지로 이동
				String page=request.getContextPath()
						+"/ch07/session_login.jsp?message=logout";
				response.sendRedirect(page);
		}else if (uri.indexOf("bcryptlogin.do") != -1) {
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			MemberDTO dto=new MemberDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			String result=dao.loginCheckBcrypt(dto);
			System.out.println(result);
			String page="/ch07/session_login.jsp";
			if(!result.equals("로그인 실패")) {//로그인 성공
				//세션 객체 생성
				HttpSession session=request.getSession();
				//세션에 값을 저장
				session.setAttribute("userid", userid);
				session.setAttribute("message", result);
				page="/ch07/main.jsp";
				response.sendRedirect(request.getContextPath()+page);
			}else {//로그인 실패
				response.sendRedirect(
						request.getContextPath()+
						page+"?message=error");
			}*/
			
		/*}*//*else if(uri.indexOf("join_bcrypt.do") != -1) {
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String hp=request.getParameter("hp");
			String address1=request.getParameter("address1");
			String bir=request.getParameter("bir");
			MemberDTO dto=new MemberDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto.setName(name);
			dto.setEmail(email);
			dto.setHp(hp);
			dto.setAddress1(address1);
			dto.setBir(bir);
			dao.insertBcrypt(dto);
			
		}else if(uri.indexOf("login_bcrypt.do") != -1) {
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			System.out.println("아이디:"+userid);
			System.out.println("패스워드:"+passwd);
			MemberDTO dto=new MemberDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			String result=dao.loginCheckBcrypt(dto);
			System.out.println(result);
			request.setAttribute("result", result);
			String page="/ch06/login_result.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
*/