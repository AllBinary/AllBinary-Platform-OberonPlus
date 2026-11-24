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
unit UserEmailEventsConfigurationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, CommonStrings, Document, Node, UserEmailEventsConfigurationInterface;

type
  {AB:TYPES}
  TUserEmailEventsConfigurationView = class(TInterfacedObject, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    userEmailEventsConfigurationInterface: IUserEmailEventsConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(node_: TNode); overload;
        constructor Create(userEmailEventsConfigurationInterface_: IUserEmailEventsConfigurationInterface); overload;
        function getUserEmailEventsConfigurationInterface: IUserEmailEventsConfigurationInterface; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  UserEmailEventsConfiguration, UserEmailEventConfigurationData, UserEmailEventConfigurationView, UserEmailEventsConfigurationMapping, UserEmailEventsConfigurationData, UserEmailEventConfigurationInterface, BasicArrayList, BasicArrayListD, DomSearchHelper, NodeList;


{AB:CODE}

procedure TUserEmailEventsConfigurationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TUserEmailEventsConfigurationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserEmailEventsConfigurationView.Create(node_: TNode);
var
  childNodeList: TNodeList;
  emailEventConfigurationNodeVector: TBasicArrayList;
  size: Integer;
  userEmailConfigurationNode: TNode;
  userEmailEventConfigurationView_: TUserEmailEventConfigurationView;
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.userEmailEventsConfigurationInterface := (TJava.ToObject(TUserEmailEventsConfiguration.Create()) as IUserEmailEventsConfigurationInterface);
        childNodeList := node_.getChildNodes();
        emailEventConfigurationNodeVector := TDomSearchHelper.getAllNodesNoThrow(TUserEmailEventConfigurationData.NAME, childNodeList);
        size := emailEventConfigurationNodeVector.size();
        for index := 0 to size - 1 do begin
            userEmailConfigurationNode := TNode(TJava.ToObject(emailEventConfigurationNodeVector.get(index)));
            userEmailEventConfigurationView_ := TUserEmailEventConfigurationView.Create(userEmailConfigurationNode);
            Self.userEmailEventsConfigurationInterface.addUserEmailEventConfiguration(userEmailEventConfigurationView_.getUserEmailEventConfigurationInterface());
        end;
end;
    

constructor TUserEmailEventsConfigurationView.Create(userEmailEventsConfigurationInterface_: IUserEmailEventsConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.userEmailEventsConfigurationInterface := userEmailEventsConfigurationInterface_;
end;
    

function TUserEmailEventsConfigurationView.getUserEmailEventsConfigurationInterface: IUserEmailEventsConfigurationInterface;
begin
        Exit(Self.userEmailEventsConfigurationInterface);
end;
    

// throws Exception
function TUserEmailEventsConfigurationView.toXmlNode(document_: TDocument): TNode;
var
  userEmailConfigurationMapping: TUserEmailEventsConfigurationMapping;
  node_: TNode;
  emailEventHashMap: TJavaHashMap<TObject, TObject>;
  set_: ISet;
  eventNameArray: TArray<TObject>;
  size: Integer;
  eventName: string;
  userEmailEventsConfigurationInterface_: IUserEmailEventConfigurationInterface;
  userEmailEventConfigurationView_: TUserEmailEventConfigurationView;
  index: Integer;
begin
        userEmailConfigurationMapping := TUserEmailEventsConfigurationMapping.Create(Self.userEmailEventsConfigurationInterface);
        node_ := document_.createElement(TUserEmailEventsConfigurationData.NAME);
        emailEventHashMap := Self.getUserEmailEventsConfigurationInterface().getEventConfigurationHashMap();
        set_ := emailEventHashMap.keySet();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF('Number Of Email Events Specified in file: ' + IntToStr(set_.size()), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        eventNameArray := set_.toArray();
        size := System.Length(eventNameArray);
        for index := 0 to size - 1 do begin
            eventName := TJava.UnboxString(TJava.ToObject(eventNameArray[index]));
            userEmailEventsConfigurationInterface_ := (TJava.ToObject(emailEventHashMap.get(TJava.Box(eventName))) as IUserEmailEventConfigurationInterface);
            userEmailEventConfigurationView_ := TUserEmailEventConfigurationView.Create(userEmailEventsConfigurationInterface_);
            node_.appendChild(userEmailEventConfigurationView_.toXmlNode(document_));
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

