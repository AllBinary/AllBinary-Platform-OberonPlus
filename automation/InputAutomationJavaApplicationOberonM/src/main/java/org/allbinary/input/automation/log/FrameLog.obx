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
// package org.allbinary.input.automation.log
unit FrameLog;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StringMaker;

type
  {AB:TYPES}
  TFrameLog = class(TObject)
  public
    frame: Int64;
    infoStringBuffer: TStringMaker;
    actionsStringBuffer: TStringMaker;
    class var frameBytes: TArray<ShortInt>;
    class var info: TArray<ShortInt>;
    class var actions: TArray<ShortInt>;
    procedure InitFields;
        constructor Create(frame: Int64);
        procedure addInfo(infoString: string); virtual;
        procedure addActions(vectorOfStrings: TBasicArrayList); virtual;
        procedure addAction(action: string); virtual;
        procedure write; virtual;
        function getFrame: Int64; virtual;
  end;

implementation
uses
  BasicArrayListD, ImageOutputData, LongUtil, CommonSeps;


{AB:CODE}

procedure TFrameLog.InitFields;
begin
  
  Self.infoStringBuffer := TStringMaker.Create();
  Self.actionsStringBuffer := TStringMaker.Create();
end;
    

constructor TFrameLog.Create(frame: Int64);
begin
    inherited Create;
    InitFields;
        Self.frame := frame;
end;
    

procedure TFrameLog.addInfo(infoString: string);
begin
        Self.infoStringBuffer.append(infoString);
end;
    

procedure TFrameLog.addActions(vectorOfStrings: TBasicArrayList);
var
  size: Integer;
  index: Integer;
begin
        size := vectorOfStrings.size();
        for index := 0 to size - 1 do begin
            Self.addAction(TJava.UnboxString(TJava.ToObject(vectorOfStrings.get(index))));
        end;
end;
    

procedure TFrameLog.addAction(action: string);
begin
        Self.actionsStringBuffer.append(action);
        Self.actionsStringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
end;
    

// throws Exception
procedure TFrameLog.write;
var
  filePathStringBuffer: TStringMaker;
  filePath: string;
  fileOutputStream_: TFileOutputStream;
begin
        filePathStringBuffer := TStringMaker.Create();
        filePathStringBuffer.append(TImageOutputData.SAVE_PATH);
        filePathStringBuffer.append(TLongUtil.fillIn(Self.frame.toString()));
        filePathStringBuffer.append('.txt');
        filePath := filePathStringBuffer.toString();
        fileOutputStream_ := TFileOutputStream.Create(TFile.Create(filePath));
        fileOutputStream_.write(TFrameLog.frameBytes);
        fileOutputStream_.write(TJava.GetBytes(Self.getFrame().toString()));
        fileOutputStream_.write(#10);
        fileOutputStream_.write(TFrameLog.info);
        fileOutputStream_.write(TJava.GetBytes(Self.infoStringBuffer.toString()));
        fileOutputStream_.write(#10);
        fileOutputStream_.write(TFrameLog.actions);
        fileOutputStream_.write(TJava.GetBytes(Self.actionsStringBuffer.toString()));
        fileOutputStream_.close();
end;
    

function TFrameLog.getFrame: Int64;
begin
        Exit(Self.frame);
end;

initialization
  {AB:INITIALIZATION}
  TFrameLog.frameBytes := TJava.NewString('Frame: ').getBytes();
  TFrameLog.info := TJava.NewString('Info: '#10'').getBytes();
  TFrameLog.actions := TJava.NewString('Actions: '#10'').getBytes();
  {AB:END}

end.

