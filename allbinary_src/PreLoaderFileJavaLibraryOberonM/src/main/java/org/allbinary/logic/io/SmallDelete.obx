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
// package org.allbinary.logic.io
unit SmallDelete;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TSmallDelete = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    fileName: string;
    string_: string;
    procedure InitFields;
        constructor Create(fileName: string);
        function deleteAtStart(start: string; end_: string): Boolean; virtual;
        function deleteBetween(start: string; end_: string; newText: string): Boolean; virtual;
  end;

implementation
uses
  AbFileSystem;


{AB:CODE}

procedure TSmallDelete.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;
    

constructor TSmallDelete.Create(fileName: string);
begin
    inherited Create;
    InitFields;
        Self.fileName := fileName;
        Self.string_ := TAbFileSystem.getInstance().readAsString(fileName);
end;
    

function TSmallDelete.deleteAtStart(start: string; end_: string): Boolean;
var
  beginIndex: Integer;
  endIndex: Integer;
  text: string;
  idFile: TFileOutputStream;
  idOutData: TDataOutputStream;
begin
        try
            
            
            beginIndex := (Pos(TJava.ToString(start), Self.string_) - 1);
            endIndex := (Pos(TJava.ToString(end_), Self.string_) - 1);
            if (((((endIndex) > (beginIndex)) and ((beginIndex) >= (0))) and ((endIndex) >= (0))) and ((beginIndex) < (10))) and ((endIndex) < (525)) then begin
                text := Copy(Self.string_, (endIndex) + 1, (System.Length(Self.string_)) - (endIndex));
                idFile := TFileOutputStream.Create(Self.fileName);
                idOutData := TDataOutputStream.Create(idFile);
                idOutData.writeBytes(text);
                Exit(True);
            end;
            Exit(False);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().IDLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'deleteAtStart', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TSmallDelete.deleteBetween(start: string; end_: string; newText: string): Boolean;
var
  beginIndex: Integer;
  endIndex: Integer;
  newStart: string;
  text: string;
  idFile: TFileOutputStream;
  idOutData: TDataOutputStream;
begin
        try
            
            
            beginIndex := (Pos(TJava.ToString(start), Self.string_) - 1);
            endIndex := (Pos(TJava.ToString(end_), Self.string_) - 1);
            if (((((endIndex) > (beginIndex)) and ((beginIndex) >= (0))) and ((endIndex) >= (0))) and ((beginIndex) < (50))) and ((endIndex) < (425)) then begin
                newStart := Copy(Self.string_, (0) + 1, (beginIndex) - (0));
                text := Copy(Self.string_, ((endIndex) + (System.Length(end_))) + 1, (System.Length(Self.string_)) - ((endIndex) + (System.Length(end_))));
                idFile := TFileOutputStream.Create(Self.fileName);
                idOutData := TDataOutputStream.Create(idFile);
                idOutData.writeBytes(newStart + newText + text);
                Exit(True);
            end;
            Exit(False);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().IDLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'deleteAtStart', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

