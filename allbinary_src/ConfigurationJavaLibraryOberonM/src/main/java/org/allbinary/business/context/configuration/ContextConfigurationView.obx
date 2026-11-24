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
// package org.allbinary.business.context.configuration
unit ContextConfigurationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, ContextConfigurationInterface;

type
  {AB:TYPES}
  TContextConfigurationView = class(TInterfacedObject, IDomNodeInterface)
  public
    contextConfigurationInterface: IContextConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(node_: TNode); overload;
        constructor Create(contextConfigurationInterface_: IContextConfigurationInterface); overload;
        function getContextConfigurationInterface: IContextConfigurationInterface; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  ContextConfiguration, ContextConfigurationData, DomSearchHelper, EmailServerConfigurationData, EmailServerConfigurationInterface, EmailServerConfigurationView, NodeList;


{AB:CODE}

procedure TContextConfigurationView.InitFields;
begin
  
end;

function TContextConfigurationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TContextConfigurationView.Create(node_: TNode);
var
  childNodeList: TNodeList;
  emailConfigurationNode: TNode;
  emailServerConfigurationView_: TEmailServerConfigurationView;
begin
    inherited Create;
    InitFields;
        childNodeList := node_.getChildNodes();
        Self.contextConfigurationInterface := TContextConfiguration.Create();
        emailConfigurationNode := TDomSearchHelper.getNode(TEmailServerConfigurationData.NAME, childNodeList);
        emailServerConfigurationView_ := TEmailServerConfigurationView.Create(emailConfigurationNode);
        Self.contextConfigurationInterface.setEmailServerConfigurationInterface((TJava.ToObject(emailServerConfigurationView_.getEmailConfigurationInterface()) as IEmailServerConfigurationInterface));
end;
    

constructor TContextConfigurationView.Create(contextConfigurationInterface_: IContextConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.contextConfigurationInterface := contextConfigurationInterface_;
end;
    

function TContextConfigurationView.getContextConfigurationInterface: IContextConfigurationInterface;
begin
        Exit(Self.contextConfigurationInterface);
end;
    

// throws Exception
function TContextConfigurationView.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  emailServerConfigurationView_: TEmailServerConfigurationView;
begin
        node_ := document_.createElement(TContextConfigurationData.getInstance().NAME);
        emailServerConfigurationView_ := TEmailServerConfigurationView.Create(Self.getContextConfigurationInterface().getEmailServerConfigurationInterface());
        node_.appendChild(emailServerConfigurationView_.toXmlNode(document_));
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

