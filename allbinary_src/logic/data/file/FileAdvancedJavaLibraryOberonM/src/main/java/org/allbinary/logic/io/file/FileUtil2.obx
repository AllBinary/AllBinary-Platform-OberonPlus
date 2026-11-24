{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic.io.file
unit FileUtil2;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, StreamUtil, CommonStrings, BasicArrayList, AbFile;

type
  {AB:TYPES}
  TFileUtil2 = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    streamUtil: TStreamUtil;
    class var instance: TFileUtil2;
    procedure InitFields;
        class function getInstance: TFileUtil2; static;
        constructor Create;
        function loadFileAsList(file_: TAbFile; max: Integer; byteArray1: TArray<ShortInt>): TBasicArrayList; virtual;
  end;

implementation
uses
  SimpleFileUtil, AbFileInputStream;


{AB:CODE}

procedure TFileUtil2.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.streamUtil := TStreamUtil.getInstance();
end;
    

class function TFileUtil2.getInstance: TFileUtil2;
begin
        Exit(TFileUtil2.instance);
end;
    

constructor TFileUtil2.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TFileUtil2.loadFileAsList(file_: TAbFile; max: Integer; byteArray1: TArray<ShortInt>): TBasicArrayList;
var
  inputStream: TAbFileInputStream;
begin
        inputStream := nil;
        try
            inputStream := TAbFileInputStream.createFromAbFile(file_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.ADD, TJava.Box(e));
            end;
        end;
        Exit(TSimpleFileUtil.getInstance().loadFileAsList(inputStream, max, byteArray1));
end;

initialization
  {AB:INITIALIZATION}
  TFileUtil2.instance := TFileUtil2.Create();
  {AB:END}

end.

