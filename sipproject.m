function varargout = sipproject(varargin)
% SIPPROJECT MATLAB code for sipproject.fig
%      SIPPROJECT, by itself, creates a new SIPPROJECT or raises the existing
%      singleton*.
%
%      H = SIPPROJECT returns the handle to a new SIPPROJECT or the handle to
%      the existing singleton*.
%
%      SIPPROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIPPROJECT.M with the given input arguments.
%
%      SIPPROJECT('Property','Value',...) creates a new SIPPROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sipproject_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sipproject_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sipproject

% Last Modified by GUIDE v2.5 04-May-2016 22:12:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sipproject_OpeningFcn, ...
                   'gui_OutputFcn',  @sipproject_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before sipproject is made visible.
function sipproject_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sipproject (see VARARGIN)

% Choose default command line output for sipproject
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sipproject wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sipproject_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file, pathname]=uigetfile({'*.tif';'*.jpeg';'*.bmp';'*.gif';'*.png';'*.jpg';'*.tiff';},'File Selector');
global x;global p1;
x=imread(strcat(pathname,file));
axes(handles.axes2);
[p1, q1, r]=size(x);
if r>=3
zz=x(:,:,1:3)
imshow(zz);
else    
    imshow(x(:,:,1));
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ClassNo_Callback(hObject, eventdata, handles)
% hObject    handle to ClassNo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ClassNo as text
%        str2double(get(hObject,'String')) returns contents of ClassNo as a double


% --- Executes during object creation, after setting all properties.
function ClassNo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ClassNo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ClassNo;



function No_of_Iterations_Callback(hObject, eventdata, handles)
% hObject    handle to No_of_Iterations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of No_of_Iterations as text
%        str2double(get(hObject,'String')) returns contents of No_of_Iterations as a double


% --- Executes during object creation, after setting all properties.
function No_of_Iterations_CreateFcn(hObject, eventdata, handles)
% hObject    handle to No_of_Iterations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global NoOfItr;




function TerminaCriter_Callback(hObject, eventdata, handles)
% hObject    handle to TerminaCriter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TerminaCriter as text
%        str2double(get(hObject,'String')) returns contents of TerminaCriter as a double


% --- Executes during object creation, after setting all properties.
function TerminaCriter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TerminaCriter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB


% --- Executes on button press in classifyImage.
function classifyImage_Callback(hObject, eventdata, handles)
% hObject    handle to classifyImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global TerminaC;
global NoOfItr;
global ClassNo;
global x;
TerminaC =str2double( get(handles.TerminaCriter,'String'));
NoOfItr =str2double( get(handles.No_of_Iterations,'String'));
ClassNo =str2double( get(handles.ClassNo,'String'));
m=str2double( get(handles.edit11,'String'));
InputImage=double(x);
[Row,Column,Bands]=size(InputImage);

if ClassNo>0 && round(ClassNo)==ClassNo
    seed= K_Mean( InputImage,ClassNo );
    %seed=rand(Bands,ClassNo)*255;
    mean1=seed;
    Membe_func=zeros(Row,Column,ClassNo);
    Membe_Itrationold=zeros(Row,Column,ClassNo);
  
    [Membe_func] = CalculatingMembershipFunc( ClassNo,InputImage,seed );
    ChaMemb=zeros(NoOfItr,1);
    h=waitbar(0,'Initializing waitbar...');
    for ij=1:NoOfItr    % No of Iteration
        % update cluster centers
        set(handles.IterationNo, 'String', ij);
        seed1= UpdateCenter( m,ClassNo,Bands,Membe_func,InputImage );
        % Update Membership based on new center
        Membe_Itrationold=Membe_func;
        [Membe_func] = MembershipNew( ClassNo,InputImage,seed1,m );               
        ChaMemb(ij)= sum(sum(sum((Membe_func-Membe_Itrationold).^2)));
       
        
            if ij>1 && abs(ChaMemb(ij)-ChaMemb(ij-1))<TerminaC
                break
            end     
     waitbar(ij/NoOfItr);
    end
    pal = FinalOutput( InputImage,Membe_func );
    set(handles.text8, 'String', ij);
    pal=pal*(255/ClassNo);
    %imtool(pal);
    axes(handles.axes3);
    imagesc(pal);colorbar

    axes(handles.axes4);
    plot(imhist(uint8(pal)));
    axes(handles.axes5);
    imagesc(pal);
    
else
    q='Enter Valid Number';
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Pefrormance.
function Pefrormance_Callback(hObject, eventdata, handles)
% hObject    handle to Pefrormance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global TerminaC;
global NoOfItr;
global x;global ClassNo;
TerminaC =str2double( get(handles.TerminaCriter,'String'));
NoOfItr =str2double( get(handles.No_of_Iterations,'String'));
ClassNo =str2double( get(handles.ClassNo,'String'));
PindexMin=str2double( get(handles.edit9,'String'))
PindexMax=str2double( get(handles.edit10,'String'))
m=str2double( get(handles.edit11,'String'))
for Index=PindexMin:PindexMax
    ClassNo=Index;
InputImage=double(x);
[Row,Column,Bands]=size(InputImage);
if ClassNo>0 && round(ClassNo)==ClassNo
    seed= K_Mean( InputImage,ClassNo );
    %seed=rand(Bands,ClassNo)*255;
    mean1=seed;
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
       
        
            if ij>1 && abs(ChaMemb(ij)-ChaMemb(ij-1))<TerminaC
                break
            end
             ij=ij+1;
    end
Xbar=squeeze(mean(mean(InputImage)));    
    %performance index
XiMinVi=zeros(Row,Column,ClassNo);
XiminViTemp=zeros(Row,Column,ClassNo,Bands);
Xim2=zeros(Row,Column);
XiMinXbar=zeros(ClassNo,1);
XiMinXbarnew=zeros(Row,Column,ClassNo);
for i=1:ClassNo
    for j=1:Bands
    XiminViTemp(:,:,i,j)=(InputImage(:,:,j)-seed(j,i)).^2;
    end
    
    XiMinVi=squeeze(sum(XiminViTemp,4));
    XiMinXbar(i)=sum((seed(:,i)-Xbar).^2);
    XiMinXbarnew(:,:,i)=XiMinVi(:,:,i)-XiMinXbar(i);
end
PerformanceIndex(Index)=sum(sum(sum((Membe_func.^m).*XiMinXbarnew)))/(Row*Column*Bands*ClassNo);
    pal = FinalOutput( InputImage,Membe_func );
    
    pal=pal*(255/ClassNo);
    %imtool(pal);

    axes(handles.axes3);
    imagesc(pal);colorbar

    axes(handles.axes4);
    plot(imhist(uint8(pal)));
    set(handles.text8, 'String', ij);
else
    q='Enter Valid Number';
end
end
% PerformanceIndex=SIP2(x,PindexMin,PindexMax,m,TerminaC,NoOfItr);
    figure
    axis([PindexMin,PindexMax,min(PerformanceIndex),max(PerformanceIndex)])
    plot(PerformanceIndex);



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
