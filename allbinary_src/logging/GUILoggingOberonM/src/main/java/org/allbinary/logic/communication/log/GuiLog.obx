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
// package org.allbinary.logic.communication.log
unit GuiLog;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommonStrings, LogFormatUtil;

type
  {AB:TYPES}
  TGuiLog = class(TObject)
  public
    logFormatUtil: TLogFormatUtil;
    commonStrings: TCommonStrings;
    class var instance: TGuiLog;
    procedure InitFields;
        class function getInstance: TGuiLog; static;
        constructor Create;
        procedure showDialog(msg: string); virtual;
        function put(specialMessage: string; anyType: TObject; functionName: string): string; overload; virtual;
        function put(specialMessage: string; anyType: TObject; functionName: string; exception: SysUtils.Exception): string; overload; virtual;
        function put(specialMessage: string; className: string; functionName: string): string; overload; virtual;
        function put(specialMessage: string; className: string; functionName: string; exception: SysUtils.Exception): string; overload; virtual;
  end;

implementation
uses
  JDialog, GridLayout, JScrollPane, JLabel, JTextArea, PreLogUtil;


{AB:CODE}

procedure TGuiLog.InitFields;
begin
  Self.logFormatUtil := TLogFormatUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;
    

class function TGuiLog.getInstance: TGuiLog;
begin
        Exit(TGuiLog.instance);
end;
    

constructor TGuiLog.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TGuiLog.showDialog(msg: string);
var
  error: TJDialog;
  size: Integer;
  x: Integer;
  y: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        error := TJDialog.Create();
        size := (System.Length(msg)) * (9);
        x := size;
        if (x) > (550) then begin
            x := 550;
        end;
        error.getContentPane().setLayout(TGridLayout.Create(1, 1));
        if (size) > (255) then begin
            y := 550;
            error.setSize(x, y);
            error.getContentPane().add(TJScrollPane.Create(TJTextArea.Create(msg)));
        end else if (size) > (0) then begin
            y := 50;
            error.setSize(x, y);
            error.getContentPane().add(TJScrollPane.Create(TJLabel.Create(msg)));
        end;
        error.show();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TGuiLog.put(specialMessage: string; anyType: TObject; functionName: string): string;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.put(specialMessage, TJava.Box(anyType), functionName, nil));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TGuiLog.put(specialMessage: string; anyType: TObject; functionName: string; exception: SysUtils.Exception): string;
var
  data: string;
begin
    TJava.MonitorEnter(Self);
    try
        try
            data := Self.logFormatUtil.get(specialMessage, TJava.ToObject(anyType).ClassType.ClassName, functionName, TJava.Box(exception));
            Self.showDialog(data);
            WriteLn(data);
            Exit(data);
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'put', TJava.Box(e));
            Exit('Logging Error');
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TGuiLog.put(specialMessage: string; className: string; functionName: string): string;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.put(specialMessage, TJava.Box(className), functionName, nil));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TGuiLog.put(specialMessage: string; className: string; functionName: string; exception: SysUtils.Exception): string;
var
  data: string;
begin
    TJava.MonitorEnter(Self);
    try
        try
            data := Self.logFormatUtil.get(specialMessage, className, functionName, TJava.Box(exception));
            Self.showDialog(data);
            WriteLn(data);
            Exit(data);
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'put', TJava.Box(e));
            Exit('Logging Error');
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TGuiLog.instance := TGuiLog.Create();
  {AB:END}

end.

