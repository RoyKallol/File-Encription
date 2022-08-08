function varargout = other(varargin)
% OTHER MATLAB code for other.fig
%      OTHER, by itself, creates a new OTHER or raises the existing
%      singleton*.
%
%      H = OTHER returns the handle to a new OTHER or the handle to
%      the existing singleton*.
%
%      OTHER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OTHER.M with the given input arguments.
%
%      OTHER('Property','Value',...) creates a new OTHER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before other_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to other_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help other

% Last Modified by GUIDE v2.5 19-May-2017 02:03:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @other_OpeningFcn, ...
                   'gui_OutputFcn',  @other_OutputFcn, ...
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


% --- Executes just before other is made visible.
function other_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to other (see VARARGIN)

% Choose default command line output for other
handles.output = hObject;
str='ENCRYPTION';
text(250,75,str,'backgroundcolor','none','Color',[1 1 1],'FontSize',18);
str='Enter Your Key Text';
text(450,190,str,'backgroundcolor','none','Color',[1 1 1],'FontSize',12);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes other wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = other_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in information.
function information_Callback(hObject, eventdata, handles)
% hObject    handle to information (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

filename=uigetfile('*.txt');
handles.f1=filename;
set(handles.text2,'String',filename);
guidata(hObject, handles);

% --- Executes on button press in key.


% --- Executes on button press in Back.
function Back_Callback(hObject, eventdata, handles)
% hObject    handle to Back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
encrip_decrip;
close(other);

% --- Executes on button press in Qua.


% --- Executes on button press in Done.
function Done_Callback(hObject, eventdata, handles)
% hObject    handle to Done (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%text
f2=get(handles.text2,'string');
f3=fopen(f2);
A=fscanf(f3,'%c');
fclose(f3);

%key
Key=get(handles.key_text,'string');

%level of secrecy
num1=get(handles.secret,'value');
num2=get(handles.vs,'value');
num3=get(handles.vvs,'value');

if num1
    B=level1(A,Key);
    imaging(B,1);
elseif num2
    B=level2(A,Key);
    imaging(B,2);     
else
    B=level3(A,Key);
    imaging(B,3);
end


function key_text_Callback(hObject, eventdata, handles)
% hObject    handle to key_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of key_text as text
%        str2double(get(hObject,'String')) returns contents of key_text as a double



% --- Executes during object creation, after setting all properties.
function key_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to key_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.


% --- Executes during object creation, after setting all properties.


% --- Executes during object creation, after setting all properties.
function axes8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axes(hObject);
imshow('tala.jpg');
% Hint: place code in OpeningFcn to populate axes8
