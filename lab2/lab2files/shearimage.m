function shearIm = shearimage(Im, T)
  
[rows, cols] = size(Im);	
shearIm = zeros(rows, cols);
for xg = 1:cols	
  for yg = 1:rows
    xyff = inv(T)*[xg + T(1,2)* cols/2;
                    yg + T(2,1)* rows/2];
    xff  = xyff(1);
    yff  = xyff(2);
    if (xff<=cols & yff<=rows & xff>=1 & yff>=1)
      xf = round(xff);
      yf = round(yff);	
      shearIm(yg,xg) = Im(yf,xf);	
    end
  end
end       
