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
unit OpenGLConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TsUtil, CommonStrings, LogUtil, Feature, OpenGLFeature;

type
  {AB:TYPES}
  TOpenGLConfiguration = class(TObject)
  public
    logUtil: TLogUtil;
    FILE_: string;
    commonStrings: TCommonStrings;
    tsUtil: TTsUtil;
    opengl: Boolean;
    type_: TOpenGLFeature;
    imageColor: TOpenGLFeature;
    color: TOpenGLFeature;
    versionSelector: TOpenGLFeature;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TOpenGLConfiguration; static;
        constructor Create;
        procedure read;
        procedure write; virtual;
        procedure init; virtual;
        procedure update(gameFeature: TFeature; colorLocked: Boolean); virtual;
        procedure setOpenGL(opengl: Boolean); virtual;
        function isOpenGL: Boolean; virtual;
        procedure setImageColor(imageColor: TOpenGLFeature); virtual;
        function getImageColor: TOpenGLFeature; virtual;
        procedure setColor(color: TOpenGLFeature); virtual;
        function getColor: TOpenGLFeature; virtual;
        procedure setVersionSelector(versionSelector: TOpenGLFeature); virtual;
        function getVersionSelector: TOpenGLFeature; virtual;
        procedure setType(type_: TOpenGLFeature); virtual;
        function getType: TOpenGLFeature; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  OpenGLFeatureFactory, AbDataOutputStream, FileStreamFactory, StreamUtil, FileFactory, StringMaker, StringUtil, PreLogUtil, ChangedGameFeatureListener, Features, MainFeatureFactory, NullUtil, NullCloseable;


{AB:CODE}

procedure TOpenGLConfiguration.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.FILE_ := 'OpenGLConfiguration.dat';
  Self.commonStrings := TCommonStrings.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
  Self.opengl := False;
  Self.type_ := TOpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD;
  Self.imageColor := TOpenGLFeatureFactory.getInstance().IMAGE_COLOR_DEPTH_4444;
  Self.color := TOpenGLFeatureFactory.getInstance().IMAGE_COLOR_DEPTH_4444;
  Self.versionSelector := TOpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT;
end;
    

