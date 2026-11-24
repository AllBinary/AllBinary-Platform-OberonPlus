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
// package org.allbinary.logic.communication.xmlrpc
unit XmlRpcAbeClient;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MyRandomFactory, LogUtil, AbeClientInformationInterface, CommonStrings, XmlRpcClient, XmlRpcHandler;

type
  {AB:TYPES}
  TXmlRpcAbeClient = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    remoteMethod: string;
    clientInfo: IAbeClientInformationInterface;
    client: IXmlRpcHandler;
    server: Integer;
    start: Integer;
    maxServers: Integer;
    isDone: Boolean;
    START_SERVER: string;
    TRYING: string;
    SEP: string;
    CLIENT_INFO: string;
    RESULT_: string;
    INVALID: string;
    EXCEPTION_IN_CLIENT: string;
    SERVER_REPORTED_ERROR: string;
    UNKNOWN_ERROR: string;
    TRYING_OTHER_SERVERS: string;
    HOST_NOT_RESOLVED_MSG: string;
    HOST_NOT_RESOLVED: string;
    myRandomFactory: TMyRandomFactory;
    class var isOnline: Boolean;
    procedure InitFields;
        constructor Create(clientInfo: IAbeClientInformationInterface; remoteMethod: string);
        function get(anyType: TObject): TObject; virtual;
        function tryAnother(anyType: TObject): TObject; virtual;
        function getClientInfo: IAbeClientInformationInterface; virtual;
        function getClient: IXmlRpcHandler; virtual;
        procedure setClient(client: TXmlRpcClient); virtual;
        function getServer: Integer; virtual;
        procedure setServer(server: Integer); virtual;
        function getStart: Integer; virtual;
        procedure setStart(start: Integer); virtual;
        function getMaxServers: Integer; virtual;
        procedure setMaxServers(maxServers: Integer); virtual;
        function isIsDone: Boolean; virtual;
        procedure setIsDone(isDone: Boolean); virtual;
        function getRemoteMethod: string; virtual;
  end;

implementation
uses
  NullUtil, ForcedLogUtil, StringMaker, CommonLabels, CommonSeps, NullXmlRpcHandler;


{AB:CODE}

procedure TXmlRpcAbeClient.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  Self.client := TNullXmlRpcHandler.NULL_XML_RPC_HANDLER;
  
  
  
  
  Self.START_SERVER := 'Start With Server #';
  Self.TRYING := 'Trying Server #';
  Self.SEP := TCommonLabels.getInstance().COLON_SEP;
  Self.CLIENT_INFO := 'Client Info: '#10'';
  Self.RESULT_ := (TCommonLabels.getInstance().RESULT_) + (TCommonSeps.getInstance().NEW_LINE);
  Self.INVALID := 'License data is Invalid Trying Other Servers';
  Self.EXCEPTION_IN_CLIENT := 'Exception in client';
  Self.SERVER_REPORTED_ERROR := 'Server reported error';
  Self.UNKNOWN_ERROR := 'Unknown License Retrieval Failure';
  Self.TRYING_OTHER_SERVERS := 'IOException Trying Other Servers';
  Self.HOST_NOT_RESOLVED_MSG := 'Not Trying Again Since Host Unresolved';
  Self.HOST_NOT_RESOLVED := 'Host is unresolved';
  Self.myRandomFactory := TMyRandomFactory.getInstance();
end;
    

constructor TXmlRpcAbeClient.Create(clientInfo: IAbeClientInformationInterface; remoteMethod: string);
var
  stringBuffer: TStringMaker;
begin
    inherited Create;
    InitFields;
        Self.remoteMethod := remoteMethod;
        Self.clientInfo := clientInfo;
        if (clientInfo.getNumberOfLicenseServers()) > (1) then begin
            Self.maxServers := (clientInfo.getNumberOfLicenseServers()) - (2);
            Self.start := (Self.myRandomFactory.getAbsoluteNextInt(Self.maxServers)) + (1);
        end else if (clientInfo.getNumberOfLicenseServers()) = (1) then begin
            Self.maxServers := 0;
            Self.start := 0;
        end;
        Self.isDone := False;
        Self.server := Self.start;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.START_SERVER);
        stringBuffer.appendint(Self.getServer());
        stringBuffer.append(Self.SEP);
        stringBuffer.append(clientInfo.getLicenseServer(Self.getServer()));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
end;
    

// throws Exception
function TXmlRpcAbeClient.get(anyType: TObject): TObject;
begin
        TForcedLogUtil.log(Self.commonStrings.NOT_IMPLEMENTED, TJava.Box(Self));
        Exit(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
end;
    

// throws Exception
function TXmlRpcAbeClient.tryAnother(anyType: TObject): TObject;
begin
        if (Self.getServer()) < (Self.getMaxServers()) then begin
            Self.setServer((Self.getServer()) + (1));
        end else begin
            Self.setServer(0);
        end;
        if ((Self.getServer()) <> (Self.getStart())) and (not (Self.isIsDone())) then begin
            Exit(TJava.Box(Self.get(anyType)));
        end else begin
            Self.setIsDone(True);
        end;
        raise SysUtils.Exception.Create('Tried All Servers But Still Failed');
end;
    

function TXmlRpcAbeClient.getClientInfo: IAbeClientInformationInterface;
begin
        Exit(Self.clientInfo);
end;
    

function TXmlRpcAbeClient.getClient: IXmlRpcHandler;
begin
        Exit(Self.client);
end;
    

procedure TXmlRpcAbeClient.setClient(client: TXmlRpcClient);
begin
        Self.client := client;
end;
    

function TXmlRpcAbeClient.getServer: Integer;
begin
        Exit(Self.server);
end;
    

procedure TXmlRpcAbeClient.setServer(server: Integer);
begin
        Self.server := server;
end;
    

function TXmlRpcAbeClient.getStart: Integer;
begin
        Exit(Self.start);
end;
    

procedure TXmlRpcAbeClient.setStart(start: Integer);
begin
        Self.start := start;
end;
    

function TXmlRpcAbeClient.getMaxServers: Integer;
begin
        Exit(Self.maxServers);
end;
    

procedure TXmlRpcAbeClient.setMaxServers(maxServers: Integer);
begin
        Self.maxServers := maxServers;
end;
    

function TXmlRpcAbeClient.isIsDone: Boolean;
begin
        Exit(Self.isDone);
end;
    

procedure TXmlRpcAbeClient.setIsDone(isDone: Boolean);
begin
        Self.isDone := isDone;
end;
    

function TXmlRpcAbeClient.getRemoteMethod: string;
begin
        Exit(Self.remoteMethod);
end;

initialization
  {AB:INITIALIZATION}
  TXmlRpcAbeClient.isOnline := True;
  {AB:END}

end.

