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
// package org.allbinary.logic.communication.http.file.upload
unit FileUploadData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TFileUploadData = class(TObject)
  public
    FILE_: string;
    UPLOAD_TO_FILE_PATH: string;
    FILE_DATA: string;
    class var instance: TFileUploadData;
    procedure InitFields;
    constructor Create;
        class function getInstance: TFileUploadData; static;
  end;

implementation

{AB:CODE}

procedure TFileUploadData.InitFields;
begin
  Self.FILE_ := 'download_file_permissions.xml';
  Self.UPLOAD_TO_FILE_PATH := 'FILE_UPLOAD_UPLOAD_TO_FILE_PATH';
  Self.FILE_DATA := 'FILE_UPLOAD_FILE_DATA';
end;

constructor TFileUploadData.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TFileUploadData.getInstance: TFileUploadData;
begin
        Exit(TFileUploadData.instance);
end;

initialization
  {AB:INITIALIZATION}
  TFileUploadData.instance := TFileUploadData.Create();
  {AB:END}

end.

