function [ seed1 ] = UpdateCenter( m,ClassNo,Bands,Membe_func,InputImage )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
for i=1:ClassNo
    for j=1:Bands
        TempRor=squeeze(Membe_func(:,:,i));
        TempRory=(TempRor).^m;
        TempRory1=squeeze(double(InputImage(:,:,j)));
        seed1(j,i)=sum(sum(TempRory.*TempRory1))/sum(sum(TempRory));
    end
end

end

