function [ Membe_func ] = CalculatingMembershipFunc( ClassNo,InputImage,seed )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[Row,Column,Bands]=size(InputImage);
for i=1:ClassNo
    
end
for i=1:Row
            for j=1:Column
                for l=1:ClassNo
                    st=0;
                    for k=1:Bands
                        t=(double(InputImage(i,j,k))-seed(k,l))^2;
                        st=st+t;
                    end
                    dist(l)=st^0.5;
                end
                % checking of min distance I have to change this
%                 [va,in]=min(dist);
%                 pal(i,j)=in;
                %  memb func
                Membe_func(i,j,:)=dist;
%                 for l=1:ClassNo
%                     if pal(i,j)==l
%                         for k=1:Bands
%                             sum1(k,l)=sum1(k,l)+double(InputImage(i,j,k));
%                         end
%                         countsOfClass(l)=countsOfClass(l)+1;
%                     end
%                 end                              
            end
end

end

