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
unit HttpFilePermissionsUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbPath;

type
  {AB:TYPES}
  THttpFilePermissionsUtil = class(TObject)
  public
    class var instance: THttpFilePermissionsUtil;
    constructor Create;
        class function getInstance: THttpFilePermissionsUtil; static;
        procedure create_(path: TAbPath); virtual;
  end;

implementation
uses
  AbFile;


{AB:CODE}

constructor THttpFilePermissionsUtil.Create;
begin
  inherited Create;
end;
    

class function THttpFilePermissionsUtil.getInstance: THttpFilePermissionsUtil;
begin
        Exit(THttpFilePermissionsUtil.instance);
end;
    

// throws Exception
procedure THttpFilePermissionsUtil.create_(path: TAbPath);
var
  file_: TAbFile;
begin
        file_ := TAbFile.createAbFileFromAbPath(path);
        if not (file_.isFile()) then begin
            file_.createNewFile();
        end;
end;

initialization
  {AB:INITIALIZATION}
  THttpFilePermissionsUtil.instance := THttpFilePermissionsUtil.Create();
  {AB:END}

end.