class function TOpenGLConfiguration.getInstance: TOpenGLConfiguration;
begin
        if (TOpenGLConfiguration.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TOpenGLConfiguration.instance := TOpenGLConfiguration.Create();
        end;
        Exit(TOpenGLConfiguration(TJava.ToObject(TOpenGLConfiguration.instance)));
end;
    

constructor TOpenGLConfiguration.Create;
begin
    inherited Create;
    InitFields;
        try
            if TFileFactory.getInstance().isFile(Self.FILE_) then begin
                Self.read();
            end else begin
                Self.write();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TOpenGLConfiguration.read;
var
  openGLFeatureFactory_: TOpenGLFeatureFactory;
  fileInputStreamFactory: TFileStreamFactory;
  fileInputStream: TInputStream;
  dataInputStream_: TDataInputStream;
  openGLValue: Integer;
  version: string;
  type_: string;
  imageColor: string;
  color: string;
begin
        openGLFeatureFactory_ := TOpenGLFeatureFactory.getInstance();
        fileInputStreamFactory := TFileStreamFactory.getInstance();
        fileInputStream := fileInputStreamFactory.getFileInputStreamInstance(TStringUtil.getInstance().EMPTY_STRING, Self.FILE_);
        dataInputStream_ := TDataInputStream.Create(fileInputStream);
        openGLValue := dataInputStream_.readInt();
        if (openGLValue) = (0) then begin
            Self.setOpenGL(False);
        end else if (openGLValue) = (1) then begin
            Self.setOpenGL(True);
        end else begin
            raise SysUtils.Exception.Create('Invalid OpenGL Setting');
        end;
        version := dataInputStream_.readUTF();
        if (Self.tsUtil.compareTo(version, openGLFeatureFactory_.OPENGL_AUTO_SELECT.getName())) = (0) then begin
            Self.setVersionSelector(openGLFeatureFactory_.OPENGL_AUTO_SELECT);
        end else if (Self.tsUtil.compareTo(version, openGLFeatureFactory_.OPENGL_MINIMUM.getName())) = (0) then begin
            Self.setVersionSelector(openGLFeatureFactory_.OPENGL_MINIMUM);
        end else begin
            raise SysUtils.Exception.Create('OpenGLConfiguration: Error reading version selector: ' + version);
        end;
        type_ := dataInputStream_.readUTF();
        if (Self.tsUtil.compareTo(type_, openGLFeatureFactory_.OPENGL_AS_GAME_THREAD.getName())) = (0) then begin
            Self.setType(openGLFeatureFactory_.OPENGL_AS_GAME_THREAD);
        end else if (Self.tsUtil.compareTo(type_, openGLFeatureFactory_.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName())) = (0) then begin
            Self.setType(openGLFeatureFactory_.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS);
        end else begin
            raise SysUtils.Exception.Create('OpenGLConfiguration: Error reading image color');
        end;
        imageColor := dataInputStream_.readUTF();
        if (Self.tsUtil.compareTo(imageColor, openGLFeatureFactory_.IMAGE_COLOR_DEPTH_4444.getName())) = (0) then begin
            Self.setImageColor(openGLFeatureFactory_.IMAGE_COLOR_DEPTH_4444);
        end else if (Self.tsUtil.compareTo(imageColor, openGLFeatureFactory_.IMAGE_COLOR_DEPTH_4444.getName())) = (0) then begin
            Self.setImageColor(openGLFeatureFactory_.IMAGE_COLOR_DEPTH_4444);
        end else if (Self.tsUtil.compareTo(imageColor, openGLFeatureFactory_.IMAGE_COLOR_DEPTH_4444.getName())) = (0) then begin
            Self.setImageColor(openGLFeatureFactory_.IMAGE_COLOR_DEPTH_4444);
        end else begin
            raise SysUtils.Exception.Create('OpenGLConfiguration: Error reading image color: ' + TJava.ToString(imageColor));
        end;
        color := dataInputStream_.readUTF();
        if (Self.tsUtil.compareTo(color, openGLFeatureFactory_.OPENGL_COLOR_DEPTH_4444.getName())) = (0) then begin
            Self.setColor(openGLFeatureFactory_.OPENGL_COLOR_DEPTH_4444);
        end else if (Self.tsUtil.compareTo(color, openGLFeatureFactory_.OPENGL_COLOR_DEPTH_565.getName())) = (0) then begin
            Self.setColor(openGLFeatureFactory_.OPENGL_COLOR_DEPTH_565);
        end else if (Self.tsUtil.compareTo(color, openGLFeatureFactory_.OPENGL_COLOR_DEPTH_8888.getName())) = (0) then begin
            Self.setColor(openGLFeatureFactory_.OPENGL_COLOR_DEPTH_8888);
        end else begin
            raise SysUtils.Exception.Create('OpenGLConfiguration: Error reading color: ' + TJava.ToString(color));
        end;
        TPreLogUtil.put('Read Configuration: ' + Self.toString(), TJava.Box(Self), 'read');
end;
    

// throws Exception
procedure TOpenGLConfiguration.write;
var
  closeable_: ICloseable;
  fileInputStreamFactory: TFileStreamFactory;
  fileOutputStream: TOutputStream;
  dataOutputStream: TAbDataOutputStream;
begin
        closeable_ := TNullCloseable.NULL_CLOSEABLE;
        try
        try
            TPreLogUtil.put('Write Configuration: ' + Self.toString(), TJava.Box(Self), 'write');
            fileInputStreamFactory := TFileStreamFactory.getInstance();
            fileOutputStream := fileInputStreamFactory.getFileOutputStreamInstance(TStringUtil.getInstance().EMPTY_STRING, Self.FILE_);
            dataOutputStream := TAbDataOutputStream.Create(fileOutputStream);
            closeable_ := dataOutputStream;
            if Self.isOpenGL() then begin
                dataOutputStream.writeInt(1);
            end else begin
                dataOutputStream.writeInt(0);
            end;
            dataOutputStream.writeUTF(Self.getVersionSelector().getName());
            dataOutputStream.writeUTF(Self.getType().getName());
            dataOutputStream.writeUTF(Self.getImageColor().getName());
            dataOutputStream.writeUTF(Self.getColor().getName());
            dataOutputStream.flush();
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
        finally
            TStreamUtil.getInstance().close(closeable_);
        end;
end;
    

// throws Exception
procedure TOpenGLConfiguration.init;
var
  features_: TFeatures;
  openGLFeatureFactory_: TOpenGLFeatureFactory;
begin
        features_ := TFeatures.getInstance();
        if TChangedGameFeatureListener.getInstance().isChangedFeature(TMainFeatureFactory.getInstance().STATIC_) then begin
            openGLFeatureFactory_ := TOpenGLFeatureFactory.getInstance();
            if Self.isOpenGL() then begin
                if ((features_.isFeature(openGLFeatureFactory_.OPENGL_2D)) or (features_.isFeature(openGLFeatureFactory_.OPENGL_3D))) or (features_.isFeature(openGLFeatureFactory_.OPENGL_2D_AND_3D)) then begin
                    if not (features_.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL)) then begin
                        Self.logUtil.putF('Turning on OpenGL as Default', TJava.Box(Self), Self.commonStrings.INIT);
                        features_.addDefault(TOpenGLFeatureFactory.getInstance().OPENGL);
                        Self.logUtil.putF('Using OpenGL Type Feature: ' + TJava.ToString(Self.getType()), TJava.Box(Self), Self.commonStrings.INIT);
                        features_.addDefault(Self.getType());
                        Self.logUtil.putF('Using OpenGL ImageColor Feature: ' + TJava.ToString(Self.getImageColor()), TJava.Box(Self), Self.commonStrings.INIT);
                        features_.addDefault(Self.getImageColor());
                        Self.logUtil.putF('Using OpenGL Color Feature: ' + TJava.ToString(Self.getColor()), TJava.Box(Self), Self.commonStrings.INIT);
                        features_.addDefault(Self.getColor());
                        Self.logUtil.putF('Using OpenGL Version Selector Feature: ' + TJava.ToString(Self.getVersionSelector()), TJava.Box(Self), Self.commonStrings.INIT);
                        features_.addDefault(Self.getVersionSelector());
                    end;
                end else begin
                    Self.logUtil.putF('OpenGL is enabled, but this game does not support OpenGL (Probably from installing with the same package name from a game that had OpenGL available)', TJava.Box(Self), Self.commonStrings.INIT);
                end;
            end else begin
                Self.logUtil.putF('OpenGL is Off', TJava.Box(Self), Self.commonStrings.INIT);
            end;
        end else begin
            if (Self.isOpenGL()) and (not (features_.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL))) then begin
                TPreLogUtil.put('OpenGL is set but not Enabled since statics where not cleared (Reboot or Complete exit is Required)', TJava.Box(Self), Self.commonStrings.INIT);
            end;
        end;
        TPreLogUtil.put(Self.toString(), TJava.Box(Self), Self.commonStrings.INIT);
