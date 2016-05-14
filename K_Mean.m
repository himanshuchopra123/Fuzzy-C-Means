function [ mean1 ] = K_Mean( InputImage,ClassNo )
% 
% cform = makecform('srgb2lab');
% ab = reshape(ab,nrows*ncols,2);
% 





[Row,Column,Bands]=size(InputImage);
if ClassNo>0 && round(ClassNo)==ClassNo
    sum1=zeros(Bands,ClassNo);
    coun=zeros(1,ClassNo);
    seed=rand(Bands,ClassNo)*255;
    mean1=seed;
    %   Loop 1
    InputImageTemp=zeros(Bands,1);
    NoOfItr =6;
    for ij=1:NoOfItr    % No of Iteration
        seed=mean1;
        for i=1:Row
            for j=1:Column
                for l=1:ClassNo                
                    InputImageTemp(:,1)=InputImage(i,j,:);
                    dist(l)= sqrt(sum((InputImageTemp-seed(:,l)).^2));                    
                end
                [va,in]=min(dist);
                pal(i,j)=in;
                for l=1:ClassNo
                    if pal(i,j)==l
                        for k=1:Bands
                            sum1(k,l)=sum1(k,l)+double(InputImage(i,j,k));
                        end
                        coun(l)=coun(l)+1;
                    end
                end
            end
        end
        
        
        
        
         
        
        
        for i=1:Bands
            for j=1:ClassNo
                if coun(j)==0
                    mean1(i,j)=0;
                else
                    mean1(i,j)=sum1(i,j)/coun(j);
                end
            end
        end
        ij=ij+1;
    end   
    pal=pal*(255/ClassNo);    
    %imshow(uint8(pal))
else
    q='Enter Valid Number';
end
end





