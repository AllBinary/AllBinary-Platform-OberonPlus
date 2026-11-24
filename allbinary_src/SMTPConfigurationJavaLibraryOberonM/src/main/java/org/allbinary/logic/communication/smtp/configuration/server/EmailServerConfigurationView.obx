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
// package org.allbinary.logic.communication.smtp.configuration.server
unit EmailServerConfigurationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, EmailServerConfigurationInterface;

type
  {AB:TYPES}
  TEmailServerConfigurationView = class(TInterfacedObject, IDomNodeInterface)
  public
    emailServerConfigurationInterface: IEmailServerConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(node_: TNode); overload;
        constructor Create(emailServerConfigurationInterface_: IEmailServerConfigurationInterface); overload;
        function getEmailConfigurationInterface: IEmailServerConfigurationInterface; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  EmailServerConfigurationData, EmailServerConfiguration, EmailServerConfigurationMapping, DomNodeHelper, ModDomHelper, NodeList;


{AB:CODE}

procedure TEmailServerConfigurationView.InitFields;
begin
  
end;

function TEmailServerConfigurationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TEmailServerConfigurationView.Create(node_: TNode);
var
  childNodeList: TNodeList;
  server: string;
  accountName: string;
  password: string;
begin
    inherited Create;
    InitFields;
        childNodeList := node_.getChildNodes();
        server := TDomNodeHelper.getTextNodeValue(TEmailServerConfigurationData.SERVER, childNodeList);
        accountName := TDomNodeHelper.getTextNodeValue(TEmailServerConfigurationData.ACCOUNT, childNodeList);
        password := TDomNodeHelper.getTextNodeValue(TEmailServerConfigurationData.PASSWORD, childNodeList);
        Self.emailServerConfigurationInterface := (TJava.ToObject(TEmailServerConfiguration.Create(accountName, password, server)) as IEmailServerConfigurationInterface);
end;
    

constructor TEmailServerConfigurationView.Create(emailServerConfigurationInterface_: IEmailServerConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.emailServerConfigurationInterface := emailServerConfigurationInterface_;
end;
    

function TEmailServerConfigurationView.getEmailConfigurationInterface: IEmailServerConfigurationInterface;
begin
        Exit(Self.emailServerConfigurationInterface);
end;
    

// throws Exception
function TEmailServerConfigurationView.toXmlNode(document_: TDocument): TNode;
var
  emailConfigurationMapping: TEmailServerConfigurationMapping;
  hashMap_: TJavaHashMap<TObject, TObject>;
  node_: TNode;
begin
        emailConfigurationMapping := TEmailServerConfigurationMapping.Create(Self.emailServerConfigurationInterface);
        hashMap_ := emailConfigurationMapping.toHashMap();
        node_ := TModDomHelper.createNodeWithValueNodes(document_, TEmailServerConfigurationData.NAME, hashMap_);
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