end;
    

// throws Exception
procedure TOpenGLConfiguration.update(gameFeature: TFeature; colorLocked: Boolean);
var
  features_: TFeatures;
  openGLFeatureFactory_: TOpenGLFeatureFactory;
  modified: Boolean;
begin
        features_ := TFeatures.getInstance();
        openGLFeatureFactory_ := TOpenGLFeatureFactory.getInstance();
        modified := False;
        if (gameFeature) = (openGLFeatureFactory_.OPENGL) then begin
            if features_.isFeature(gameFeature) then begin
                if not (Self.isOpenGL()) then begin
                    Self.setOpenGL(True);
                    modified := True;
                end;
            end else begin
                if Self.isOpenGL() then begin
                    Self.setOpenGL(False);
                    modified := True;
                end;
            end;
        end;
        if ((gameFeature) = (openGLFeatureFactory_.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)) or ((gameFeature) = (openGLFeatureFactory_.OPENGL_AS_GAME_THREAD)) then begin
            if features_.isFeature(gameFeature) then begin
                if (gameFeature) <> (Self.getType()) then begin
                    Self.setType(TOpenGLFeature(TJava.ToObject(gameFeature)));
                    modified := True;
                end;
            end;
        end;
        if (((gameFeature) = (openGLFeatureFactory_.IMAGE_COLOR_DEPTH_4444)) or ((gameFeature) = (openGLFeatureFactory_.IMAGE_COLOR_DEPTH_565))) or ((gameFeature) = (openGLFeatureFactory_.IMAGE_COLOR_DEPTH_8888)) then begin
            if features_.isFeature(gameFeature) then begin
                if (Self.getImageColor()) <> (gameFeature) then begin
                    Self.setImageColor(TOpenGLFeature(TJava.ToObject(gameFeature)));
                    if colorLocked then begin
                        if (gameFeature) = (openGLFeatureFactory_.IMAGE_COLOR_DEPTH_4444) then begin
                            Self.setColor(openGLFeatureFactory_.OPENGL_COLOR_DEPTH_4444);
                        end else if (gameFeature) = (openGLFeatureFactory_.IMAGE_COLOR_DEPTH_565) then begin
                            Self.setColor(openGLFeatureFactory_.OPENGL_COLOR_DEPTH_565);
                        end else if (gameFeature) = (openGLFeatureFactory_.IMAGE_COLOR_DEPTH_8888) then begin
                            Self.setColor(openGLFeatureFactory_.OPENGL_COLOR_DEPTH_8888);
                        end;
                    end;
                    modified := True;
                end;
            end;
        end;
        if (((gameFeature) = (openGLFeatureFactory_.OPENGL_COLOR_DEPTH_4444)) or ((gameFeature) = (openGLFeatureFactory_.OPENGL_COLOR_DEPTH_565))) or ((gameFeature) = (openGLFeatureFactory_.OPENGL_COLOR_DEPTH_8888)) then begin
            if features_.isFeature(gameFeature) then begin
                if (Self.getColor()) <> (gameFeature) then begin
                    Self.setColor(TOpenGLFeature(TJava.ToObject(gameFeature)));
                    modified := True;
                end;
            end;
        end;
        if ((gameFeature) = (openGLFeatureFactory_.OPENGL_AUTO_SELECT)) or ((gameFeature) = (openGLFeatureFactory_.OPENGL_MINIMUM)) then begin
            if features_.isFeature(gameFeature) then begin
                Self.setVersionSelector(TOpenGLFeature(TJava.ToObject(gameFeature)));
            end;
            modified := True;
        end;
        if modified then begin
            Self.write();
        end;
