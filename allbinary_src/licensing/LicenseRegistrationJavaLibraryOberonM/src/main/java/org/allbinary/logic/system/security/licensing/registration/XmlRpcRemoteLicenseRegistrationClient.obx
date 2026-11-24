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
// package org.allbinary.logic.system.security.licensing.registration
unit XmlRpcRemoteLicenseRegistrationClient;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CryptInterface, LogUtil, XmlRpcAbeClient, AbeClientInformationInterface;

type
  {AB:TYPES}
  TXmlRpcRemoteLicenseRegistrationClient = class(TXmlRpcAbeClient)
  public
    logUtil: TLogUtil;
    PAGE: string;
    procedure InitFields;
        constructor Create(clientInfo: IAbeClientInformationInterface);
        function get(anyType: TObject; cryptInterface_: ICryptInterface): TObject; virtual;
  end;

implementation
uses
  StringUtil, XmlRpcClient, XmlRpcException, BasicArrayList, BasicArrayListD, CommonLabels, StringMaker, ExceptionUtil, ABHashtable;


{AB:CODE}

procedure TXmlRpcRemoteLicenseRegistrationClient.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.PAGE := 'licenseregistrationserverssl.php';
end;
    

constructor TXmlRpcRemoteLicenseRegistrationClient.Create(clientInfo: IAbeClientInformationInterface);
begin
        inherited Create(clientInfo, 'LicenseRegistrationServer.process');
        InitFields;
        Self.setServer(0);
end;
    

// throws Exception
function TXmlRpcRemoteLicenseRegistrationClient.get(anyType: TObject; cryptInterface_: ICryptInterface): TObject;
var
  server: string;
  stringBuffer: TStringMaker;
  param: TBasicArrayList;
  serverUrl: string;
  index: Integer;
  xmlRpcClient_: TXmlRpcClient;
  hashtable: TABHashtable<TObject, TObject>;
  result_: TObject;
begin
        try
            server := Self.getClientInfo().getLicenseServer(Self.getServer());
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TRYING);
            stringBuffer.appendint(Integer(Trunc(Self.getServer())));
            stringBuffer.append(TSEP);
            stringBuffer.append(server);
            Self.logUtil.putF(TJava.ToString(TCommonLabels.getInstance().START_LABEL) + stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.GET);
            param := TBasicArrayListD.Create();
            serverUrl := Self.getClientInfo().getLicenseServer(Self.getServer());
            index := (RPos(TJava.ToString('/'), serverUrl) - 1);
            serverUrl := Copy(serverUrl, (0) + 1, ((index) + (1)) - (0)) + Self.PAGE;
            xmlRpcClient_ := TXmlRpcClient.Create(serverUrl);
            Self.setClient(xmlRpcClient_);
            xmlRpcClient_.setBasicAuthentication(TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING);
            hashtable := TABHashtable<TObject, TObject>(TJava.ToObject(anyType));
            Self.logUtil.putF(TJava.ToString(CLIENT_INFO) + hashtable.toString(), TJava.Box(Self), Self.commonStrings.GET);
            param.add(TJava.Box(hashtable));
            result_ := TJava.Box(xmlRpcClient_.executeWithCrypt(Self.getRemoteMethod(), param, cryptInterface_));
            Self.logUtil.putF(TJava.ToString(RESULT_) + result_.toString(), TJava.Box(Self), Self.commonStrings.GET);
            Self.isOnline := True;
            Exit(TJava.Box(result_));
        except
            on e: TIOException do begin
            Self.logUtil.putF((TRYING_OTHER_SERVERS) + (TExceptionUtil.getInstance().getStackTrace(e)), TJava.Box(Self), Self.commonStrings.GET);
            if not (e.Message.startsWith(HOST_NOT_RESOLVED)) then begin
                Exit(TJava.Box(Self.tryAnother(anyType)));
            end else begin
                raise SysUtils.Exception.Create(HOST_NOT_RESOLVED_MSG);
            end;
            end;
            on e: TXmlRpcException do begin
            Self.logUtil.put(SERVER_REPORTED_ERROR, TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            Exit(TJava.Box(Self.tryAnother(anyType)));
            end;
            on e: SysUtils.Exception do begin
            Self.logUtil.put(UNKNOWN_ERROR, TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            Exit(TJava.Box(Self.tryAnother(anyType)));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

