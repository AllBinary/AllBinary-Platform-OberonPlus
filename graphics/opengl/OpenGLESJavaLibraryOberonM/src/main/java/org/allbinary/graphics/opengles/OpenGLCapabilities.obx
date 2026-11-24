{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
unit OpenGLCapabilities;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, StringUtil, LogUtil, OpenGLFeature;

type
  {AB:TYPES}
  TOpenGLCapabilities = class(TObject)
  public
    logUtil: TLogUtil;
    CUSTOM_GL_SURFACE_VIEW: Boolean;
    stringUtil: TStringUtil;
    initialized: Boolean;
    glVersionString: string;
    glShaderVersionString: string;
    shaderVersion: Integer;
    glRenderer: string;
    glVendor: string;
    glExtensions: string;
    possiblyAccelerated: Boolean;
    acceleratedString: string;
    maxTextureSize: Integer;
    VERSION_1_0: string;
    VERSION_1_1: string;
    VERSION_2_0: string;
    VERSION_3_0: string;
    VERSION_3_1: string;
    VERSION_3_2: string;
    VERSION_HIGHER_THAN_EXISTS: string;
    VERSION_UNK: string;
    GL_EXT_GPU_SHADER_100: string;
    GL_EXT_GPU_SHADER4: string;
    glVersion: string;
    glInstanceVersion: string;
    glExtensionDrawTexture: Boolean;
    glThreedDrawTexture: Boolean;
    glExtensionGPUShader4: Boolean;
    glExtensionGPUShader100: Boolean;
    vertexBufferObjectSupport: Boolean;
    class var instance: TOpenGLCapabilities;
    procedure InitFields;
        class function getInstance: TOpenGLCapabilities; static;
        constructor Create;
        function isInitialized: Boolean; virtual;
        procedure requireInitialization;
        procedure initCapabilities(gl: IGL10); virtual;
        function isExtension(gameFeature: TOpenGLFeature): Boolean;
        function isGlExtensionDrawTexture: Boolean; virtual;
        function isGlExtensionGPUShader100: Boolean; virtual;
        function isGlExtensionGPUShader4: Boolean; virtual;
        function getGlVersion: string; virtual;
        function getGlVersionString: string; virtual;
        function getGlShaderVersion: string; virtual;
        function isGlThreedDrawTexture: Boolean; virtual;
        function getGlRenderer: string; virtual;
        function isVertexBufferObjectSupport: Boolean; virtual;
        function isTextureSizeValid(widthAndHeight: Integer): Boolean; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  OpenGLFeatureFactory, GL11, AndroidUtil, OpenGLESGL10ImageFactory, OpenGLESGL11VBOImageFactory, OpenGLImageSpecificFactory, BasicArrayList, BasicArrayListD, CommonSeps, CommonStrings, StringMaker, Tokenizer, PreLogUtil, Features;


{AB:CODE}

procedure TOpenGLCapabilities.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.CUSTOM_GL_SURFACE_VIEW := True;
  Self.stringUtil := TStringUtil.getInstance();
  Self.initialized := False;
  Self.glVersionString := Self.stringUtil.EMPTY_STRING;
  Self.glShaderVersionString := Self.stringUtil.EMPTY_STRING;
  Self.shaderVersion := 0;
  Self.glRenderer := Self.stringUtil.EMPTY_STRING;
  Self.glVendor := Self.stringUtil.EMPTY_STRING;
  Self.glExtensions := Self.stringUtil.EMPTY_STRING;
  
  Self.acceleratedString := Self.stringUtil.EMPTY_STRING;
  Self.maxTextureSize := 64;
  Self.VERSION_1_0 := '1.0';
  Self.VERSION_1_1 := '1.1';
  Self.VERSION_2_0 := '2.0';
  Self.VERSION_3_0 := '3.0';
  Self.VERSION_3_1 := '3.1';
  Self.VERSION_3_2 := '3.2';
  Self.VERSION_HIGHER_THAN_EXISTS := '999.999';
  Self.VERSION_UNK := 'Unk';
  Self.GL_EXT_GPU_SHADER_100 := 'GL_ARB_shading_language_100';
  Self.GL_EXT_GPU_SHADER4 := 'GL_EXT_gpu_shader4';
  Self.glVersion := Self.glVersionString;
  Self.glInstanceVersion := Self.VERSION_UNK;
  
  
  
  
  
end;
    

class function TOpenGLCapabilities.getInstance: TOpenGLCapabilities;
begin
        Exit(TOpenGLCapabilities.instance);
end;
    

constructor TOpenGLCapabilities.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TOpenGLCapabilities.isInitialized: Boolean;
begin
        Exit(Self.initialized);
end;
    

procedure TOpenGLCapabilities.requireInitialization;
begin
end;
    

procedure TOpenGLCapabilities.initCapabilities(gl: IGL10);
var
  METHOD_NAME: string;
  features_: TFeatures;
  openGLFeatureFactory_: TOpenGLFeatureFactory;
  openGLImageSpecificFactory_: TOpenGLImageSpecificFactory;
  stringBuffer: TStringMaker;
  GL_SHADING_LANGUAGE_VERSION: Integer;
  startIndex: Integer;
  commonStrings_: TCommonStrings;
  stringUtil_: TStringUtil;
  maxTextureSizeArray: TArray<Integer>;
begin
        METHOD_NAME := 'initGLCapabilities';
        try
            features_ := TFeatures.getInstance();
            openGLFeatureFactory_ := TOpenGLFeatureFactory.getInstance();
            openGLImageSpecificFactory_ := TOpenGLImageSpecificFactory.getInstance();
            stringBuffer := TStringMaker.Create();
            Self.glVersionString := gl.glGetString(GL10.GL_VERSION);
            GL_SHADING_LANGUAGE_VERSION := $8b8c;
            Self.glShaderVersionString := gl.glGetString(GL_SHADING_LANGUAGE_VERSION);
            if (Self.glShaderVersionString) = ('') then begin
                Self.glShaderVersionString := Self.stringUtil.EMPTY_STRING;
            end;
            try
                if ((Self.glShaderVersionString) <> ('')) and (((Pos(TJava.ToString('.'), Self.glShaderVersionString) - 1)) >= (0)) then begin
                    startIndex := (RPos(TJava.ToString(' '), Self.glShaderVersionString) - 1);
                    if (startIndex) >= (0) then begin
                        Self.glShaderVersionString := Copy(Self.glShaderVersionString, ((startIndex) + (1)) + 1, MaxInt);
                    end;
                    Self.shaderVersion := StrToInt(StringReplace(Self.glShaderVersionString, TCommonSeps.getInstance().PERIOD, TStringUtil.getInstance().EMPTY_STRING, [rfReplaceAll]));
                end;
            except
                on e: SysUtils.Exception do begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), METHOD_NAME, TJava.Box(e));
                end;
            end;
            Self.glRenderer := gl.glGetString(GL10.GL_RENDERER);
            Self.glVendor := gl.glGetString(GL10.GL_VENDOR);
            Self.glExtensions := gl.glGetString(GL10.GL_EXTENSIONS);
            if ((Pos(TJava.ToString(Self.GL_EXT_GPU_SHADER_100), Self.glExtensions) - 1)) >= (0) then begin
                Self.glExtensionGPUShader100 := True;
            end else begin
                Self.glExtensionGPUShader100 := False;
            end;
            if ((Pos(TJava.ToString(Self.GL_EXT_GPU_SHADER4), Self.glExtensions) - 1)) >= (0) then begin
                Self.glExtensionGPUShader4 := True;
            end else begin
                Self.glExtensionGPUShader4 := False;
            end;
            if (Self.glRenderer) = ('') then begin
                Self.glRenderer := Self.stringUtil.EMPTY_STRING;
            end;
            if ((Pos(TJava.ToString('pixelflinger'), LowerCase(Self.glRenderer)) - 1)) >= (0) then begin
                Self.acceleratedString := 'Probably Not for ' + Self.glRenderer;
                Self.possiblyAccelerated := False;
            end else begin
                Self.acceleratedString := 'Probably for ' + Self.glRenderer;
                Self.possiblyAccelerated := True;
            end;
            Self.glExtensionDrawTexture := False;
            if (Self.glVersionString) = ('') then begin
                Self.glVersionString := Self.stringUtil.EMPTY_STRING;
                Self.glVersion := Self.VERSION_UNK;
            end else if ((Pos(TJava.ToString(' 1.0'), Self.glVersionString) - 1)) >= (0) then begin
                Self.glVersion := Self.VERSION_1_0;
            end else if ((Pos(TJava.ToString(' 1.1'), Self.glVersionString) - 1)) >= (0) then begin
                Self.glVersion := Self.VERSION_1_1;
            end else begin
                Self.glVersion := Self.VERSION_UNK;
            end;
            if (TJava.ToObject(gl) is IGL11) then begin
                Self.glInstanceVersion := Self.VERSION_1_1;
            end else if (TJava.ToObject(gl) is IGL10) then begin
                Self.glInstanceVersion := Self.VERSION_1_0;
            end;
            if (Self.glVendor) = ('') then begin
                Self.glVendor := Self.stringUtil.EMPTY_STRING;
            end;
            if (Self.glExtensions) = ('') then begin
                Self.glExtensions := Self.stringUtil.EMPTY_STRING;
            end;
            if Self.possiblyAccelerated then begin
                TPreLogUtil.put(TStringMaker.Create().append('VBO:?').appendboolean(((Self.glInstanceVersion) = (Self.VERSION_1_1))).append('||').appendboolean(Self.isExtension(openGLFeatureFactory_.OPENGL_VERTEX_BUFFER_OBJECT)).toString(), TJava.Box(Self), METHOD_NAME);
                if (((Self.glInstanceVersion) = (Self.VERSION_1_1)) or (Self.isExtension(openGLFeatureFactory_.OPENGL_VERTEX_BUFFER_OBJECT))) then begin
                    if TAndroidUtil.isAndroid() then begin
                        TPreLogUtil.put('VBO implementation was detected, but disabled by default for Android', TJava.Box(Self), METHOD_NAME);
                    end else begin
                        TPreLogUtil.put('VBO implementation was detected, but disabled for now', TJava.Box(Self), METHOD_NAME);
                    end;
                end;
            end;
            stringUtil_ := TStringUtil.getInstance();
            if features_.isDefault(openGLFeatureFactory_.OPENGL_AUTO_SELECT) then begin
                if Self.vertexBufferObjectSupport then begin
                    openGLImageSpecificFactory_.setImageFactory(TOpenGLESGL11VBOImageFactory.Create());
                end else begin
                    stringBuffer.append('OpenGL is on but ');
                    stringBuffer.append(stringUtil_.toString(openGLFeatureFactory_.OPENGL_DRAW_TEXTURE));
                    stringBuffer.append(' was not available');
                    TPreLogUtil.put(stringBuffer.toString(), TJava.Box(Self), METHOD_NAME);
                    openGLImageSpecificFactory_.setImageFactory(TOpenGLESGL10ImageFactory.Create());
                end;
            end else begin
                stringBuffer.append(stringUtil_.toString(openGLFeatureFactory_.OPENGL_AUTO_SELECT));
                stringBuffer.append(' is not on');
                TPreLogUtil.put(stringBuffer.toString(), TJava.Box(Self), METHOD_NAME);
                openGLImageSpecificFactory_.setImageFactory(TOpenGLESGL10ImageFactory.Create());
            end;
            maxTextureSizeArray := TJava.NewArray<Integer>(1);
            gl.glGetIntegerv(GL10.GL_MAX_TEXTURE_SIZE, maxTextureSizeArray, 0);
            Self.maxTextureSize := maxTextureSizeArray[0];
            Self.initialized := True;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), METHOD_NAME, TJava.Box(e));
            end;
        end;
