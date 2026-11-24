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
// package org.allbinary.graphics.opengles.renderer
unit EmulatorCustomRenderer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, EGLConfig, GL10, CommonStrings, LogUtil, RendererStrings;

type
  {AB:TYPES}
  TEmulatorCustomRenderer = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    renderStrings: TRendererStrings;
    procedure InitFields;
    constructor Create;
        procedure onSurfaceCreated(gl: IGL10; eglConfig_: TEGLConfig); virtual;
  end;

implementation
uses
  InitEmulatorFactory, PreLogUtil;


{AB:CODE}

procedure TEmulatorCustomRenderer.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.renderStrings := TRendererStrings.getInstance();
end;

constructor TEmulatorCustomRenderer.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TEmulatorCustomRenderer.onSurfaceCreated(gl: IGL10; eglConfig_: TEGLConfig);
var
  initEmulatorFactory_: TInitEmulatorFactory;
  WAIT_FOR_EMULATOR: string;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.renderStrings.ON_SURFACE_CREATED);
        initEmulatorFactory_ := TInitEmulatorFactory.getInstance();
        if not (initEmulatorFactory_.isInitEmulator()) then begin
            try
                WAIT_FOR_EMULATOR := 'Waiting on Emulator Initialization';
                while not (initEmulatorFactory_.isInitEmulator()) do begin
                    TPreLogUtil.put(WAIT_FOR_EMULATOR, TJava.Box(Self), Self.renderStrings.ON_SURFACE_CREATED);
                    SysUtils.Sleep(180);
                end;
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.renderStrings.ON_SURFACE_CREATED, TJava.Box(e));
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

