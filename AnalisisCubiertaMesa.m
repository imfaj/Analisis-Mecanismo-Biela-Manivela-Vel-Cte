function varargout = AnalisisCubiertaMesa(varargin)
% ANALISISCUBIERTAMESA MATLAB code for AnalisisCubiertaMesa.fig
%      ANALISISCUBIERTAMESA, by itself, creates a new ANALISISCUBIERTAMESA or raises the existing
%      singleton*.
%
%      H = ANALISISCUBIERTAMESA returns the handle to a new ANALISISCUBIERTAMESA or the handle to
%      the existing singleton*.
%
%      ANALISISCUBIERTAMESA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ANALISISCUBIERTAMESA.M with the given input arguments.
%
%      ANALISISCUBIERTAMESA('Property','Value',...) creates a new ANALISISCUBIERTAMESA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AnalisisCubiertaMesa_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AnalisisCubiertaMesa_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AnalisisCubiertaMesa

% Last Modified by GUIDE v2.5 19-May-2019 17:36:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AnalisisCubiertaMesa_OpeningFcn, ...
                   'gui_OutputFcn',  @AnalisisCubiertaMesa_OutputFcn, ...
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


% --- Executes just before AnalisisCubiertaMesa is made visible.
function AnalisisCubiertaMesa_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AnalisisCubiertaMesa (see VARARGIN)

%Velocidad de A
%handles.veloca = veloca();


% Choose default command line output for AnalisisCubiertaMesa
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%Hace que al iniciar el objeto  RepSimpImg no se vea.
set(handles.RepSimpImg,'visible', 'off');
set(handles.SegunAPosi,'visible','off');
set(handles.textt,'visible','off');
set(handles.textt,'visible','off');
set(handles.text32, 'visible','off');
set(handles.text33, 'visible','off');
set(handles.Cita3, 'visible','off');
set(handles.W3, 'visible','off');
set(handles.text35, 'visible','off');
set(handles.text36, 'visible','off');
set(handles.text37, 'visible','off');
set(handles.text38, 'visible','off');
set(handles.OB, 'visible','off');
set(handles.text40, 'visible','off');
set(handles.AnaVeloc, 'visible','off');
set(handles.text43, 'visible','off');
set(handles.text45, 'visible','off');
set(handles.text46, 'visible','off');
set(handles.text47, 'visible','off');
set(handles.text48, 'visible','off');
set(handles.VA, 'visible','off');
set(handles.VB, 'visible','off');
set(handles.text50, 'visible','off');
set(handles.text51, 'visible','off');
set(handles.text52, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.DiagVeloc,'visible', 'off');


% UIWAIT makes AnalisisCubiertaMesa wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Executes during object creation, after setting all properties.
function RepSimpImg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RepSimpImg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate RepSimpImg


% --- Outputs from this function are returned to the command line.
function varargout = AnalisisCubiertaMesa_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in VelocA.
function VelocA_Callback(hObject, eventdata, handles)
% hObject    handle to VelocA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Cita2Inter VelocidadesA w2 l2

w2=str2double(get(handles.W2,'String'));
l2=str2double(get(handles.L2,'String'));

set(handles.DiagVeloc,'visible', 'on');
set(handles.text2, 'visible','on');

Cita2Inter=(0:1:360);
   for i=1:numel(Cita2Inter)
       VelocidadesA(i)= w2*l2;
    
   end
   axes(handles.DiagVeloc)
        plot(handles.DiagVeloc,Cita2Inter,VelocidadesA,'linewidth',3)
        title ('Velocidad A en funcion de Cita2','Fontsize',14)
        ylabel ('Velocidad (m/s)','Fontsize',14)
        xlabel ('Cita2 (°)','Fontsize',14)
        grid on


% --- Executes on button press in VB_A.
function VB_A_Callback(hObject, eventdata, handles)
% hObject    handle to VB_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Cita2Inter VelocidadesB_A w3 cita3 w2 l2 l3

w2=str2double(get(handles.W2,'String'));
l2=str2double(get(handles.L2,'String'));
l3=str2double(get(handles.L3,'String'));

set(handles.DiagVeloc,'visible', 'on');
set(handles.text2, 'visible','on');

Cita2Inter=(0:1:360);
   for i=1:numel(Cita2Inter)
    
       cita3= (-1*asin((l2.*sin((Cita2Inter(i)* pi/180)))/(l3)))*(180/pi);
       w3=(-1*w2*l2.*cos((Cita2Inter(i)*pi/180)))/(l3*sin(cita3*pi/180));
       VelocidadesB_A(i)=w3*l3;
    
   end
   axes(handles.DiagVeloc)
        plot(handles.DiagVeloc,Cita2Inter,VelocidadesB_A,'linewidth',3)
        title ('Velocidad B/A en funcion de Cita2','Fontsize',14)
        ylabel ('Velocidad (m/s)','Fontsize',14)
        xlabel ('Cita2 (°)','Fontsize',14)
        grid on


% --- Executes on button press in VelocB.
function VelocB_Callback(hObject, eventdata, handles)
% hObject    handle to VelocB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Cita2Inter VelocidadesB w3 cita3 w2 l2 l3

w2=str2double(get(handles.W2,'String'));
l2=str2double(get(handles.L2,'String'));
l3=str2double(get(handles.L3,'String'));

set(handles.DiagVeloc,'visible', 'on');
set(handles.text2, 'visible','on');

