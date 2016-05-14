function [ OutputImage ] = FinalOutput( InputImage,Membe_func )

[Row,Column,~]=size(InputImage);
for i=1:Row
            for j=1:Column
                dist=Membe_func(i,j,:);
                [~,in]=max(dist);
                OutputImage(i,j)=in;
                %  memb func
            end
end

