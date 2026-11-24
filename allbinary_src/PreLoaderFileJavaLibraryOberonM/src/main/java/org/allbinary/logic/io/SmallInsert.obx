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
unit SmallInsert;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TSmallInsert = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    fileName: string;
    string_: string;
    procedure InitFields;
        constructor Create(fileName: string);
        function atBeginning(text: string): Boolean; virtual;
        function after(text: string; after: string): Boolean; virtual;
        function atEnd(text: string): Boolean; virtual;
  end;

implementation
uses
  AbFileSystem;


{AB:CODE}

procedure TSmallInsert.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;
    

constructor TSmallInsert.Create(fileName: string);
begin
    inherited Create;
    InitFields;
        Self.fileName := fileName;
        Self.string_ := TAbFileSystem.getInstance().readAsString(fileName);
end;
    

function TSmallInsert.atBeginning(text: string): Boolean;
var
  idFile: TFileOutputStream;
  idOutData: TDataOutputStream;
begin
        try
            idFile := TFileOutputStream.Create(Self.fileName);
            idOutData := TDataOutputStream.Create(idFile);
            idOutData.writeBytes(text + Self.string_);
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().IDLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'insertAtBeginning', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TSmallInsert.after(text: string; after: string): Boolean;
var
  index: Integer;
  start: string;
  end_: string;
  idFile: TFileOutputStream;
  idOutData: TDataOutputStream;
begin
        try
            index := (Pos(TJava.ToString(after), Self.string_) - 1);
            if (index) < (0) then begin
                WriteLn('No such start: ' + after + ' in: ' + Self.string_);
                Exit(False);
            end;
            index := (index) + (System.Length(after));
            start := Copy(Self.string_, (0) + 1, (index) - (0));
            end_ := Copy(Self.string_, ((index) + (1)) + 1, (System.Length(Self.string_)) - ((index) + (1)));
            idFile := TFileOutputStream.Create(Self.fileName);
            idOutData := TDataOutputStream.Create(idFile);
            idOutData.writeBytes(start + text + end_);
            idOutData.close();
            idFile.close();
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().IDLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'after', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TSmallInsert.atEnd(text: string): Boolean;
var
  idFile: TFileOutputStream;
  idOutData: TDataOutputStream;
begin
        try
            idFile := TFileOutputStream.Create(Self.fileName);
            idOutData := TDataOutputStream.Create(idFile);
            idOutData.writeBytes(Self.string_ + text);
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().IDLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'insertAtEnd', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