Cita2Inter=(0:1:360);
   for i=1:numel(Cita2Inter)
    
       cita3= (-1*asin((l2.*sin((Cita2Inter(i)* pi/180)))/(l3)))*(180/pi);
       w3=(-1*w2*l2.*cos((Cita2Inter(i)*pi/180)))/(l3*sin(cita3*pi/180));
       VelocidadesB(i)=-1*w2*l2.*sin((Cita2Inter(i)*pi/180))-w3*l3*cos(cita3*pi/180);
    
   end
   axes(handles.DiagVeloc)
        plot(handles.DiagVeloc,Cita2Inter,VelocidadesB,'linewidth',3)
        title ('Velocidad B en funcion de Cita2','Fontsize',14)
        ylabel ('Velocidad (m/s)','Fontsize',14)
        xlabel ('Cita2 (°)','Fontsize',14)
        grid on



% --- Executes on button press in RepSimp.
function RepSimp_Callback(hObject, eventdata, handles)
% hObject    handle to RepSimp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of RepSimp
isPushed = get(hObject,'Value');

if isPushed 
    set(hObject, 'String', 'Mecanismo Biela-Manivela');
    ImagenMec=imread('ImagenMecanismo.PNG');
    handles.RepSimpImg=imagesc(ImagenMec);
    set(handles.RepSimpImg,'visible','on') %hide the current axes
    set(get(handles.RepSimpImg,'children'),'visible','on') %hide the current axes contents
    axis off;
else
    set(hObject, 'String', 'Representacion Simplificada');
    clear ImagenMec
   set(handles.RepSimpImg,'visible','off') %hide the current axes
   set(get(handles.RepSimpImg,'children'),'visible','off') %hide the current axes contents
   axis off;

end



function Cita2_Callback(hObject, eventdata, handles)
% hObject    handle to Cita2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Cita2 as text
%        str2double(get(hObject,'String')) returns contents of Cita2 as a double




% --- Executes during object creation, after setting all properties.
function Cita2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cita2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W2_Callback(hObject, eventdata, handles)
% hObject    handle to W2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W2 as text
%        str2double(get(hObject,'String')) returns contents of W2 as a double
str2double(get(hObject,'String'))

% --- Executes during object creation, after setting all properties.
function W2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Calcular.
function Calcular_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%cita2 = str2double(get(handles.Cita2, 'String'));
global cita2 w2 Va Vb Va_b ob l2 l3 cita3 w3 obString cita3String w3String vbString vaString

%Parametros de Entrada para el caso
cita2 =str2double(get(handles.Cita2,'String'));
w2=str2double(get(handles.W2,'String'));

%Eslabones
l2=str2double(get(handles.L2,'String'));
l3=str2double(get(handles.L3,'String'));

%Grashof
S=cita2;
S=num2str(S);
set(handles.Grashof, 'String','Es un Grashof Clase I. Tipo Biela-Manivela-Corredera');
set(handles.grashofsym1,'String','<');

%Analisis de Posicion
cita2=cita2*(pi/180);
set(handles.SegunAPosi,'visible','on');
set(handles.textt,'visible','on');
set(handles.textt,'visible','on');
set(handles.text32, 'visible','on');
set(handles.text33, 'visible','on');
set(handles.Cita3, 'visible','on');
set(handles.W3, 'visible','on');
set(handles.text35, 'visible','on');
set(handles.text36, 'visible','on');
set(handles.text37, 'visible','on');
set(handles.text38, 'visible','on');
set(handles.OB, 'visible','on');
set(handles.text40, 'visible','on');
cita3= (-1*asin((l2*sin(cita2))/(l3)))*(180/pi);
ob= l2*cos(cita2) + l3*cos(cita3*pi/180);
obString=num2str(ob);
cita3String=num2str(cita3);
set(handles.Cita3,'String',cita3String);
set(handles.OB,'String',obString);

%Analisis de velcidades
set(handles.AnaVeloc, 'visible','on');
set(handles.text43, 'visible','on');
set(handles.VB, 'visible','on');
set(handles.text45, 'visible','on');
set(handles.text46, 'visible','on');
set(handles.text47, 'visible','on');
set(handles.text48, 'visible','on');
set(handles.text50, 'visible','on');
set(handles.text51, 'visible','on');
set(handles.text52, 'visible','on');
set(handles.VA, 'visible','on');
w3=(-1*w2*l2*cos(cita2))/(l3*sin(cita3*pi/180));
w3String=num2str(w3);
set(handles.W3,'String',w3String);
vb=-1*w2*l2*sin(cita2)-w3*l3*cos(cita3*pi/180);
vbString=num2str(vb);
set(handles.VB,'String',vbString);
va=w2*l2;
vaString=num2str(va);
set(handles.VA,'String',vaString);



function L1_Callback(hObject, eventdata, handles)
% hObject    handle to L1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L1 as text
%        str2double(get(hObject,'String')) returns contents of L1 as a double




% --- Executes during object creation, after setting all properties.
function L1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function L2_Callback(hObject, eventdata, handles)
% hObject    handle to L2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L2 as text
%        str2double(get(hObject,'String')) returns contents of L2 as a double


% --- Executes during object creation, after setting all properties.
function L2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function L3_Callback(hObject, eventdata, handles)
% hObject    handle to L3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L3 as text
%        str2double(get(hObject,'String')) returns contents of L3 as a double
str2double(get(hObject,'String'))


% --- Executes during object creation, after setting all properties.
function L3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in grashofsym2.
function grashofsym2_Callback(hObject, eventdata, handles)
% hObject    handle to grashofsym2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of grashofsym2


% --- Executes during object creation, after setting all properties.
function grashofsym1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to grashofsym1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function Grashof_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Grashof (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
%if
%else
%end


% --- Executes during object creation, after setting all properties.
function DiagVeloc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DiagVeloc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate DiagVeloc
