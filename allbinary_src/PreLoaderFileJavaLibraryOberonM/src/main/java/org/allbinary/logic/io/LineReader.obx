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
unit LineReader;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, AbFileInputStream;

type
  {AB:TYPES}
  TLineReader = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    fileName: string;
    string_: string;
    index: Integer;
    idFile: TAbFileInputStream;
    idData: TDataInputStream;
    procedure InitFields;
        constructor Create(fileName: string);
        function hasNext: Boolean; virtual;
        function next: string; virtual;
  end;

implementation
uses
  CommonSeps;


{AB:CODE}

procedure TLineReader.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  Self.index := 0;
  
  
end;
    

constructor TLineReader.Create(fileName: string);
var
  bytes: TArray<ShortInt>;
begin
    inherited Create;
    InitFields;
        try
            bytes := TJava.NewArray<ShortInt>(100000);
            Self.fileName := fileName;
            Self.idFile := TAbFileInputStream.Create(fileName);
            Self.idFile.read(bytes);
            Self.string_ := TJava.NewString(bytes);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('File: ' + fileName, TJava.Box(Self), 'LineReader', TJava.Box(e));
            begin
            end;
            end;
        end;
end;
    

function TLineReader.hasNext: Boolean;
var
  nextIndex: Integer;
begin
        try
            nextIndex := Self.string_.indexOf(TCommonSeps.getInstance().NEW_LINE, Self.index);
            if (nextIndex) = (-1) then begin
                Exit(False);
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'hasNext', TJava.Box(e));
            begin
            end;
            Exit(False);
            end;
        end;
end;
    

// throws Exception
function TLineReader.next: string;
var
  nextIndex: Integer;
  temp: string;
begin
        try
            nextIndex := Self.string_.indexOf(TCommonSeps.getInstance().NEW_LINE, Self.index);
            if (nextIndex) = (-1) then begin
                raise SysUtils.Exception.Create('next() should have been called first');
            end;
            temp := Copy(Self.string_, (Self.index) + 1, (nextIndex) - (Self.index));
            Self.index := (nextIndex) + (1);
            Exit(temp);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'next', TJava.Box(e));
            begin
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

