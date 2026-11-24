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
// package org.allbinary.input.automation.module.generic.configuration.profile.actions
unit GenericProfileActions;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, DomDocumentMappingInterface, DefaultListModelHelper, LogUtil, CommonDataFileStrings, AbPath, Document, Node, NodeList, GenericProfileActionsJPanel, GenericProfileAction;

type
  {AB:TYPES}
  TGenericProfileActions = class(TInterfacedObject, IDomNodeInterface, IDomDocumentMappingInterface)
  public
    logUtil: TLogUtil;
    commonFileStrings: TCommonDataFileStrings;
    name: string;
    genericProfileActionsJPanel: TGenericProfileActionsJPanel;
    actionsDefaultListModelHelper: TDefaultListModelHelper;
    hashMap: TJavaHashMap<TObject, TObject>;
    class var DEFAULT_PROFILE_ACTIONS_PATH: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(genericProfileActionsJPanel_: TGenericProfileActionsJPanel; name: string); overload;
        constructor Create(genericProfileActionsJPanel_: TGenericProfileActionsJPanel; abPath_: TAbPath; name: string); overload;
        constructor Create(genericProfileActionsJPanel_: TGenericProfileActionsJPanel; fileInputStream_: TFileInputStream; name: string); overload;
        procedure init(genericProfileActionsJPanel_: TGenericProfileActionsJPanel);
        procedure save; virtual;
        function getFile(name: string): TFile; virtual;
        procedure load;
        procedure fileInit(fileInputStream_: TFileInputStream);
        procedure initActions(nodeList_: TNodeList);
        function getDefaultListModelHelper: TDefaultListModelHelper; virtual;
        function getAction(string_: string): TGenericProfileAction; virtual;
        procedure add(name: string); virtual;
        procedure remove(name: string); virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function toXmlDoc: TDocument; virtual;
        function getGenericProfileActionsJPanel: TGenericProfileActionsJPanel; virtual;
        procedure setGenericProfileActionsJPanel(genericProfileActionsJPanel_: TGenericProfileActionsJPanel); virtual;
        function getHashMap: TJavaHashMap<TObject, TObject>; virtual;
        procedure setHashMap(hashMap_: TJavaHashMap<TObject, TObject>); virtual;
        function getName: string; virtual;
        procedure setName(name: string); virtual;
  end;

implementation
uses
  GenericProfileActionsData, GenericProfileActionData, DomDocumentHelper, XmlDocumentHelper, GenericProfiles, StdUtil;


{AB:CODE}

procedure TGenericProfileActions.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonFileStrings := TCommonDataFileStrings.getInstance();
  
  
  
  
end;

