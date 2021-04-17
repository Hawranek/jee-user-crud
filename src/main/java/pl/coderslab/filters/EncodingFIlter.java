package pl.coderslab.filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter("/*")
public class EncodingFIlter implements Filter {
    private static final String UTF_8="utf-8";
    private static final String TEXT_HTML ="text/html";

    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        request.setCharacterEncoding(UTF_8);
        response.setContentType(TEXT_HTML);
        response.setCharacterEncoding(UTF_8);
        chain.doFilter(request, response);
    }
}
