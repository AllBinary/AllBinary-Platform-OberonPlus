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
unit CloudStreamUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbFile;

type
  {AB:TYPES}
  TCloudStreamUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TCloudStreamUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCloudStreamUtil; static;
        function getFile(file_: TAbFile): TInputStream; virtual;
        function getFileAnyWhere(file_: TAbFile): TInputStream; virtual;
        function getFileLocal(file_: TAbFile): TInputStream; virtual;
  end;

implementation
uses
  AbFileInputStream, AbFileLocalInputStream;


{AB:CODE}

procedure TCloudStreamUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TCloudStreamUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCloudStreamUtil.getInstance: TCloudStreamUtil;
begin
        Exit(TCloudStreamUtil.instance);
end;
    

// throws Exception
function TCloudStreamUtil.getFile(file_: TAbFile): TInputStream;
var
  inputStream_: TInputStream;
  available: Integer;
begin
        inputStream_ := TAbFileInputStream.createFromAbFile(file_);
        available := inputStream_.available();
        if (available) > (0) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Cloud File Bytes: ' + IntToStr(available), TJava.Box(Self), 'processRequest()');
            end;
        end;
        Exit(inputStream_);
end;
    

// throws Exception
function TCloudStreamUtil.getFileAnyWhere(file_: TAbFile): TInputStream;
var
  inputStream_: TInputStream;
  available: Integer;
begin
        inputStream_ := TAbFileLocalInputStream.Create(file_);
        available := inputStream_.available();
        if (available) > (0) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Local File Bytes: ' + IntToStr(available), TJava.Box(Self), 'processRequest()');
            end;
        end else begin
            inputStream_ := TAbFileInputStream.createFromAbFile(file_);
            available := inputStream_.available();
            if (available) > (0) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                    Self.logUtil.putF('Cloud File Bytes: ' + IntToStr(available), TJava.Box(Self), 'processRequest()');
                end;
            end;
        end;
        Exit(inputStream_);
end;
    

// throws Exception
function TCloudStreamUtil.getFileLocal(file_: TAbFile): TInputStream;
var
  inputStream_: TInputStream;
  available: Integer;
begin
        inputStream_ := TAbFileLocalInputStream.Create(file_);
        available := inputStream_.available();
        if (available) > (0) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Local File Bytes: ' + IntToStr(available), TJava.Box(Self), 'processRequest()');
            end;
        end;
        Exit(inputStream_);
end;

initialization
  {AB:INITIALIZATION}
  TCloudStreamUtil.instance := TCloudStreamUtil.Create();
  {AB:END}

end.

