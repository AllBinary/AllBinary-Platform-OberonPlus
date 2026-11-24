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
// package org.allbinary.business.user.modules.configuration
unit UserConfigurationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, UserConfigurationInterface;

type
  {AB:TYPES}
  TUserConfigurationView = class(TInterfacedObject, IDomNodeInterface)
  public
    userConfigurationInterface: IUserConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(node_: TNode); overload;
        constructor Create(userConfigurationInterface_: IUserConfigurationInterface); overload;
        function getUserConfigurationInterface: IUserConfigurationInterface; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  UserConfiguration, UserConfigurationData, EntryData, TimeCreatedView, TimeLastModifiedView, DomSearchHelper, UserEmailConfigurationData, UserEmailConfigurationInterface, UserEmailConfigurationView, NodeList;


{AB:CODE}

procedure TUserConfigurationView.InitFields;
begin
  
end;

function TUserConfigurationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserConfigurationView.Create(node_: TNode);
var
  childNodeList: TNodeList;
  emailConfigurationNode: TNode;
  userEmailConfigurationView_: TUserEmailConfigurationView;
  userEmailConfigurationInterface_: IUserEmailConfigurationInterface;
  timeCreatedNode: TNode;
  timeCreatedView_: TTimeCreatedView;
  timeLastModifiedNode: TNode;
  timeLastModifiedView_: TTimeLastModifiedView;
begin
    inherited Create;
    InitFields;
        Self.userConfigurationInterface := (TJava.ToObject(TUserConfiguration.Create()) as IUserConfigurationInterface);
        childNodeList := node_.getChildNodes();
        emailConfigurationNode := TDomSearchHelper.getNode(TUserEmailConfigurationData.NAME, childNodeList);
        userEmailConfigurationView_ := TUserEmailConfigurationView.Create(emailConfigurationNode);
        userEmailConfigurationInterface_ := (TJava.ToObject(userEmailConfigurationView_.getEmailConfigurationInterface()) as IUserEmailConfigurationInterface);
        Self.userConfigurationInterface.setUserEmailConfigurationInterface(userEmailConfigurationInterface_);
        timeCreatedNode := TDomSearchHelper.getNode(TEntryData.getInstance().TIMECREATED, childNodeList);
        timeCreatedView_ := TTimeCreatedView.Create(timeCreatedNode);
        Self.userConfigurationInterface.setTimeCreated(timeCreatedView_.getTimeCreated());
        timeLastModifiedNode := TDomSearchHelper.getNode(TEntryData.getInstance().LASTMODIFIED, childNodeList);
        timeLastModifiedView_ := TTimeLastModifiedView.Create(timeLastModifiedNode);
        Self.userConfigurationInterface.setTimeLastModified(timeLastModifiedView_.getTimeLastModified());
end;
    

constructor TUserConfigurationView.Create(userConfigurationInterface_: IUserConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.userConfigurationInterface := userConfigurationInterface_;
end;
    

function TUserConfigurationView.getUserConfigurationInterface: IUserConfigurationInterface;
begin
        Exit(Self.userConfigurationInterface);
end;
    

// throws Exception
function TUserConfigurationView.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  userEmailConfigurationView_: TUserEmailConfigurationView;
  timeCreatedView_: TTimeCreatedView;
  timeLastModifiedView_: TTimeLastModifiedView;
begin
        node_ := document_.createElement(TUserConfigurationData.NAME);
        userEmailConfigurationView_ := TUserEmailConfigurationView.Create(Self.userConfigurationInterface.getUserEmailConfigurationInterface());
        node_.appendChild(userEmailConfigurationView_.toXmlNode(document_));
        timeCreatedView_ := TTimeCreatedView.Create(Self.userConfigurationInterface.getTimeCreated());
        node_.appendChild(timeCreatedView_.toXmlNode(document_));
        timeLastModifiedView_ := TTimeLastModifiedView.Create(Self.userConfigurationInterface.getTimeLastModified());
        node_.appendChild(timeLastModifiedView_.toXmlNode(document_));
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

