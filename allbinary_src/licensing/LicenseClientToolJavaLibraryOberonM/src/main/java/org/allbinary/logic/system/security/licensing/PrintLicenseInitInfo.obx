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
// package org.allbinary.logic.system.security.licensing
unit PrintLicenseInitInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LicenseInitInfo;

type
  {AB:TYPES}
  TPrintLicenseInitInfo = class(TObject)
  public
    class var PATH: string;
        constructor Create(options: TArray<string>);
        function getLicenseInitInfo: TLicenseInitInfo; virtual;
        procedure printInitInfo; virtual;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  LicenseInitInfoUtil, FileFactory, PATH_GLOBALS, BasicArrayList;


{AB:CODE}
    

constructor TPrintLicenseInitInfo.Create(options: TArray<string>);
begin
    inherited Create;
        TLicenseInitInfoUtil.getInstance().setFilePath((TPrintLicenseInitInfo.PATH) + (TPATH_GLOBALS.getInstance().INIT_PATH));
end;
    

// throws Exception
function TPrintLicenseInitInfo.getLicenseInitInfo: TLicenseInitInfo;
var
  licenseInitInfoUtil_: TLicenseInitInfoUtil;
begin
        licenseInitInfoUtil_ := TLicenseInitInfoUtil.getInstance();
        if TFileFactory.getInstance().isFile(licenseInitInfoUtil_.getFilePath()) then begin
            Exit(licenseInitInfoUtil_.read());
        end else begin
            WriteLn('No Licence File at: ' + TJava.ToString(licenseInitInfoUtil_.getFilePath()));
            Exit(TLicenseInitInfo.Create());
        end;
end;
    

procedure TPrintLicenseInitInfo.printInitInfo;
var
  licenseInitInfo_: TLicenseInitInfo;
  list: TBasicArrayList;
  size: Integer;
  index: Integer;
begin
        try
            licenseInitInfo_ := Self.getLicenseInitInfo();
            WriteLn('License ID: ' + TJava.ToString(licenseInitInfo_.getLicenseId()));
            list := licenseInitInfo_.getServerList();
            size := list.size();
            for index := 0 to size - 1 do begin
                WriteLn('Lic Serv: ' + TJava.ToString(list.get(index)));
            end;
        except
            on e: SysUtils.Exception do begin
            Write('Error: ' + TJava.ToString(e));
            WriteLn(e.Message);
            end;
        end;
end;
    

// throws Exception
class procedure TPrintLicenseInitInfo.main(args: TArray<string>);
var
  initInfo: TPrintLicenseInitInfo;
begin
        initInfo := TPrintLicenseInitInfo.Create(args);
        initInfo.printInitInfo();
end;

initialization
  {AB:INITIALIZATION}
  TPrintLicenseInitInfo.PATH := 'G:\mnt\bc\mydev\work\allbinary_src\licensing\data\';
  {AB:END}

end.

