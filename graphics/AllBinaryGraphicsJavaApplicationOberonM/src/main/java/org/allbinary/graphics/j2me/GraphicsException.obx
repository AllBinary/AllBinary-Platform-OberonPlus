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
// package org.allbinary.graphics.j2me
unit GraphicsException;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GuiLog, LogUtil;

type
  {AB:TYPES}
  TGraphicsException = class(SysUtils.Exception)
  public
    logUtil: TLogUtil;
    guiLog: TGuiLog;
    procedure InitFields;
        constructor Create(msg: string; obj: TObject; method: string); overload;
        constructor Create(msg: string; className: string; method: string); overload;
  end;

implementation

{AB:CODE}

procedure TGraphicsException.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.guiLog := TGuiLog.getInstance();
end;
    

constructor TGraphicsException.Create(msg: string; obj: TObject; method: string);
begin
        inherited Create(msg);
        InitFields;
        try
            Self.guiLog.showDialog(msg);
            Self.logUtil.put(msg, TJava.Box(obj), method, TJava.Box(Self));
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;
    

constructor TGraphicsException.Create(msg: string; className: string; method: string);
begin
        inherited Create(msg);
        InitFields;
        try
            Self.guiLog.showDialog(msg);
            Self.logUtil.put(msg, TJava.Box(className), method, TJava.Box(Self));
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

