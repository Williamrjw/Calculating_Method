function Euler(fun,a,b,y0,h)
    %欧拉法
    %fun 关于x y的函数
    %a b要求的范围，其中a是给了初值y0的那一个，b是要求的最后一个
    %y0当x=a时的值
    %h间隔距离
    %h 可以是负数如 Euler(@(x,y) y,1,0,2.718,-0.1)
    % emmm准确度你自己看着办吧
    % ps：亲测改进欧拉法h是负数还不如欧拉法准确
    %也许是不适用
    %别问 问就是数值计算方法白学
    n=(b-a)/h;
    i=1;
    x=a;
    y=y0;
    fprintf('欧拉法：x=%f, y=%f\n',x,y);
    while i<=n
        x=a+(i-1)*h;
        K=fun(x,y);
        y=y+h*K;
        fprintf('欧拉法：x=%f, y=%f\n',x+h,y);
        i=i+1;
    end
end
