// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
unit OpenGLUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, Image, LoadTextures, OpenGLESGraphics, CanvasStrings, DisplayInfoSingleton, RendererStrings, PreResourceImageUtil, LogUtil, CommonStrings, SynchObject, BasicArrayList;

type
  {AB:TYPES}
  TOpenGLUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    renderStrings: TRendererStrings;
    canvasStrings: TCanvasStrings;
    displayInfoSingleton: TDisplayInfoSingleton;
    preResourceImageUtil: TPreResourceImageUtil;
    lockObject: TSynchObject;
    anyType: TSynchObject;
    list: TBasicArrayList;
    runnableList: TBasicArrayList;
    created: Boolean;
    surfaceCreatedAndInitialized: Boolean;
    class var instance: TOpenGLUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TOpenGLUtil; static;
        procedure onSurfaceCreated(gl: IGL10); overload; virtual;
        procedure onSurfaceCreated(gl: IGL10; loadTextures_: TLoadTextures); overload; virtual;
        procedure onSurfaceChanged(gl: IGL10; graphics: TOpenGLESGraphics); virtual;
        function addImage(image_: TImage): TImage; virtual;
        procedure clear; virtual;
        procedure addRunnable(runnable: IRunnable); virtual;
        procedure processRunnables;
        procedure set_(gl: IGL10);
  end;

implementation
uses
  OpenGLCapabilities, OpenGLLogUtil, ProgressCanvas, ProgressCanvasFactory, OpenGLESImage, OpenGLImageCache, OpenGLImageCacheFactory, PreLogUtil, CommonLabels, BasicArrayListD;


{AB:CODE}

procedure TOpenGLUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.renderStrings := TRendererStrings.getInstance();
  Self.canvasStrings := TCanvasStrings.getInstance();
  Self.displayInfoSingleton := TDisplayInfoSingleton.getInstance();
  Self.preResourceImageUtil := TPreResourceImageUtil.getInstance();
  Self.lockObject := TSynchObject.Create();
  Self.anyType := TSynchObject.Create();
  Self.list := TBasicArrayListD.Create();
  Self.runnableList := TBasicArrayListD.Create();
  Self.created := False;
  Self.surfaceCreatedAndInitialized := False;
end;

constructor TOpenGLUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TOpenGLUtil.getInstance: TOpenGLUtil;
begin
        Exit(TOpenGLUtil.instance);
end;
    

procedure TOpenGLUtil.onSurfaceCreated(gl: IGL10);
begin
        try
            if not (Self.created) then begin
                Self.created := True;
                TPreLogUtil.put(TJava.ToString(TCommonLabels.getInstance().START_LABEL) + TOpenGLCapabilities.getInstance().toString(), TJava.Box(Self), Self.renderStrings.ON_SURFACE_CREATED);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.renderStrings.ON_SURFACE_CREATED, TJava.Box(e));
            end;
        end;
end;
    

procedure TOpenGLUtil.onSurfaceCreated(gl: IGL10; loadTextures_: TLoadTextures);
begin
        try
            loadTextures_.load(gl);
            TOpenGLLogUtil.getInstance().logError(gl);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.renderStrings.ON_SURFACE_CREATED, TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TOpenGLUtil.onSurfaceChanged(gl: IGL10; graphics: TOpenGLESGraphics);
var
  progressCanvas_: TProgressCanvas;
begin
        if not (Self.surfaceCreatedAndInitialized) then begin
            graphics.init();
            Self.surfaceCreatedAndInitialized := True;
        end;
        graphics.update();
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        progressCanvas_.update(graphics);
        (TOpenGLImageCache(TJava.ToObject(TOpenGLImageCacheFactory.getInstance()))).update(gl);
        Self.processRunnables();
        Self.set_(gl);
end;
    

function TOpenGLUtil.addImage(image_: TImage): TImage;
var
  encapsulateImage: TImage;
begin
        encapsulateImage := Self.preResourceImageUtil.encapsulate(image_);
        if (encapsulateImage) <> (image_) then begin
            TJava.MonitorEnter(Self.anyType);
            try
                Self.list.add(TJava.Box(encapsulateImage));
            finally
                TJava.MonitorExit(Self.anyType);
            end;
            Exit(encapsulateImage);
        end;
        Exit(image_);
end;
    

procedure TOpenGLUtil.clear;
begin
        TJava.MonitorEnter(Self.anyType);
        try
            Self.list.clear();
        finally
            TJava.MonitorExit(Self.anyType);
        end;
end;
    

procedure TOpenGLUtil.addRunnable(runnable: IRunnable);
begin
        TJava.MonitorEnter(Self.lockObject);
        try
            if not (Self.runnableList.contains(TJava.Box(runnable))) then begin
                Self.runnableList.add(TJava.Box(runnable));
                Self.displayInfoSingleton.add(Self.canvasStrings.SCALED_IMAGES);
            end;
        finally
            TJava.MonitorExit(Self.lockObject);
        end;
end;
    

procedure TOpenGLUtil.processRunnables;
var
  runnable: IRunnable;
  size: Integer;
  index: Integer;
begin
        TJava.MonitorEnter(Self.lockObject);
        try
            
            size := Self.runnableList.size();
            for index := 0 to size - 1 do begin
                runnable := (TJava.ToObject(Self.runnableList.get(index)) as IRunnable);
                runnable.run();
            end;
            Self.runnableList.clear();
        finally
            TJava.MonitorExit(Self.lockObject);
        end;
end;
    

// throws Exception
procedure TOpenGLUtil.set_(gl: IGL10);
var
  size: Integer;
  image_: TOpenGLESImage;
  index2: Integer;
begin
        size := Self.list.size();
        
        for index2 := 0 to size - 1 do begin
            image_ := TOpenGLESImage(TJava.ToObject(Self.list.get(index2)));
            image_.set_(gl);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLUtil.instance := TOpenGLUtil.Create();
  {AB:END}

end.

