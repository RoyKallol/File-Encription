function varargout = other2(varargin)
% OTHER2 MATLAB code for other2.fig
%      OTHER2, by itself, creates a new OTHER2 or raises the existing
%      singleton*.
%
%      H = OTHER2 returns the handle to a new OTHER2 or the handle to
%      the existing singleton*.
%
%      OTHER2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OTHER2.M with the given input arguments.
%
%      OTHER2('Property','Value',...) creates a new OTHER2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before other2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to other2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help other2

% Last Modified by GUIDE v2.5 19-May-2017 02:11:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @other2_OpeningFcn, ...
                   'gui_OutputFcn',  @other2_OutputFcn, ...
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


% --- Executes just before other2 is made visible.
function other2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to other2 (see VARARGIN)

% Choose default command line output for other2
handles.output = hObject;
str='DECRYPTION';
text(1100,600,str,'backgroundcolor','none','Color',[1 1 1],'FontSize',18);
str='Enter Your Key Text';
text(2250,1250,str,'backgroundcolor','none','Color',[1 1 1],'FontSize',12);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes other2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = other2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pic.
function pic_Callback(hObject, eventdata, handles)
% hObject    handle to pic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filename=uigetfile('*.png');
set(handles.text2,'String',filename);
guidata(hObject, handles);


% --- Executes on button press in done.


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
encrip_decrip;
close(other2);



function done_Callback(hObject, eventdata, handles)
% hObject    handle to done (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%picture file read
pf=get(handles.text2,'string');
I=imread(pf);
level=bin2dec(num2str(I(497,491:497)));
k=num2str([I(498,491:497) I(499,491:497) I(500,491:497)]);
n=bin2dec(k(11:length(k)));
r=floor(n/500);
s=mod(n,500);
str=[];
for i=1:r
    st=char(bin2dec(num2str(I(1:500,7*i-6:7*i))))';
    str=[str st];
end
st=char(bin2dec(num2str(I(1:s,7*r+1:7*r+7))))';
str=[str st];
length(str)
%key 
K=get(handles.key,'string');
if level==1
    B=decryp2(str,K);
elseif level==2
    B=decryp1(str,K);
else
    B=decryp3(str,K);
end
fil=fopen('new.txt','w');
fprintf(fil,B);
fclose(fil);
B
% --- Executes during object creation, after setting all properties.



function key_Callback(hObject, eventdata, handles)
% hObject    handle to key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of key as text
%        str2double(get(hObject,'String')) returns contents of key as a double


% --- Executes during object creation, after setting all properties.
function key_CreateFcn(hObject, eventdata, handles)
% hObject    handle to key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axes(hObject);
imshow('cabi.jpg');
% Hint: place code in OpeningFcn to populate axes3


% --- Executes during object creation, after setting all properties.


% --- Executes during object creation, after setting all properties.
function axes7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axes(hObject);
imshow('cabi.jpg');
% Hint: place code in OpeningFcn to populate axes7
