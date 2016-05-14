clc;
clear all;
close all;
InputImage=imread('indianflag.png');
InputImage=double(InputImage);
[Row,Column,Bands]=size(InputImage);
ClassNo=4;
if ClassNo>0 && round(ClassNo)==ClassNo
    seed= K_Mean( InputImage,ClassNo );
    %seed=rand(Bands,ClassNo)*255;
    mean1=seed;
    %   Loop 1
    NoOfItr =100;
    Membe_func=zeros(Row,Column,ClassNo);
    Membe_Itrationold=zeros(Row,Column,ClassNo);
    
    m=1.5;
    [Membe_func] = CalculatingMembershipFunc( ClassNo,InputImage,seed );
    ChaMemb=zeros(NoOfItr,1);
    for ij=1:NoOfItr    % No of Iteration
        % update cluster centers
        seed1= UpdateCenter( m,ClassNo,Bands,Membe_func,InputImage );
        % Update Membership based on new center
        Membe_Itrationold=Membe_func;
        [Membe_func] = MembershipNew( ClassNo,InputImage,seed1,m );               
        ChaMemb(ij)= sum(sum(sum((Membe_func-Membe_Itrationold).^2)));
       
        
            if ij>1 && abs(ChaMemb(ij)-ChaMemb(ij-1))<0.01
                break
            end
             ij=ij+1;
    end
    pal = FinalOutput( InputImage,Membe_func );
    
    pal=pal*(255/ClassNo);
    imtool(pal);
    imagesc(pal);colorbar
else
    q='Enter Valid Number';
end