end;
    

function TOpenGLCapabilities.isExtension(gameFeature: TOpenGLFeature): Boolean;
var
  index: Integer;
begin
        index := (Pos(TJava.ToString(gameFeature.getName()), Self.glExtensions) - 1);
        if (index) >= (0) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TOpenGLCapabilities.isGlExtensionDrawTexture: Boolean;
begin
        Self.requireInitialization();
        Exit(Self.glExtensionDrawTexture);
end;
    

function TOpenGLCapabilities.isGlExtensionGPUShader100: Boolean;
begin
        Exit(Self.glExtensionGPUShader100);
end;
    

function TOpenGLCapabilities.isGlExtensionGPUShader4: Boolean;
begin
        Self.requireInitialization();
        Exit(Self.glExtensionGPUShader4);
end;
    

function TOpenGLCapabilities.getGlVersion: string;
begin
        Self.requireInitialization();
        Exit(Self.glVersion);
end;
    

function TOpenGLCapabilities.getGlVersionString: string;
begin
        Self.requireInitialization();
        Exit(Self.glVersionString);
end;
    

function TOpenGLCapabilities.getGlShaderVersion: string;
begin
        Self.requireInitialization();
        Exit(Self.glShaderVersionString);
end;
    

function TOpenGLCapabilities.isGlThreedDrawTexture: Boolean;
begin
        Self.requireInitialization();
        Exit(Self.glThreedDrawTexture);
