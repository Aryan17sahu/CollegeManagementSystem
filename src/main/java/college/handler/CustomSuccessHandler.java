package college.handler;

import college.service.AdminService;
import college.service.DateFormatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.Principal;
import java.util.Collection;

public class CustomSuccessHandler implements AuthenticationSuccessHandler {
    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
//    @Autowired
//    DateFormatService dateFormatService;

    AdminService adminService;

    JdbcTemplate jdbcTemplate;

    @Autowired
    DateFormatService dateFormatService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {

        System.out.println("inside authentication success handler");

        if(authentication.isAuthenticated())
        {
            User user = (User) authentication.getPrincipal();
//            System.out.println(user.getUsername());
//            System.out.println(user);

            httpServletRequest.getSession().setAttribute("id", user.getUsername());
            System.out.println(httpServletRequest.getSession().getAttribute("Aygiauh"+"id"));
            dateFormatService.updateLoginTime("id");

            Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
            for (GrantedAuthority grantedAuthority : authorities) {

                if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {

                    redirectStrategy.sendRedirect(httpServletRequest, httpServletResponse, "/admin");
                } else if (grantedAuthority.getAuthority().equals("ROLE_FACULTY")) {
                    redirectStrategy.sendRedirect(httpServletRequest, httpServletResponse, "/faculty");

                } else if(grantedAuthority.getAuthority().equals("ROLE_STUDENT")){
                    redirectStrategy.sendRedirect(httpServletRequest, httpServletResponse, "/student");
                }
            }
        }

    }


}