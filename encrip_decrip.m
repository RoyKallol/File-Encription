function varargout = encrip_decrip(varargin)
% ENCRIP_DECRIP MATLAB code for encrip_decrip.fig
%      ENCRIP_DECRIP, by itself, creates a new ENCRIP_DECRIP or raises the existing
%      singleton*.
%
%      H = ENCRIP_DECRIP returns the handle to a new ENCRIP_DECRIP or the handle to
%      the existing singleton*.
%
%      ENCRIP_DECRIP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ENCRIP_DECRIP.M with the given input arguments.
%
%      ENCRIP_DECRIP('Property','Value',...) creates a new ENCRIP_DECRIP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before encrip_decrip_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property
%      application stop.  All inputs are passed to encrip_decrip_OpeningFcn
%      via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help encrip_decrip

% Last Modified by GUIDE v2.5 19-May-2017 11:28:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @encrip_decrip_OpeningFcn, ...
                   'gui_OutputFcn',  @encrip_decrip_OutputFcn, ...
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


% --- Executes just before encrip_decrip is made visible.
function encrip_decrip_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to encrip_decrip (see VARARGIN)

% Choose default command line output for encrip_decrip
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes encrip_decrip wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = encrip_decrip_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in encryp.
function encryp_Callback(hObject, eventdata, handles)
% hObject    handle to encryp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
other;
close(encrip_decrip);

% --- Executes on button press in decryp.
function decryp_Callback(hObject, eventdata, handles)
% hObject    handle to decryp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
other2;
close(encrip_decrip);


% --- Executes on button press in about.
function about_Callback(hObject, eventdata, handles)
% hObject    handle to about (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
About_us;
close(encrip_decrip);


% --- Executes during object creation, after setting all properties.


% --- Executes during object creation, after setting all properties.


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axes(hObject);
imshow('tala.jpg');
% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
evalin('base','clear all');
delete(handles.figure1);


% --- Executes during object creation, after setting all properties.
function axes11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axes(hObject);
imshow('tala.jpg');
% Hint: place code in OpeningFcn to populate axes11