end;
    

function TOpenGLCapabilities.getGlRenderer: string;
begin
        Self.requireInitialization();
        Exit(Self.glRenderer);
end;
    

function TOpenGLCapabilities.isVertexBufferObjectSupport: Boolean;
begin
        Self.requireInitialization();
        Exit(Self.vertexBufferObjectSupport);
end;
    

function TOpenGLCapabilities.isTextureSizeValid(widthAndHeight: Integer): Boolean;
begin
        Self.requireInitialization();
        if (Self.maxTextureSize) >= (widthAndHeight) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TOpenGLCapabilities.toString: string;
var
  commonSeps_: TCommonSeps;
  stringBuffer: TStringMaker;
  tokenizer_: TTokenizer;
  list: TBasicArrayList;
  size: Integer;
  index: Integer;
  commonStrings_: TCommonStrings;
begin
        commonSeps_ := TCommonSeps.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('GL_VERSION: ');
        stringBuffer.append(Self.glVersionString);
        stringBuffer.append(' GL_SHADING_LANGUAGE_VERSION: ');
        stringBuffer.append(Self.glShaderVersionString);
        stringBuffer.append(' GL_RENDERER: ');
        stringBuffer.append(Self.glRenderer);
        stringBuffer.append(' GL_VENDOR: ');
        stringBuffer.append(Self.glVendor);
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append(' Is Accelerated: ');
        stringBuffer.append(Self.acceleratedString);
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append(' VBO Support: ');
        stringBuffer.appendboolean(Self.isVertexBufferObjectSupport());
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append(' Max Texture Size: ');
        stringBuffer.appendint(Self.maxTextureSize);
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append(' GL_EXTENSIONS: ');
        try
            tokenizer_ := TTokenizer.Create(commonSeps_.SPACE);
            list := tokenizer_.getTokensFromString(Self.glExtensions, TBasicArrayListD.Create());
            size := list.size();
            for index := 0 to size - 1 do begin
                stringBuffer.append(commonSeps_.NEW_LINE);
                stringBuffer.append(Self.stringUtil.toString(list.objectArray[index]));
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.putOE(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.TOSTRING, TJava.Box(e));
            end;
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLCapabilities.instance := TOpenGLCapabilities.Create();
  {AB:END}

end.

