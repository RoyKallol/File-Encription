function varargout = About_us(varargin)
% ABOUT_US MATLAB code for About_us.fig
%      ABOUT_US, by itself, creates a new ABOUT_US or raises the existing
%      singleton*.
%
%      H = ABOUT_US returns the handle to a new ABOUT_US or the handle to
%      the existing singleton*.
%
%      ABOUT_US('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ABOUT_US.M with the given input arguments.
%
%      ABOUT_US('Property','Value',...) creates a new ABOUT_US or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before About_us_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to About_us_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help About_us

% Last Modified by GUIDE v2.5 19-May-2017 02:36:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @About_us_OpeningFcn, ...
                   'gui_OutputFcn',  @About_us_OutputFcn, ...
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


% --- Executes just before About_us is made visible.
function About_us_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to About_us (see VARARGIN)

% Choose default command line output for About_us
handles.output = hObject;

% This ia project of encrypting a text file to an encrypted picture by morse code
% this can also decrypte the image to a text file
% The project is done by:
% 1. Masum (1506034)
% 2. Naim (1506035)
% 3. Sayor (1506036)
% 4. Kallol (1506037)
str='This ia project of encrypting a text file to an encrypted picture';
text(200,200,str,'backgroundcolor','none','Color',[1 1 1],'FontWeight','bold','FontSize',14);
str='This can also decrypte the image to a text file.';
text(200,400,str,'backgroundcolor','none','Color',[1 1 1],'FontWeight','bold','FontSize',14);
str='The project is done by:';
text(200,800,str,'backgroundcolor','none','Color',[1 1 1],'FontWeight','bold','FontSize',14);
str='1. Tanvir Ahmed (1506034)';
text(800,1000,str,'backgroundcolor','none','Color',[1 1 1],'FontWeight','bold','FontSize',14);
str='2. Shakir Ahmed Naim (1506035)';
text(800,1200,str,'backgroundcolor','none','Color',[1 1 1],'FontWeight','bold','FontSize',14);
str='3. Md. Sadman Sakib (1506036)';
text(800,1400,str,'backgroundcolor','none','Color',[1 1 1],'FontWeight','bold','FontSize',14);
str='4. Kallol Roy (1506037)';
text(800,1600,str,'backgroundcolor','none','Color',[1 1 1],'FontWeight','bold','FontSize',14);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes About_us wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = About_us_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
encrip_decrip;
close(About_us);


% --- Executes during object creation, after setting all properties.


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axes(hObject);
imshow('cabi.jpg');
% Hint: place code in OpeningFcn to populate axes2
