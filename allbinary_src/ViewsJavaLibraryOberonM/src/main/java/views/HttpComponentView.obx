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
// package views
unit HttpComponentView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DomNodeInterface, LogUtil, AbeClientInformationInterface, TransformInterface, TransformDocumentInterface, TransformInfoHttpComposite, TransformInfoInterface, Document;

type
  {AB:TYPES}
  THttpComponentView = class(TTransformInfoHttpComposite, ITransformInterface)
  public
    logUtil: TLogUtil;
    abeClientInformation: IAbeClientInformationInterface;
    domNodeInterfaceVector: TBasicArrayList;
    transformDocumentInterface: ITransformDocumentInterface;
    NO_TYPE: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function getTypeId: Integer; virtual;
        function getTransformDocumentInterface: ITransformDocumentInterface; virtual;
        procedure setTransformDocumentInterface(transformDocumentInterface_: ITransformDocumentInterface); virtual;
        procedure addDomNodeInterface(domNodeInterface_: IDomNodeInterface); virtual;
        function toXmlDoc: TDocument; virtual;
        function getDoc: TDocument; virtual;
        function view: string; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  BasicArrayListD, DomNodeHelper, XmlDocumentHelper, ServiceClientInformationInterfaceFactory, BasicTransformer, TransformHttpRequestDocumentFactory, Node;


{AB:CODE}

procedure THttpComponentView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  
  
  Self.NO_TYPE := 0;
end;

function THttpComponentView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THttpComponentView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + transformInfoInterface_.getName(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.domNodeInterfaceVector := TBasicArrayListD.Create();
        Self.setTransformDocumentInterface(TTransformHttpRequestDocumentFactory.getInstance(Self.getPageContext(), Self.getWeblisketSession()));
end;
    

function THttpComponentView.getTypeId: Integer;
begin
        Exit(Self.NO_TYPE);
end;
    

function THttpComponentView.getTransformDocumentInterface: ITransformDocumentInterface;
begin
        Exit(Self.transformDocumentInterface);
end;
    

procedure THttpComponentView.setTransformDocumentInterface(transformDocumentInterface_: ITransformDocumentInterface);
begin
        Self.transformDocumentInterface := transformDocumentInterface_;
end;
    

procedure THttpComponentView.addDomNodeInterface(domNodeInterface_: IDomNodeInterface);
begin
        Self.domNodeInterfaceVector.add(TJava.Box(domNodeInterface_));
end;
    

// throws Exception
function THttpComponentView.toXmlDoc: TDocument;
var
  size: Integer;
  domNodeInterface_: IDomNodeInterface;
  index: Integer;
begin
        try
            size := Self.domNodeInterfaceVector.size();
            for index := 0 to size - 1 do begin
                domNodeInterface_ := (TJava.ToObject(Self.domNodeInterfaceVector.get(index)) as IDomNodeInterface);
                Self.transformDocumentInterface.getBaseNode().appendChild(domNodeInterface_.toXmlNode(Self.transformDocumentInterface.getDoc()));
            end;
            Exit(Self.getTransformDocumentInterface().getDoc());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'toXmlDoc()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function THttpComponentView.getDoc: TDocument;
var
  document_: TDocument;
  node_: TNode;
  dataNode: TNode;
begin
        document_ := Self.getTransformInfoInterface().getDataDocument();
        node_ := TDomNodeHelper.getFirstChildElement(document_);
        if (node_) <> (nil) then begin
            dataNode := Self.getTransformDocumentInterface().getDoc().importNode(node_, True);
            if (dataNode) <> (nil) then begin
                Self.getTransformDocumentInterface().getBaseNode().appendChild(dataNode);
            end;
        end;
        Exit(Self.getTransformDocumentInterface().getDoc());
end;
    

// throws Exception
function THttpComponentView.view: string;
var
  success: string;
  result_: string;
begin
        try
            Self.toXmlDoc();
            success := TXmlDocumentHelper.toString(Self.getDoc());
            result_ := TBasicTransformer.Create(Self.abeClientInformation, Self.getTransformInfoInterface()).translate(success);
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function THttpComponentView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

