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
// package org.allbinary.logic.control.workflow.request
unit BasicWorkFlow;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, CommonStrings, Document, Node;

type
  {AB:TYPES}
  TBasicWorkFlow = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    workFlowDoc: TDocument;
    workFlowName: string;
    storeName: string;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function getName: string; virtual;
        function getStoreName: string; virtual;
        function getKey: TObject; virtual;
        function toVector: TBasicArrayList; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function toXmlDoc: TDocument; virtual;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  BasicArrayListD, StoreFrontData, EntryData, ModDomHelper, DomDocumentHelper, XmlDocumentHelper, StdUtil, RequestParams, WeblisketSession, WorkFlowData, StringMaker, StringUtil;


{AB:CODE}

procedure TBasicWorkFlow.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
end;
    

constructor TBasicWorkFlow.Create;
var
  workFlowNode: TNode;
begin
    inherited Create;
    InitFields;
        Self.workFlowName := TStringUtil.getInstance().EMPTY_STRING;
        Self.workFlowDoc := TDomDocumentHelper.create_();
        workFlowNode := Self.workFlowDoc.createElement(TWorkFlowData.getInstance().WORKFLOW);
        Self.workFlowDoc.appendChild(workFlowNode);
end;
    

constructor TBasicWorkFlow.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
var
  weblisketSession_: TWeblisketSession;
  requestHashMap: TJavaHashMap<TObject, TObject>;
begin
    inherited Create;
    InitFields;
        weblisketSession_ := TWeblisketSession.Create(hashMap_, pageContext_);
        Self.storeName := weblisketSession_.getStoreName();
        requestHashMap := TRequestParams.Create(pageContext_).toHashMap();
        Self.workFlowName := TJava.UnboxString(TJava.ToObject(requestHashMap.get(TJava.Box(TWorkFlowData.getInstance().NAME))));
        Self.workFlowDoc := TDomDocumentHelper.create_(TJava.UnboxString(TJava.ToObject(requestHashMap.get(TJava.Box(TWorkFlowData.getInstance().DATA)))));
end;
    

constructor TBasicWorkFlow.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.workFlowName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TWorkFlowData.getInstance().NAME))));
        Self.storeName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TStoreFrontData.getInstance().NAME))));
        Self.workFlowDoc := TDomDocumentHelper.create_(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TWorkFlowData.getInstance().DATA)))));
end;
    

function TBasicWorkFlow.getName: string;
begin
        Exit(Self.workFlowName);
end;
    

function TBasicWorkFlow.getStoreName: string;
begin
        Exit(Self.storeName);
end;
    

function TBasicWorkFlow.getKey: TObject;
begin
        Exit(TJava.Box(TJava.Box(Self.getName())));
end;
    

// throws Exception
function TBasicWorkFlow.toVector: TBasicArrayList;
var
  values: TBasicArrayList;
  calendar: TCalendar;
  time: string;
begin
        values := TBasicArrayListD.Create();
        values.add(TJava.Box(Self.workFlowName));
        values.add(TJava.Box(Self.storeName));
        values.add(TJava.Box(TXmlDocumentHelper.toString(Self.workFlowDoc)));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        values.add(TJava.Box(time));
        values.add(TJava.Box(time));
        Exit(values);
end;
    

// throws Exception
function TBasicWorkFlow.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  calendar: TCalendar;
  time: string;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TWorkFlowData.getInstance().NAME), TJava.Box(Self.workFlowName));
        hashMap_.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(Self.storeName));
        hashMap_.put(TJava.Box(TWorkFlowData.getInstance().DATA), TJava.Box(TXmlDocumentHelper.toString(Self.workFlowDoc)));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        hashMap_.put(TJava.Box(TEntryData.getInstance().LASTMODIFIED), TJava.Box(time));
        Exit(hashMap_);
end;
    

function TBasicWorkFlow.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  keySet: ISet;
  node_: TNode;
  nameArray: TArray<TObject>;
  size: Integer;
  name: string;
  value: string;
  index: Integer;
begin
        try
            hashMap_ := Self.toHashMap();
            keySet := hashMap_.keySet();
            node_ := document_.createElement(TWorkFlowData.getInstance().WORKFLOW);
            nameArray := keySet.toArray();
            size := System.Length(nameArray);
            for index := 0 to size - 1 do begin
                name := TJava.UnboxString(TJava.ToObject(nameArray[index]));
                value := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(name))));
                node_.appendChild(TModDomHelper.createNameValueNodes(document_, name, value));
            end;
            Exit(node_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'toXmlNode()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TBasicWorkFlow.toXmlDoc: TDocument;
begin
        try
            Exit(Self.workFlowDoc);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'toXmlDoc()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TBasicWorkFlow.isValid: Boolean;
var
  returnBoolean: Boolean;
begin
        try
            returnBoolean := True;
            if (Self.workFlowName) = ('') then begin
                returnBoolean := False;
            end;
            Exit(returnBoolean);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to validate', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TBasicWorkFlow.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            if (Self.workFlowName) = ('') then begin
                stringBuffer.append('No WorkFlow name specified.');
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Getting Validation Info');
            end;
        end;
end;
    

function TBasicWorkFlow.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TBasicWorkFlow.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

