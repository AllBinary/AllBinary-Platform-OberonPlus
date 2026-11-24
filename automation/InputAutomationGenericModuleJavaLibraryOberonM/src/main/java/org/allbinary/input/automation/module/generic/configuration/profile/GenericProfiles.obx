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
// package org.allbinary.input.automation.module.generic.configuration.profile
unit GenericProfiles;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, DomDocumentMappingInterface, DefaultListModelHelper, LogUtil, Document, Node, GenericProfile;

type
  {AB:TYPES}
  TGenericProfiles = class(TInterfacedObject, IDomNodeInterface, IDomDocumentMappingInterface)
  public
    logUtil: TLogUtil;
    hashMap: TJavaHashMap<TObject, TObject>;
    profilesDefaultListModelHelper: TDefaultListModelHelper;
    fileName: string;
    class var DEFAULT_PROFILES_PATH: string;
    class var DEFAULT_PROFILE_ACTIONS_PATH: string;
    class var DEFAULT_FILE: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(fileName: string);
        procedure initProfiles(node_: TNode);
        function getDefaultListModelHelper: TDefaultListModelHelper; virtual;
        function get(name: string): TGenericProfile; virtual;
        procedure add(name: string); virtual;
        procedure remove(name: string); virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function toXmlDoc: TDocument; virtual;
        procedure save; virtual;
  end;

implementation
uses
  GenericProfilesData, GenericProfileData, DomDocumentHelper, XmlDocumentHelper, GenericProfileActionData, StdUtil, CommonStrings, NodeList;


{AB:CODE}

procedure TGenericProfiles.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;

function TGenericProfiles.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGenericProfiles.Create(fileName: string);
var
  bytes: TArray<ShortInt>;
  idFile: TFileInputStream;
  length: Integer;
  data: string;
  endIndex: Integer;
  document_: TDocument;
  nodeList_: TNodeList;
begin
    inherited Create;
    InitFields;
        Self.fileName := fileName;
        Self.profilesDefaultListModelHelper := TDefaultListModelHelper.Create();
        Self.hashMap := TStdUtil.getInstance().createHashMap();
        if TFile.Create(fileName).isFile() then begin
            bytes := TJava.NewArray<ShortInt>(100000);
            idFile := TFileInputStream.Create(fileName);
            length := idFile.read(bytes);
            data := TJava.NewString(bytes);
            endIndex := (RPos(TJava.ToString('>'), data) - 1);
            document_ := TDomDocumentHelper.create_(Copy(data, (0) + 1, ((endIndex) + (1)) - (0)));
            nodeList_ := document_.getElementsByTagName(TGenericProfilesData.NAME);
            Self.logUtil.putF('Number Of Profiles Specified: ' + TJava.ToString(nodeList_.getLength()), TJava.Box(Self), 'Contructor');
            if (nodeList_) <> (nil) then begin
                Self.initProfiles(nodeList_.item(0));
            end else begin
                raise SysUtils.Exception.Create(TJava.ToString(TGenericProfileActionData.NAME) + ' Name Node Node Children');
            end;
            Self.logUtil.putF('Loaded: ' + IntToStr(Self.hashMap.size()) + ' Configuration Profile Actions', TJava.Box(Self), 'Contructor');
        end else begin
            Self.logUtil.putF('No Generic Profile: ' + fileName, TJava.Box(Self), 'Contructor');
        end;
        Self.getDefaultListModelHelper().initDefaultModelList();
end;
    

// throws Exception
procedure TGenericProfiles.initProfiles(node_: TNode);
var
  nodeList_: TNodeList;
  profileNameNode: TNode;
  genericProfile_: TGenericProfile;
  index: Integer;
begin
        nodeList_ := node_.getChildNodes();
        for index := 0 to nodeList_.getLength() - 1 do begin
            profileNameNode := nodeList_.item(index);
            if (profileNameNode.getNodeName().compareTo(TGenericProfileData.NAME)) = (0) then begin
                genericProfile_ := TGenericProfile.Create(profileNameNode);
                Self.hashMap.put(TJava.Box(genericProfile_.getName()), TJava.Box(genericProfile_));
                Self.getDefaultListModelHelper().add(TJava.BoxString(genericProfile_.getName()));
            end;
        end;
end;
    

function TGenericProfiles.getDefaultListModelHelper: TDefaultListModelHelper;
begin
        Exit(Self.profilesDefaultListModelHelper);
end;
    

// throws Exception
function TGenericProfiles.get(name: string): TGenericProfile;
var
  genericProfile_: TGenericProfile;
  commonStrings_: TCommonStrings;
begin
        genericProfile_ := TGenericProfile(TJava.ToObject(Self.hashMap.get(TJava.Box(name))));
        if (genericProfile_) = (nil) then begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF('No Generic Profile Named: ' + name + ' availability was: ' + TJava.ToString(Self.hashMap), TJava.Box(Self), commonStrings_.GET);
        end;
        Exit(genericProfile_);
end;
    

// throws Exception
procedure TGenericProfiles.add(name: string);
begin
        Self.hashMap.put(TJava.Box(name), TJava.Box(TGenericProfile.Create(name)));
        Self.getDefaultListModelHelper().add(TJava.BoxString(name));
        Self.getDefaultListModelHelper().initDefaultModelList();
        Self.save();
end;
    

// throws Exception
procedure TGenericProfiles.remove(name: string);
begin
        Self.hashMap.remove(TJava.Box(name));
        Self.getDefaultListModelHelper().remove(name);
        Self.getDefaultListModelHelper().initDefaultModelList();
        Self.save();
end;
    

// throws Exception
function TGenericProfiles.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  set_: ISet;
  nameArray: TArray<TObject>;
  size: Integer;
  genericProfile_: TGenericProfile;
  index: Integer;
begin
        node_ := document_.createElement(TGenericProfilesData.NAME);
        set_ := Self.hashMap.keySet();
        nameArray := set_.toArray();
        size := System.Length(nameArray);
        for index := 0 to size - 1 do begin
            genericProfile_ := TGenericProfile(TJava.ToObject(Self.hashMap.get(TJava.Box(TJava.UnboxString(TJava.ToObject(nameArray[index]))))));
            node_.appendChild(genericProfile_.toXmlNode(document_));
        end;
        Exit(node_);
end;
    

// throws Exception
function TGenericProfiles.toXmlDoc: TDocument;
var
  document_: TDocument;
  node_: TNode;
begin
        document_ := TDomDocumentHelper.create_();
        node_ := Self.toXmlNode(document_);
        document_.appendChild(node_);
        Exit(document_);
end;
    

// throws Exception
procedure TGenericProfiles.save;
var
  idFile: TFileOutputStream;
  idOutData: TDataOutputStream;
  documentString: string;
begin
        idFile := TFileOutputStream.Create(Self.fileName);
        idOutData := TDataOutputStream.Create(idFile);
        documentString := TXmlDocumentHelper.toString(Self.toXmlDoc());
        idOutData.writeBytes(documentString);
end;

initialization
  {AB:INITIALIZATION}
  TGenericProfiles.DEFAULT_PROFILES_PATH := './modules/configs/profiles/';
  TGenericProfiles.DEFAULT_PROFILE_ACTIONS_PATH := TJava.ToString(TGenericProfiles.DEFAULT_PROFILES_PATH) + 'actions/';
  TGenericProfiles.DEFAULT_FILE := TJava.ToString(TGenericProfiles.DEFAULT_PROFILES_PATH) + 'profiles.xml';
  {AB:END}

end.

