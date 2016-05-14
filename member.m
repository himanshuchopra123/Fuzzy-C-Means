function [ Membe_func ] = member( ClassNo,InputImage,seed,m )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[Row,Column,Bands]=size(InputImage);
InputImageTemp=zeros(Bands,1);
seedTemp=zeros(Bands,1);
for i=1:Row
            for j=1:Column          
        for l=1:ClassNo
            summation=0;
            InputImageTemp(:,1)=InputImage(i,j,:);
            seedTemp=seed(:,l);
            XiMinCjTemp=InputImageTemp-seedTemp;
            XiMinCj= sum((XiMinCjTemp).^2);
            
            for k=1:ClassNo
                % Xi min =ci-cj          
                seed1Temp=seed(:,k);
                XiMinTemp=sum((InputImageTemp-seed1Temp).^2);
                XiMin= XiMinCj/XiMinTemp;
                XiMinCk2m=(XiMin)^(1/(m-1));
                summation=summation+XiMinCk2m;
            end
        Membe_func(i,j,l)=1/summation;
        end
            end
end
end

