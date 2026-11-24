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
// package org.allbinary.logic.visual.transform.template.customizer.widgets.title
unit TitleView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, CommonStrings, Document, Node;

type
  {AB:TYPES}
  TTitleView = class(TInterfacedObject, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    title: string;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(node_: TNode); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function getTitle: string; virtual;
        procedure getFormData(hashMap_: TJavaHashMap<TObject, TObject>); virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  TitleData, DomData, DomNodeHelper, DomSearchHelper, ModDomHelper, StdUtil;


{AB:CODE}

procedure TTitleView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TTitleView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTitleView.Create;
begin
    inherited Create;
    InitFields;
        Self.title := TTitleView.NAME;
end;
    

constructor TTitleView.Create(node_: TNode);
var
  titleTextNode: TNode;
  valueNode: TNode;
begin
    inherited Create;
    InitFields;
        titleTextNode := TDomSearchHelper.getNode(TTitleData.getInstance().TEXT, node_.getChildNodes());
        valueNode := TDomSearchHelper.getNode(TDomData.VALUE, titleTextNode.getChildNodes());
        Self.title := TDomNodeHelper.getTextNodeValue(valueNode);
        if (Self.title = '') then begin
            Self.title := TTitleView.NAME;
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Title: ' + TJava.ToString(Self.getTitle()), TJava.Box(Self), 'Consructor()');
        end;
end;
    

constructor TTitleView.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('HashMap: ' + hashMap_.toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.getFormData(hashMap_);
end;
    

function TTitleView.getTitle: string;
begin
        Exit(Self.title);
end;
    

procedure TTitleView.getFormData(hashMap_: TJavaHashMap<TObject, TObject>);
begin
        Self.title := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TTitleData.getInstance().TEXT))));
        if (Self.title = '') then begin
            Self.title := TTitleView.NAME;
        end;
end;
    

function TTitleView.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TTitleData.getInstance().TEXT), TJava.Box(Self.getTitle()));
        Exit(hashMap_);
end;
    

// throws Exception
function TTitleView.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := Self.toHashMap();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('TitleView HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'toXmlNode()');
        end;
        Exit(TModDomHelper.createNameValueNodes(document_, TTitleData.getInstance().NAME, hashMap_));
end;

initialization
  {AB:INITIALIZATION}
  TTitleView.NAME := 'None';
  {AB:END}

end.

