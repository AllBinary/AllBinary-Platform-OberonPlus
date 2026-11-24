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
// package org.allbinary.logic.visual.transform.info.dom
unit TransformInfoPropertiesDocument;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Document;

type
  {AB:TYPES}
  TTransformInfoPropertiesDocument = class(TObject)
  public
    logUtil: TLogUtil;
    document: TDocument;
    procedure InitFields;
        constructor Create(filePath: string);
        function toTransformInfoPropertiesHashMap: TJavaHashMap<TObject, TObject>; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, DomSearchHelper, DomDocumentFileHelper, StdUtil, AbFile, TransformInfoData, TransformInfoProperties, TransformInfoPropertiesFactory, TransformInfosData, CommonStrings, Node, NodeList;


{AB:CODE}

procedure TTransformInfoPropertiesDocument.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TTransformInfoPropertiesDocument.Create(filePath: string);
var
  xmlFile: TAbFile;
begin
    inherited Create;
    InitFields;
        xmlFile := TAbFile.createAbFile(filePath);
        Self.document := TDomDocumentFileHelper.createDocument(xmlFile);
end;
    

function TTransformInfoPropertiesDocument.toTransformInfoPropertiesHashMap: TJavaHashMap<TObject, TObject>;
var
  transformInfoPropertiesHashMap: TJavaHashMap<TObject, TObject>;
  transformInfosNode: TNode;
  transformInfosChildNodeList: TNodeList;
  transformInfoNodeVector: TBasicArrayList;
  size: Integer;
  node_: TNode;
  transformInfoProperties_: TTransformInfoProperties;
  index: Integer;
  commonStrings_: TCommonStrings;
begin
        try
            transformInfoPropertiesHashMap := TStdUtil.getInstance().createHashMap();
            transformInfosNode := Self.document.getElementsByTagName(TTransformInfosData.getInstance().NAME).item(0);
            transformInfosChildNodeList := transformInfosNode.getChildNodes();
            transformInfoNodeVector := TDomSearchHelper.getAllNodes(TTransformInfoData.getInstance().NAME, transformInfosChildNodeList);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Size: ' + IntToStr(transformInfoNodeVector.size()), TJava.Box(Self), 'toTransformInfoPropertiesHashMap()');
            end;
            size := transformInfoNodeVector.size();
            
            
            for index := 0 to size - 1 do begin
                node_ := TNode(TJava.ToObject(transformInfoNodeVector.get(index)));
                transformInfoProperties_ := TTransformInfoPropertiesFactory.getInstance().getInstance(node_);
                transformInfoPropertiesHashMap.put(TJava.Box(transformInfoProperties_.getName()), TJava.Box(transformInfoProperties_));
            end;
            Exit(transformInfoPropertiesHashMap);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'toTransformInfoPropertiesHashMap()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

