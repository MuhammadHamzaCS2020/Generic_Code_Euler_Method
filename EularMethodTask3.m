   % Muhammad Hamza
   % 1602028
X=[-1 -0.5 0 0.5 1 1.5 2];   % Given X values 
ModefiedEular=[];            % it is for storing the ModefiedEular values
YEular=[];                   % it store the Eular values
[Row,Col]=size(X);

xOld=-1;                     % Starting value of x
yOld=1;                      % Starting value of y 
h=0.2;                       % The value of H...
i=1;                         
   temp=0;                         % 
while i<=Col
   YEular(i)=yOld+(Func(xOld,yOld))*h;    % Eular Values store in corresponding index
   temp2=YEular(i);
      %xOld=xOld+h;              % Update value of Old x 
   while (abs(temp2-temp))>0.0001
       temp=yOld+(((Func(xOld,yOld))+Func(xOld,temp2))*h)/2; % ModefiedEular Values store in corresponding index
       ModefiedEular(i)=temp;
       temp2=temp;     
       disp(temp);
   end
   ModefiedEular(i)=temp;
   xOld=xOld+h;              % Update value of Old x 
   yOld=YEular(i);           % Update value of Old y
   i=i+1;
end
disp(YEular);                % Display Eular values 
disp(ModefiedEular);         % Display ModefiedEular values  
plot(X,YEular);              % Plot Eular values
hold on                      % Plot ModefiedEular values
plot(X,ModefiedEular);
stem(X,YEular,'LineStyle','-.',...
     'MarkerFaceColor','yellow',...
     'MarkerEdgeColor','green');
 
 stem(X,ModefiedEular,'LineStyle','-.',...
     'MarkerFaceColor','red',...
     'MarkerEdgeColor','black')
  zoom on