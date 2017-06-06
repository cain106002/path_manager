function varargout = path_manager(varargin)
% PATH_MANAGER a app for fMRI toolbox management
%      PATH_MANAGER, this app is designed for management of fMRI toolboxes
%
%      CAUTION: For new users, the pathes of the toolbox must be typed in the edit
%      area and click SAVE button and restart the app!!!
%
%      apply: add the toolbox in the PATH
%      remove: remove the toolbox in the PATH
%
% See also:

% Last Modified by Heng Beta v0.1 06-June-2017 00:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @path_manager_OpeningFcn, ...
                   'gui_OutputFcn',  @path_manager_OutputFcn, ...
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


% --- Executes just before path_manager is made visible.
function path_manager_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to path_manager (see VARARGIN)

% Choose default command line output for path_manager
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes path_manager wait for user response (see UIRESUME)
% uiwait(handles.figure1);

pm_path = fileparts(which('path_manager.m'));
if(exist([pm_path,filesep,'pm_para.mat'],'file'))
    load([pm_path,filesep,'pm_para.mat']);
else
    path_para.spm8 = '';
    path_para.spm12 = '';
    path_para.dparsf = '';
    path_para.rest = '';
    path_para.xjview = '';
    path_para.brainnet = '';
    path_para.gift = '';
    path_para.dynamicbc = '';
    path_para.other1 = '';
    path_para.other2 = '';
    path_para.other3 = '';
end

set(handles.edit_spm8,'String',path_para.spm8);
set(handles.edit_spm12,'String',path_para.spm12);
set(handles.edit_dparsf,'String',path_para.dparsf);
set(handles.edit_rest,'String',path_para.rest);
set(handles.edit_xjview,'String',path_para.xjview);
set(handles.edit_brainnet,'String',path_para.brainnet);
set(handles.edit_gift,'String',path_para.gift);
set(handles.edit_dynamicbc,'String',path_para.dynamicbc);
set(handles.edit_other1,'String',path_para.other1);
set(handles.edit_other2,'String',path_para.other2);
set(handles.edit_other3,'String',path_para.other3);

handles.path_struct = path_para;
handles.pm_path = pm_path;
guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = path_manager_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_spm8_Callback(hObject, eventdata, handles)
% hObject    handle to edit_spm8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_spm8 as text
%        str2double(get(hObject,'String')) returns contents of edit_spm8 as a double


% --- Executes during object creation, after setting all properties.
function edit_spm8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_spm8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_spm12_Callback(hObject, eventdata, handles)
% hObject    handle to edit_spm12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_spm12 as text
%        str2double(get(hObject,'String')) returns contents of edit_spm12 as a double


% --- Executes during object creation, after setting all properties.
function edit_spm12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_spm12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_dparsf_Callback(hObject, eventdata, handles)
% hObject    handle to edit_dparsf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_dparsf as text
%        str2double(get(hObject,'String')) returns contents of edit_dparsf as a double


% --- Executes during object creation, after setting all properties.
function edit_dparsf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_dparsf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_rest_Callback(hObject, eventdata, handles)
% hObject    handle to edit_rest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_rest as text
%        str2double(get(hObject,'String')) returns contents of edit_rest as a double