end;
    

procedure TOpenGLConfiguration.setOpenGL(opengl: Boolean);
begin
        Self.opengl := opengl;
end;
    

function TOpenGLConfiguration.isOpenGL: Boolean;
begin
        Exit(Self.opengl);
end;
    

procedure TOpenGLConfiguration.setImageColor(imageColor: TOpenGLFeature);
begin
        Self.imageColor := imageColor;
end;
    

function TOpenGLConfiguration.getImageColor: TOpenGLFeature;
begin
        Exit(Self.imageColor);
end;
    

procedure TOpenGLConfiguration.setColor(color: TOpenGLFeature);
begin
        Self.color := color;
end;
    

function TOpenGLConfiguration.getColor: TOpenGLFeature;
begin
        Exit(Self.color);
end;
    

procedure TOpenGLConfiguration.setVersionSelector(versionSelector: TOpenGLFeature);
begin
        Self.versionSelector := versionSelector;
end;
    

function TOpenGLConfiguration.getVersionSelector: TOpenGLFeature;
begin
        Exit(Self.versionSelector);
end;
    

procedure TOpenGLConfiguration.setType(type_: TOpenGLFeature);
begin
        Self.type_ := type_;
end;
    

function TOpenGLConfiguration.getType: TOpenGLFeature;
begin
        Exit(Self.type_);
end;
    

function TOpenGLConfiguration.toString: string;
var
  stringBuffer: TStringMaker;
  stringUtil_: TStringUtil;
begin
        stringBuffer := TStringMaker.Create();
        stringUtil_ := TStringUtil.getInstance();
        stringBuffer.append(' isOpenGL: ');
        stringBuffer.appendboolean(Self.isOpenGL());
        stringBuffer.append(' VersionSelector: ');
        stringBuffer.append(stringUtil_.toString(Self.getVersionSelector()));
        stringBuffer.append(' Type: ');
        stringBuffer.append(stringUtil_.toString(Self.getType()));
        stringBuffer.append(' Image Color: ');
        stringBuffer.append(stringUtil_.toString(Self.getImageColor()));
        stringBuffer.append(' Color: ');
        stringBuffer.append(stringUtil_.toString(Self.getColor()));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLConfiguration.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

