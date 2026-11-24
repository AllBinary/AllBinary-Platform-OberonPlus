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
// package org.allbinary.logic.visual.transform.data
unit TransformDocument;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, Document, Node, TransformDocumentInterface;

type
  {AB:TYPES}
  TTransformDocument = class(TInterfacedObject, ITransformDocumentInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    baseNode: TNode;
    document: TDocument;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getBaseNode: TNode; virtual;
        function getDoc: TDocument; virtual;
        function log: string; virtual;
  end;

implementation
uses
  DomDocumentHelper, XmlDocumentHelper, StringMaker;


{AB:CODE}

procedure TTransformDocument.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;

function TTransformDocument.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTransformDocument.Create;
var
  allbinaryNode: TNode;
begin
    inherited Create;
    InitFields;
        try
            Self.document := TDomDocumentHelper.create_();
            allbinaryNode := Self.document.createElement('allbinary');
            Self.baseNode := allbinaryNode;
            Self.document.appendChild(Self.baseNode);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.putF(Self.log(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

function TTransformDocument.getBaseNode: TNode;
begin
        Exit(Self.baseNode);
end;
    

function TTransformDocument.getDoc: TDocument;
begin
        Exit(Self.document);
end;
    

// throws Exception
function TTransformDocument.log: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        if (Self.baseNode) <> (nil) then begin
            stringBuffer.append('BaseNode: ');
            stringBuffer.append(Self.baseNode.getNodeName());
        end else begin
            stringBuffer.append('Log-Error: BaseNode is Null');
        end;
        stringBuffer.append(''#10'Document: ');
        stringBuffer.append(TXmlDocumentHelper.toString(Self.document));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