% --- Executes during object creation, after setting all properties.
function edit_rest_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_rest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_xjview_Callback(hObject, eventdata, handles)
% hObject    handle to edit_xjview (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_xjview as text
%        str2double(get(hObject,'String')) returns contents of edit_xjview as a double


% --- Executes during object creation, after setting all properties.
function edit_xjview_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_xjview (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_brainnet_Callback(hObject, eventdata, handles)
% hObject    handle to edit_brainnet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_brainnet as text
%        str2double(get(hObject,'String')) returns contents of edit_brainnet as a double


% --- Executes during object creation, after setting all properties.
function edit_brainnet_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_brainnet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_gift_Callback(hObject, eventdata, handles)
% hObject    handle to edit_gift (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_gift as text
%        str2double(get(hObject,'String')) returns contents of edit_gift as a double


% --- Executes during object creation, after setting all properties.
function edit_gift_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_gift (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_spm8_apply.
function btn_spm8_apply_Callback(hObject, eventdata, handles)
% hObject    handle to btn_spm8_apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_add_path(handles.path_struct.spm8);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit_dynamicbc_Callback(hObject, eventdata, handles)
% hObject    handle to edit_dynamicbc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_dynamicbc as text
%        str2double(get(hObject,'String')) returns contents of edit_dynamicbc as a double


% --- Executes during object creation, after setting all properties.
function edit_dynamicbc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_dynamicbc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit_other1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_other1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_other1 as text
%        str2double(get(hObject,'String')) returns contents of edit_other1 as a double


% --- Executes during object creation, after setting all properties.
function edit_other1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_other1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit_other2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_other2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_other2 as text
%        str2double(get(hObject,'String')) returns contents of edit_other2 as a double


% --- Executes during object creation, after setting all properties.
function edit_other2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_other2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit_other3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_other3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_other3 as text
%        str2double(get(hObject,'String')) returns contents of edit_other3 as a double


% --- Executes during object creation, after setting all properties.
function edit_other3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_other3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_save.
function btn_save_Callback(hObject, eventdata, handles)
% hObject    handle to btn_save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
path_para.spm8 = get(handles.edit_spm8,'String');
path_para.spm12 = get(handles.edit_spm12,'String');
path_para.dparsf = get(handles.edit_dparsf,'String');
path_para.rest = get(handles.edit_rest,'String');
path_para.xjview = get(handles.edit_xjview,'String');
path_para.brainnet = get(handles.edit_brainnet,'String');
path_para.gift = get(handles.edit_gift,'String');
path_para.dynamicbc = get(handles.edit_dynamicbc,'String');
path_para.other1 = get(handles.edit_other1,'String');
path_para.other2 = get(handles.edit_other2,'String');
path_para.other3 = get(handles.edit_other3,'String');
save([handles.pm_path,filesep,'pm_para.mat'],'path_para');


% --- Executes on button press in btn_all_remove.
function btn_all_remove_Callback(hObject, eventdata, handles)
% hObject    handle to btn_all_remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_rm_path(handles.path_struct.spm8);
pm_rm_path(handles.path_struct.spm12);
pm_rm_path(handles.path_struct.dparsf);
pm_rm_path(handles.path_struct.rest);
pm_rm_path(handles.path_struct.xjview);
pm_rm_path(handles.path_struct.brainnet);
pm_rm_path(handles.path_struct.gift);
pm_rm_path(handles.path_struct.dynamicbc);
pm_rm_path(handles.path_struct.other1);
pm_rm_path(handles.path_struct.other2);
pm_rm_path(handles.path_struct.other3);


% --- Executes on button press in btn_spm8_remove.
function btn_spm8_remove_Callback(hObject, eventdata, handles)
% hObject    handle to btn_spm8_remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_rm_path(handles.path_struct.spm8);


% --- Executes on button press in btn_spm12_apply.
function btn_spm12_apply_Callback(hObject, eventdata, handles)
% hObject    handle to btn_spm12_apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_add_path(handles.path_struct.spm12);


% --- Executes on button press in btn_spm12_remove.
function btn_spm12_remove_Callback(hObject, eventdata, handles)
% hObject    handle to btn_spm12_remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_rm_path(handles.path_struct.spm12);


% --- Executes on button press in btn_dparsf_apply.
function btn_dparsf_apply_Callback(hObject, eventdata, handles)
% hObject    handle to btn_dparsf_apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_add_path(handles.path_struct.dparsf);


% --- Executes on button press in btn_dparsf_remove.
function btn_dparsf_remove_Callback(hObject, eventdata, handles)
% hObject    handle to btn_dparsf_remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_rm_path(handles.path_struct.dparsf);


% --- Executes on button press in btn_rest_apply.
function btn_rest_apply_Callback(hObject, eventdata, handles)
% hObject    handle to btn_rest_apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_add_path(handles.path_struct.rest);


% --- Executes on button press in btn_rest_remove.
function btn_rest_remove_Callback(hObject, eventdata, handles)
% hObject    handle to btn_rest_remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_rm_path(handles.path_struct.rest);


% --- Executes on button press in btn_xjview_apply.
function btn_xjview_apply_Callback(hObject, eventdata, handles)
% hObject    handle to btn_xjview_apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_add_path(handles.path_struct.xjview);


% --- Executes on button press in btn_xjview_remove.
function btn_xjview_remove_Callback(hObject, eventdata, handles)
% hObject    handle to btn_xjview_remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_rm_path(handles.path_struct.xjview);


% --- Executes on button press in btn_brainnet_apply.
function btn_brainnet_apply_Callback(hObject, eventdata, handles)
% hObject    handle to btn_brainnet_apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_add_path(handles.path_struct.brainnet);


% --- Executes on button press in btn_brainnet_remove.
function btn_brainnet_remove_Callback(hObject, eventdata, handles)
% hObject    handle to btn_brainnet_remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_rm_path(handles.path_struct.brainnet);


% --- Executes on button press in btn_gift_apply.
function btn_gift_apply_Callback(hObject, eventdata, handles)
% hObject    handle to btn_gift_apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_add_path(handles.path_struct.gift);


% --- Executes on button press in btn_gift_remove.
function btn_gift_remove_Callback(hObject, eventdata, handles)
% hObject    handle to btn_gift_remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_rm_path(handles.path_struct.gift);


% --- Executes on button press in btn_dynamicbc_apply.
function btn_dynamicbc_apply_Callback(hObject, eventdata, handles)
% hObject    handle to btn_dynamicbc_apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_add_path(handles.path_struct.dynamicbc);


% --- Executes on button press in btn_dynamicbc_remove.
function btn_dynamicbc_remove_Callback(hObject, eventdata, handles)
% hObject    handle to btn_dynamicbc_remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_rm_path(handles.path_struct.dynamicbc);


% --- Executes on button press in btn_other1_apply.
function btn_other1_apply_Callback(hObject, eventdata, handles)
% hObject    handle to btn_other1_apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_add_path(handles.path_struct.other1);


% --- Executes on button press in btn_other1_remove.
function btn_other1_remove_Callback(hObject, eventdata, handles)
% hObject    handle to btn_other1_remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_rm_path(handles.path_struct.other1);


% --- Executes on button press in btn_other2_apply.
function btn_other2_apply_Callback(hObject, eventdata, handles)
% hObject    handle to btn_other2_apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_add_path(handles.path_struct.other2);


% --- Executes on button press in btn_other2_remove.
function btn_other2_remove_Callback(hObject, eventdata, handles)
% hObject    handle to btn_other2_remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_rm_path(handles.path_struct.other2);


% --- Executes on button press in btn_other3_apply.
function btn_other3_apply_Callback(hObject, eventdata, handles)
% hObject    handle to btn_other3_apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_add_path(handles.path_struct.other3);


% --- Executes on button press in btn_other3_remove.
function btn_other3_remove_Callback(hObject, eventdata, handles)
% hObject    handle to btn_other3_remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pm_rm_path(handles.path_struct.other3);

function pm_add_path(app_path)

addpath(genpath(app_path));
disp([app_path,' added!']);

function pm_rm_path(app_path)

rmpath(genpath(app_path));
disp([app_path,' removed!']);
