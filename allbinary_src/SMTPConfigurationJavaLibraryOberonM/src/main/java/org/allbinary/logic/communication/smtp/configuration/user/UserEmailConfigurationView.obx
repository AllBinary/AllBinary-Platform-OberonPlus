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
// package org.allbinary.logic.communication.smtp.configuration.user
unit UserEmailConfigurationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, CommonStrings, Document, Node, UserEmailConfigurationInterface;

type
  {AB:TYPES}
  TUserEmailConfigurationView = class(TInterfacedObject, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    userEmailConfigurationInterface: IUserEmailConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(node_: TNode); overload;
        constructor Create(userEmailConfigurationInterface_: IUserEmailConfigurationInterface); overload;
        function getEmailConfigurationInterface: IUserEmailConfigurationInterface; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  UserEmailConfiguration, UserEmailConfigurationMapping, UserEmailConfigurationData, DomSearchHelper, ModDomHelper, UserEmailEventsConfigurationData, UserEmailEventsConfigurationInterface, UserEmailEventsConfigurationView, NodeList;


{AB:CODE}

procedure TUserEmailConfigurationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TUserEmailConfigurationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserEmailConfigurationView.Create(node_: TNode);
var
  childNodeList: TNodeList;
  userEmailEventsConfigurationNode: TNode;
  userEmailEventsConfigurationView_: TUserEmailEventsConfigurationView;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.CONSTRUCTOR_, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.userEmailConfigurationInterface := (TJava.ToObject(TUserEmailConfiguration.Create()) as IUserEmailConfigurationInterface);
        childNodeList := node_.getChildNodes();
        userEmailEventsConfigurationNode := TDomSearchHelper.getNodeNoThrow(TUserEmailEventsConfigurationData.NAME, childNodeList);
        userEmailEventsConfigurationView_ := TUserEmailEventsConfigurationView.Create(userEmailEventsConfigurationNode);
        Self.userEmailConfigurationInterface.setUserEmailEventsConfigurationInterface(userEmailEventsConfigurationView_.getUserEmailEventsConfigurationInterface());
end;
    

constructor TUserEmailConfigurationView.Create(userEmailConfigurationInterface_: IUserEmailConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.userEmailConfigurationInterface := userEmailConfigurationInterface_;
end;
    

function TUserEmailConfigurationView.getEmailConfigurationInterface: IUserEmailConfigurationInterface;
begin
        Exit(Self.userEmailConfigurationInterface);
end;
    

// throws Exception
function TUserEmailConfigurationView.toXmlNode(document_: TDocument): TNode;
var
  emailConfigurationMapping: TUserEmailConfigurationMapping;
  hashMap_: TJavaHashMap<TObject, TObject>;
  node_: TNode;
  userEmailConfigurationInterface_: IUserEmailConfigurationInterface;
  userEmailEventsConfigurationInterface_: IUserEmailEventsConfigurationInterface;
  userEmailEventsConfigurationView_: TUserEmailEventsConfigurationView;
begin
        emailConfigurationMapping := TUserEmailConfigurationMapping.Create(Self.userEmailConfigurationInterface);
        hashMap_ := emailConfigurationMapping.toHashMap();
        node_ := TModDomHelper.createNameValueNodes(document_, TUserEmailConfigurationData.NAME, hashMap_);
        userEmailConfigurationInterface_ := Self.getEmailConfigurationInterface();
        userEmailEventsConfigurationInterface_ := userEmailConfigurationInterface_.getUserEmailEventsConfigurationInterface();
        userEmailEventsConfigurationView_ := TUserEmailEventsConfigurationView.Create(userEmailEventsConfigurationInterface_);
        node_.appendChild(userEmailEventsConfigurationView_.toXmlNode(document_));
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

