// Generated Code Do Not Modify
// package org.allbinary.android
unit ToastUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Context, View, LogUtil;

type
  {AB:TYPES}
  TToastUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TToastUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TToastUtil; static;
        procedure makeToast(view_: TView; context_: TContext; message: string; time: Integer); virtual;
  end;

implementation
uses
  Toast, CommonStrings;


{AB:CODE}

procedure TToastUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TToastUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TToastUtil.getInstance: TToastUtil;
begin
        Exit(TToastUtil.instance);
end;
    

procedure TToastUtil.makeToast(view_: TView; context_: TContext; message: string; time: Integer);
begin
        { Java local class MakeToast: move it to the unit }
        view_.post(TMakeToast.Create(message));
end;

initialization
  {AB:INITIALIZATION}
  TToastUtil.instance := TToastUtil.Create();
  {AB:END}

end.

