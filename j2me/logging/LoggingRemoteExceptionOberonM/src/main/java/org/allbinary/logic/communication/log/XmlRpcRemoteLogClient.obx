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
// package org.allbinary.logic.communication.log
unit XmlRpcRemoteLogClient;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, XmlRpcAbeClient, NoCrypt, AbeClientInformationInterface;

type
  {AB:TYPES}
  TXmlRpcRemoteLogClient = class(TXmlRpcAbeClient)
  public
    noCrypt: TNoCrypt;
    procedure InitFields;
        constructor Create(clientInfo: IAbeClientInformationInterface);
        function get(anyType: TObject): TObject; virtual;
  end;

implementation
uses
  StringUtil, XmlRpcClient, XmlRpcException, BasicArrayList, BasicArrayListD, CommonLabels, CommonSeps, ABHashtable;


{AB:CODE}

procedure TXmlRpcRemoteLogClient.InitFields;
begin
  Self.noCrypt := TNoCrypt.Create();
end;
    

constructor TXmlRpcRemoteLogClient.Create(clientInfo: IAbeClientInformationInterface);
begin
        inherited Create(clientInfo, 'SSLLogServ.logUtil');
        InitFields;
end;
    

// throws Exception
function TXmlRpcRemoteLogClient.get(anyType: TObject): TObject;
var
  param: TBasicArrayList;
  serverUrl: string;
  index: Integer;
  xmlRpcClient_: TXmlRpcClient;
  hashtable: TABHashtable<TObject, TObject>;
  result_: TObject;
begin
        try
            param := TBasicArrayListD.Create();
            serverUrl := Self.getClientInfo().getLicenseServer(Self.getServer());
            index := (RPos(TJava.ToString('/'), serverUrl) - 1);
            serverUrl := Copy(serverUrl, (0) + 1, ((index) + (1)) - (0)) + 'logservssl.php';
            xmlRpcClient_ := TXmlRpcClient.Create(serverUrl);
            Self.setClient(xmlRpcClient_);
            xmlRpcClient_.setBasicAuthentication(TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING);
            hashtable := TABHashtable<TObject, TObject>(TJava.ToObject(anyType));
            param.add(TJava.Box(hashtable));
            result_ := TJava.Box(xmlRpcClient_.executeWithCrypt(Self.getRemoteMethod(), param, Self.noCrypt));
            WriteLn(TJava.ToString((TCommonLabels.getInstance().RESULT_) + (TCommonSeps.getInstance().NEW_LINE)) + result_.toString());
            Exit(TJava.Box(result_));
        except
            on e: TIOException do begin
            WriteLn('IOException Trying Other Servers');
            if not (e.Message.startsWith(HOST_NOT_RESOLVED)) then begin
                Exit(TJava.Box(Self.tryAnother(anyType)));
            end else begin
                raise SysUtils.Exception.Create(HOST_NOT_RESOLVED_MSG);
            end;
            end;
            on e: TXmlRpcException do begin
            Exit(TJava.Box(Self.tryAnother(anyType)));
            end;
            on e: SysUtils.Exception do begin
            Exit(TJava.Box(Self.tryAnother(anyType)));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