function TGenericProfileActions.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGenericProfileActions.Create(genericProfileActionsJPanel_: TGenericProfileActionsJPanel; name: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
        Self.init(genericProfileActionsJPanel_);
        Self.load();
end;
    

constructor TGenericProfileActions.Create(genericProfileActionsJPanel_: TGenericProfileActionsJPanel; abPath_: TAbPath; name: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
        Self.init(genericProfileActionsJPanel_);
        Self.load();
end;
    

constructor TGenericProfileActions.Create(genericProfileActionsJPanel_: TGenericProfileActionsJPanel; fileInputStream_: TFileInputStream; name: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
        Self.init(genericProfileActionsJPanel_);
        Self.fileInit(fileInputStream_);
end;
    

// throws Exception
procedure TGenericProfileActions.init(genericProfileActionsJPanel_: TGenericProfileActionsJPanel);
begin
        Self.setGenericProfileActionsJPanel(genericProfileActionsJPanel_);
        Self.actionsDefaultListModelHelper := TDefaultListModelHelper.Create();
        Self.setHashMap(TJavaHashMap<TObject, TObject>.Create());
end;
    

// throws Exception
procedure TGenericProfileActions.save;
var
  idFile: TFileOutputStream;
  idOutData: TDataOutputStream;
begin
        idFile := TFileOutputStream.Create(TJava.ToString(TGenericProfileActions.DEFAULT_PROFILE_ACTIONS_PATH) + Self.getName() + TJava.ToString(Self.commonFileStrings._XML));
        idOutData := TDataOutputStream.Create(idFile);
        idOutData.writeBytes(TXmlDocumentHelper.toString(Self.toXmlDoc()));
end;
    

function TGenericProfileActions.getFile(name: string): TFile;
var
  fileName: string;
begin
        fileName := TGenericProfileActions.DEFAULT_PROFILE_ACTIONS_PATH + name + TJava.ToString(Self.commonFileStrings._XML);
        Exit(TFile.Create(fileName));
end;
    

// throws Exception
procedure TGenericProfileActions.load;
var
  file_: TFile;
  idFile: TFileInputStream;
begin
        file_ := Self.getFile(Self.getName());
        if file_.isFile() then begin
            idFile := TFileInputStream.Create(file_);
            Self.fileInit(idFile);
        end else begin
            Self.logUtil.putF('No Profile: ' + TJava.ToString(file_.getAbsolutePath()), TJava.Box(Self), 'Contructor');
        end;
end;
    

// throws Exception
procedure TGenericProfileActions.fileInit(fileInputStream_: TFileInputStream);
var
  bytes: TArray<ShortInt>;
  length: Integer;
  data: string;
  endIndex: Integer;
  document_: TDocument;
  nameNodeList: TNodeList;
  node_: TNode;
  nodeList_: TNodeList;
  index: Integer;
begin
        bytes := TJava.NewArray<ShortInt>(100000);
        length := fileInputStream_.read(bytes);
        data := TJava.NewString(bytes);
        endIndex := (RPos(TJava.ToString('>'), data) - 1);
        document_ := TDomDocumentHelper.create_(Copy(data, (0) + 1, ((endIndex) + (1)) - (0)));
        nameNodeList := document_.getElementsByTagName(TGenericProfileActionsData.NAME);
        Self.logUtil.putF('Number Of Profiles Specified: ' + TJava.ToString(nameNodeList.getLength()), TJava.Box(Self), 'Contructor');
        for index := 0 to nameNodeList.getLength() - 1 do begin
            node_ := nameNodeList.item(index);
            nodeList_ := node_.getChildNodes();
            if (nodeList_) <> (nil) then begin
                Self.initActions(nodeList_);
            end else begin
                raise SysUtils.Exception.Create(TJava.ToString(TGenericProfileActionData.NAME) + ' Name Node Node Children');
            end;
        end;
        Self.logUtil.putF('Loaded: ' + IntToStr(Self.getHashMap().size()) + ' Configuration Profile Action(s)', TJava.Box(Self), 'Contructor');
        Self.getDefaultListModelHelper().initDefaultModelList();
end;
    

// throws Exception
procedure TGenericProfileActions.initActions(nodeList_: TNodeList);
var
  actionNode: TNode;
  genericConfigurationProfileAction: TGenericProfileAction;
  index: Integer;
begin
        for index := 0 to nodeList_.getLength() - 1 do begin
            actionNode := nodeList_.item(index);
            if (actionNode) <> (nil) then begin
                genericConfigurationProfileAction := TGenericProfileAction.Create(Self.getGenericProfileActionsJPanel().getGenericProfileActionJPanel(), actionNode);
                Self.getHashMap().put(genericConfigurationProfileAction.getName(), genericConfigurationProfileAction);
                Self.getDefaultListModelHelper().add(TJava.BoxString(genericConfigurationProfileAction.getName()));
            end else begin
                raise SysUtils.Exception.Create(TJava.ToString(TGenericProfileActionData.NAME) + ' Node Null');
            end;
        end;
end;
    

function TGenericProfileActions.getDefaultListModelHelper: TDefaultListModelHelper;
begin
        Exit(Self.actionsDefaultListModelHelper);
end;
    

function TGenericProfileActions.getAction(string_: string): TGenericProfileAction;
begin
        Exit(TGenericProfileAction(TJava.ToObject(Self.getHashMap().get(string_))));
end;
    

// throws Exception
procedure TGenericProfileActions.add(name: string);
var
  genericProfileAction_: TGenericProfileAction;
begin
        genericProfileAction_ := TGenericProfileAction.Create(name);
        Self.getHashMap().put(genericProfileAction_.getName(), genericProfileAction_);
        Self.getDefaultListModelHelper().add(TJava.BoxString(genericProfileAction_.getName()));
        Self.getDefaultListModelHelper().initDefaultModelList();
        Self.save();
end;
    

// throws Exception
procedure TGenericProfileActions.remove(name: string);
begin
        Self.getHashMap().remove(name);
        Self.getDefaultListModelHelper().remove(name);
        Self.getDefaultListModelHelper().initDefaultModelList();
        Self.save();
end;
    

function TGenericProfileActions.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        Self.logUtil.putF('HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'toHashMap()');
        Exit(hashMap_);
end;
    

// throws Exception
function TGenericProfileActions.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  set_: ISet;
  actionNameArray: TArray<TObject>;
  size: Integer;
  nextActionName: string;
  nextGenericProfileAction: TGenericProfileAction;
  index: Integer;
begin
        node_ := document_.createElement(TGenericProfileActionsData.NAME);
        set_ := Self.getHashMap().keySet();
        actionNameArray := set_.toArray();
        size := System.Length(actionNameArray);
        for index := 0 to size - 1 do begin
            nextActionName := TJava.UnboxString(TJava.ToObject(actionNameArray[index]));
            nextGenericProfileAction := TGenericProfileAction(TJava.ToObject(Self.getAction(nextActionName)));
            node_.appendChild(nextGenericProfileAction.toXmlNode(document_));
        end;
        Exit(node_);
end;
    

// throws Exception
function TGenericProfileActions.toXmlDoc: TDocument;
var
  document_: TDocument;
  node_: TNode;
begin
        document_ := TDomDocumentHelper.create_();
        node_ := Self.toXmlNode(document_);
        document_.appendChild(node_);
        Exit(document_);
end;
    

function TGenericProfileActions.getGenericProfileActionsJPanel: TGenericProfileActionsJPanel;
begin
        Exit(Self.genericProfileActionsJPanel);
end;
    

procedure TGenericProfileActions.setGenericProfileActionsJPanel(genericProfileActionsJPanel_: TGenericProfileActionsJPanel);
begin
        Self.genericProfileActionsJPanel := genericProfileActionsJPanel_;
end;
    

function TGenericProfileActions.getHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.hashMap);
end;
    

procedure TGenericProfileActions.setHashMap(hashMap_: TJavaHashMap<TObject, TObject>);
begin
        Self.hashMap := hashMap_;
end;
    

function TGenericProfileActions.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TGenericProfileActions.setName(name: string);
begin
        Self.name := name;
end;

initialization
  {AB:INITIALIZATION}
  TGenericProfileActions.DEFAULT_PROFILE_ACTIONS_PATH := TJava.ToString(TGenericProfiles.DEFAULT_PROFILES_PATH) + 'actions/';
  {AB:END}

end.

