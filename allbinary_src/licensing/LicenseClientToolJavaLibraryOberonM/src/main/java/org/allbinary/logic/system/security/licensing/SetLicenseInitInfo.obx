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
unit SetLicenseInitInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LicenseInitInfo, BasicArrayList;

type
  {AB:TYPES}
  TSetLicenseInitInfo = class(TObject)
  public
    vector: TBasicArrayList;
    class var stdinput: TBufferedReader;
    procedure InitFields;
        constructor Create(options: TArray<string>);
        function getLicenseInitInfo: TLicenseInitInfo; virtual;
        procedure createNewLicenseInitInfo(licenceServerVector: TBasicArrayList); virtual;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  BasicArrayListD, PrintLicenseInitInfo, LicenseInitInfoUtil, FileFactory, PATH_GLOBALS;


{AB:CODE}

procedure TSetLicenseInitInfo.InitFields;
begin
  Self.vector := TBasicArrayListD.Create();
end;
    

constructor TSetLicenseInitInfo.Create(options: TArray<string>);
var
  index: Integer;
begin
    inherited Create;
    InitFields;
        TLicenseInitInfoUtil.getInstance().setFilePath((TPrintLicenseInitInfo.PATH) + (TPATH_GLOBALS.getInstance().INIT_PATH));
        for index := 1 to System.Length(options) - 1 do begin
            Self.vector.add(TJava.Box(options[index]));
        end;
end;
    

// throws Exception
function TSetLicenseInitInfo.getLicenseInitInfo: TLicenseInitInfo;
var
  licenseInitInfoUtil_: TLicenseInitInfoUtil;
begin
        licenseInitInfoUtil_ := TLicenseInitInfoUtil.getInstance();
        if TFileFactory.getInstance().isFile(licenseInitInfoUtil_.INITFILENAME) then begin
            Exit(licenseInitInfoUtil_.read());
        end else begin
            Exit(TLicenseInitInfo.Create());
        end;
end;
    

procedure TSetLicenseInitInfo.createNewLicenseInitInfo(licenceServerVector: TBasicArrayList);
var
  licenseInitInfo_: TLicenseInitInfo;
  file_: TFile;
  reader: TFileReader;
  lineNumberReader_: TLineNumberReader;
begin
        try
            if (licenceServerVector) = (nil) then begin
                raise SysUtils.Exception.Create('null BasicArrayList Passed - Just Make Empty if you want');
            end;
            licenseInitInfo_ := Self.getLicenseInitInfo();
            WriteLn('License Serv Example: http://www.dartstatistics.com/LicServ/serverssl.php');
            licenseInitInfo_.clearServers();
            file_ := TFile.Create(TJava.ToString(TPrintLicenseInitInfo.PATH) + 'licenseservers.txt');
            reader := TFileReader.Create(file_);
            lineNumberReader_ := TLineNumberReader.Create(reader);
            while lineNumberReader_.ready() do begin
                licenseInitInfo_.addServer(lineNumberReader_.readLine());
            end;
            TLicenseInitInfoUtil.getInstance().write(licenseInitInfo_);
            TLicenseInitInfoUtil.getInstance().read();
        except
            on e: SysUtils.Exception do begin
            Write('Error: ' + TJava.ToString(e));
            WriteLn(e.Message);
            end;
        end;
end;
    

// throws Exception
class procedure TSetLicenseInitInfo.main(args: TArray<string>);
var
  initInfo: TSetLicenseInitInfo;
begin
        initInfo := TSetLicenseInitInfo.Create(args);
        initInfo.createNewLicenseInitInfo(TBasicArrayListD.Create());
end;

initialization
  {AB:INITIALIZATION}
  TSetLicenseInitInfo.stdinput := TBufferedReader.Create(TInputStreamReader.Create(TSystem.in_));
  {AB:END}

end.

