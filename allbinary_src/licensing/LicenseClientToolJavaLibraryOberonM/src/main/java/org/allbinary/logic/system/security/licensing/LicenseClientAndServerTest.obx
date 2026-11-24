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
unit LicenseClientAndServerTest;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList;

type
  {AB:TYPES}
  TLicenseClientAndServerTest = class(TObject)
  public
    logUtil: TLogUtil;
    vector: TBasicArrayList;
    procedure InitFields;
        constructor Create(options: TArray<string>);
        procedure test; virtual;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  BasicArrayListD, PrintLicenseInitInfo, AbeClientInformationInterfaceFactory, AbeClientInformationInterface, AbeLicenseInterface, StringMaker, LicenseInitInfo, LicenseInitInfoUtil, XmlRpcAbeLicenseRetrievalClient, PATH_GLOBALS, CommonStrings;


{AB:CODE}

procedure TLicenseClientAndServerTest.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.vector := TBasicArrayListD.Create();
end;
    

constructor TLicenseClientAndServerTest.Create(options: TArray<string>);
var
  index: Integer;
  file_: TFile;
  reader: TFileReader;
  lineNumberReader_: TLineNumberReader;
begin
    inherited Create;
    InitFields;
        TLicenseInitInfoUtil.getInstance().setFilePath((TPrintLicenseInitInfo.PATH) + (TPATH_GLOBALS.getInstance().INIT_PATH));
        for index := 1 to System.Length(options) - 1 do begin
            Self.vector.add(TJava.Box(options[index]));
        end;
        if (System.Length(options)) < (2) then begin
            file_ := TFile.Create(TJava.ToString(TPrintLicenseInitInfo.PATH) + 'testlicenseservers.txt');
            reader := TFileReader.Create(file_);
            lineNumberReader_ := TLineNumberReader.Create(reader);
            while lineNumberReader_.ready() do begin
                Self.vector.add(TJava.Box(lineNumberReader_.readLine()));
            end;
        end;
end;
    

procedure TLicenseClientAndServerTest.test;
var
  stringBuffer: TStringMaker;
  list: TBasicArrayList;
  TESTING: string;
  PROCESSING: string;
  END_: string;
  RESULT_: string;
  size: Integer;
  serverName: string;
  licenseInitInfo_: TLicenseInitInfo;
  abeClientInformation: IAbeClientInformationInterface;
  xmlRpcAbeLicenseClient: TXmlRpcAbeLicenseRetrievalClient;
  abeLicenseInterface_: IAbeLicenseInterface;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        stringBuffer := TStringMaker.Create();
        try
            list := TBasicArrayListD.Create();
            TESTING := 'Testing with new licence:<br/>';
            PROCESSING := 'Processing: <br/>';
            END_ := '<br/>End<br/>';
            RESULT_ := 'Test Result: ';
            size := Self.vector.size();
            for index := 0 to size - 1 do begin
                stringBuffer.append(TESTING);
                serverName := TJava.UnboxString(TJava.ToObject(Self.vector.get(index)));
                try
                    licenseInitInfo_ := TLicenseInitInfo.Create();
                    licenseInitInfo_.addServer(serverName);
                    TLicenseInitInfoUtil.getInstance().write(licenseInitInfo_);
                    abeClientInformation := TAbeClientInformationInterfaceFactory.getInstance();
                    xmlRpcAbeLicenseClient := TXmlRpcAbeLicenseRetrievalClient.Create(abeClientInformation);
                    abeLicenseInterface_ := (TJava.ToObject(xmlRpcAbeLicenseClient.get(nil)) as IAbeLicenseInterface);
                    if (abeLicenseInterface_) <> (nil) then begin
                        stringBuffer.append(PROCESSING);
                        stringBuffer.append(TJava.ToString(TJava.ToObject(abeLicenseInterface_)));
                    end;
                    stringBuffer.append(END_);
                    Self.logUtil.putF(RESULT_ + stringBuffer.toString(), TJava.Box(Self), 'test');
                    stringBuffer.delete_(0, stringBuffer.length());
                except
                    on e: SysUtils.Exception do begin
                    list.add(TJava.Box(serverName));
                    Self.logUtil.put('Test Error: ' + stringBuffer.toString(), TJava.Box(Self), 'test', TJava.Box(e));
                    end;
                end;
            end;
            Self.logUtil.putF('Total Servers Failed: ' + IntToStr(list.size()) + ' Failed Servers: ' + list.toString(), TJava.Box(Self), 'test');
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Test Error: ' + stringBuffer.toString(), TJava.Box(Self), 'test', TJava.Box(e));
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

class procedure TLicenseClientAndServerTest.main(args: TArray<string>);
var
  licensingTest: TLicenseClientAndServerTest;
  logUtil_: TLogUtil;
begin
        try
            licensingTest := TLicenseClientAndServerTest.Create(args);
            licensingTest.test();
        except
            on e: SysUtils.Exception do begin
            logUtil_ := TLogUtil.getInstance();
            logUtil_.put(TCommonStrings.getInstance().EXCEPTION, TJava.Box('main()'), 'main()', TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

