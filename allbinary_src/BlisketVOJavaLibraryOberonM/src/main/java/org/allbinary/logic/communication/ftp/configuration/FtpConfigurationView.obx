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
// package org.allbinary.logic.communication.ftp.configuration
unit FtpConfigurationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, FtpConfigurationInterface;

type
  {AB:TYPES}
  TFtpConfigurationView = class(TInterfacedObject, IDomNodeInterface)
  public
    ftpConfigurationInterface: IFtpConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(node_: TNode); overload;
        constructor Create(ftpConfigurationInterface_: IFtpConfigurationInterface); overload;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function getFtpConfigurationInterface: IFtpConfigurationInterface; virtual;
        procedure setFtpConfigurationInterface(ftpConfigurationInterface_: IFtpConfigurationInterface); virtual;
  end;

implementation
uses
  FtpConfiguration, FtpConfigurationData, FtpConfigurationMapping, DomNodeHelper, ModDomHelper, NodeList;


{AB:CODE}

procedure TFtpConfigurationView.InitFields;
begin
  
end;

function TFtpConfigurationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TFtpConfigurationView.Create(node_: TNode);
var
  chileNodeList: TNodeList;
  server: string;
  userName: string;
  password: string;
  path: string;
begin
    inherited Create;
    InitFields;
        Self.setFtpConfigurationInterface((TJava.ToObject(TFtpConfiguration.Create()) as IFtpConfigurationInterface));
        chileNodeList := node_.getChildNodes();
        server := TDomNodeHelper.getTextNodeValue(TFtpConfigurationData.SERVER, chileNodeList);
        Self.getFtpConfigurationInterface().setServer(server);
        userName := TDomNodeHelper.getTextNodeValue(TFtpConfigurationData.USERNAME, chileNodeList);
        Self.getFtpConfigurationInterface().setUserName(userName);
        password := TDomNodeHelper.getTextNodeValue(TFtpConfigurationData.PASSWORD, chileNodeList);
        Self.getFtpConfigurationInterface().setPassword(password);
        path := TDomNodeHelper.getTextNodeValue(TFtpConfigurationData.PATH, chileNodeList);
        Self.getFtpConfigurationInterface().setPath(path);
end;
    

constructor TFtpConfigurationView.Create(ftpConfigurationInterface_: IFtpConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.setFtpConfigurationInterface(ftpConfigurationInterface_);
end;
    

// throws Exception
function TFtpConfigurationView.toXmlNode(document_: TDocument): TNode;
var
  ftpConfigurationMapping_: TFtpConfigurationMapping;
  hashMap_: TJavaHashMap<TObject, TObject>;
  node_: TNode;
begin
        ftpConfigurationMapping_ := TFtpConfigurationMapping.Create(Self.getFtpConfigurationInterface());
        hashMap_ := ftpConfigurationMapping_.toHashMap();
        node_ := TModDomHelper.createNameValueNodes(document_, TFtpConfigurationData.NAME, hashMap_);
        Exit(node_);
end;
    

function TFtpConfigurationView.getFtpConfigurationInterface: IFtpConfigurationInterface;
begin
        Exit(Self.ftpConfigurationInterface);
end;
    

procedure TFtpConfigurationView.setFtpConfigurationInterface(ftpConfigurationInterface_: IFtpConfigurationInterface);
begin
        Self.ftpConfigurationInterface := ftpConfigurationInterface_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

