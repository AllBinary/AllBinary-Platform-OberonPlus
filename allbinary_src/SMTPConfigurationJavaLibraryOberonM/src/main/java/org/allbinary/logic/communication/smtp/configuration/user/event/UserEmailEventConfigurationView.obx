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
// package org.allbinary.logic.communication.smtp.configuration.user.event
unit UserEmailEventConfigurationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, UserEmailEventConfigurationInterface;

type
  {AB:TYPES}
  TUserEmailEventConfigurationView = class(TInterfacedObject, IDomNodeInterface)
  public
    userEmailEventConfigurationInterface: IUserEmailEventConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(node_: TNode); overload;
        constructor Create(userEmailEventConfigurationInterface_: IUserEmailEventConfigurationInterface); overload;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function getUserEmailEventConfigurationInterface: IUserEmailEventConfigurationInterface; virtual;
        procedure setUserEmailEventConfigurationInterface(userEmailEventConfigurationInterface_: IUserEmailEventConfigurationInterface); virtual;
  end;

implementation
uses
  UserEmailEventConfigurationData, UserEmailEventConfiguration, UserEmailEventConfigurationMapping, DomNodeHelper, ModDomHelper, StdUtil, NodeList;


{AB:CODE}

procedure TUserEmailEventConfigurationView.InitFields;
begin
  
end;

function TUserEmailEventConfigurationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserEmailEventConfigurationView.Create(node_: TNode);
var
  childNodeList: TNodeList;
  hashMap_: TJavaHashMap<TObject, TObject>;
  name: string;
  eventListenerClassPath: string;
begin
    inherited Create;
    InitFields;
        childNodeList := node_.getChildNodes();
        hashMap_ := TStdUtil.getInstance().createHashMap();
        name := TDomNodeHelper.getTextNodeValue(TUserEmailEventConfigurationData.NAME, childNodeList);
        hashMap_.put(TJava.Box(TUserEmailEventConfigurationData.NAME), TJava.Box(name));
        eventListenerClassPath := TDomNodeHelper.getTextNodeValue(TUserEmailEventConfigurationData.LISTENER_CLASSPATH, childNodeList);
        hashMap_.put(TJava.Box(TUserEmailEventConfigurationData.LISTENER_CLASSPATH), TJava.Box(eventListenerClassPath));
        Self.setUserEmailEventConfigurationInterface((TJava.ToObject(TUserEmailEventConfiguration.Create(hashMap_)) as IUserEmailEventConfigurationInterface));
end;
    

constructor TUserEmailEventConfigurationView.Create(userEmailEventConfigurationInterface_: IUserEmailEventConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.setUserEmailEventConfigurationInterface(userEmailEventConfigurationInterface_);
end;
    

// throws Exception
function TUserEmailEventConfigurationView.toXmlNode(document_: TDocument): TNode;
var
  userEmailEventConfigurationMapping_: TUserEmailEventConfigurationMapping;
  hashMap_: TJavaHashMap<TObject, TObject>;
  node_: TNode;
begin
        userEmailEventConfigurationMapping_ := TUserEmailEventConfigurationMapping.Create(Self.getUserEmailEventConfigurationInterface());
        hashMap_ := userEmailEventConfigurationMapping_.toHashMap();
        node_ := TModDomHelper.createNameValueNodes(document_, TUserEmailEventConfigurationData.NAME, hashMap_);
        Exit(node_);
end;
    

function TUserEmailEventConfigurationView.getUserEmailEventConfigurationInterface: IUserEmailEventConfigurationInterface;
begin
        Exit(Self.userEmailEventConfigurationInterface);
end;
    

procedure TUserEmailEventConfigurationView.setUserEmailEventConfigurationInterface(userEmailEventConfigurationInterface_: IUserEmailEventConfigurationInterface);
begin
        Self.userEmailEventConfigurationInterface := userEmailEventConfigurationInterface_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

