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
// package org.allbinary.logic.system.security.licensing.client
unit XmlRpcAbeLicenseRetrievalClient;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CryptInterface, LogUtil, XmlRpcAbeClient, AbeClientInformationInterface;

type
  {AB:TYPES}
  TXmlRpcAbeLicenseRetrievalClient = class(TXmlRpcAbeClient)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(clientInfo: IAbeClientInformationInterface);
        function get(anyType: TObject; cryptInterface_: ICryptInterface): TObject; virtual;
  end;

implementation
uses
  StringUtil, BasicArrayList, BasicArrayListD, ExceptionUtil, StringMaker, AbeClientLicense, AbeLicenseInterface, CommonLabels, ABHashtable, XmlRpcClient, XmlRpcException;


{AB:CODE}

procedure TXmlRpcAbeLicenseRetrievalClient.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TXmlRpcAbeLicenseRetrievalClient.Create(clientInfo: IAbeClientInformationInterface);
begin
        inherited Create(clientInfo, 'LicServ.getLicense');
        InitFields;
end;
    

// throws Exception
function TXmlRpcAbeLicenseRetrievalClient.get(anyType: TObject; cryptInterface_: ICryptInterface): TObject;
var
  server: string;
  stringBuffer: TStringMaker;
  param: TBasicArrayList;
  xmlRpcClient_: TXmlRpcClient;
  hashtable: TABHashtable<TObject, TObject>;
  result_: TObject;
  resultHashtable: TABHashtable<TObject, TObject>;
  abeLicenseInterface_: IAbeLicenseInterface;
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
            xmlRpcClient_ := TXmlRpcClient.Create(server);
            Self.setClient(xmlRpcClient_);
            xmlRpcClient_.setBasicAuthentication(TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING);
            hashtable := Self.getClientInfo().toHashtable();
            Self.logUtil.putF(TJava.ToString(CLIENT_INFO) + hashtable.toString(), TJava.Box(Self), Self.commonStrings.GET);
            param.add(TJava.Box(hashtable));
            result_ := TJava.Box(xmlRpcClient_.executeWithCrypt(Self.getRemoteMethod(), param, cryptInterface_));
            Self.logUtil.putF(TJava.ToString(RESULT_) + result_.toString(), TJava.Box(Self), Self.commonStrings.GET);
            resultHashtable := TABHashtable<TObject, TObject>(TJava.ToObject(result_));
            if not (TAbeClientLicense.hasRequiredKeys(resultHashtable)) then begin
                Self.logUtil.putF(INVALID, TJava.Box(Self), Self.commonStrings.GET);
                Exit(TJava.Box(Self.tryAnother(anyType)));
            end;
            abeLicenseInterface_ := TAbeClientLicense.Create(resultHashtable);
            Self.logUtil.putF(TJava.ToString(Self.commonStrings.END_) + stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.GET);
            Self.isOnline := True;
            Exit(TJava.Box(abeLicenseInterface_));
        except
            on e: TIOException do begin
            Self.logUtil.put(EXCEPTION_IN_CLIENT, TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            Self.logUtil.putF((TRYING_OTHER_SERVERS) + (TExceptionUtil.getInstance().getStackTrace(e)), TJava.Box(Self), Self.commonStrings.GET);
            if not (e.Message.startsWith(HOST_NOT_RESOLVED)) then begin
                Exit(TJava.Box(Self.tryAnother(anyType)));
            end else begin
                Self.isOnline := False;
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

