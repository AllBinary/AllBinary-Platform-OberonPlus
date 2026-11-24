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
unit CustomUriTransformView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, TransformInterface, TransformDocumentInterface, TransformInfoInterface, CommonStrings, Document;

type
  {AB:TYPES}
  TCustomUriTransformView = class(TInterfacedObject, ITransformInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    abeClientInformation: IAbeClientInformationInterface;
    transformInfoInterface: ITransformInfoInterface;
    transformDocumentInterface: ITransformDocumentInterface;
    NO_TYPE: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function getTypeId: Integer; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
        procedure setTransformInfoInterface(transformInfoInterface_: ITransformInfoInterface); virtual;
        function getTransformDocumentInterface: ITransformDocumentInterface; virtual;
        procedure setTransformDocumentInterface(transformDocumentInterface_: ITransformDocumentInterface); virtual;
        function toXmlDoc: TDocument; virtual;
        function getDoc: TDocument; virtual;
        function view: string; virtual;
  end;

implementation
uses
  XmlDocumentHelper, ServiceClientInformationInterfaceFactory, TransformInfoCustomUriTransformer, TransformDocumentFactory, Node;


{AB:CODE}

procedure TCustomUriTransformView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  
  
  Self.NO_TYPE := 0;
end;

function TCustomUriTransformView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCustomUriTransformView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + transformInfoInterface_.getName(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.setTransformInfoInterface(transformInfoInterface_);
        Self.setTransformDocumentInterface(TTransformDocumentFactory.getInstance());
end;
    

function TCustomUriTransformView.getTypeId: Integer;
begin
        Exit(Self.NO_TYPE);
end;
    

function TCustomUriTransformView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(Self.transformInfoInterface);
end;
    

procedure TCustomUriTransformView.setTransformInfoInterface(transformInfoInterface_: ITransformInfoInterface);
begin
        Self.transformInfoInterface := transformInfoInterface_;
end;
    

function TCustomUriTransformView.getTransformDocumentInterface: ITransformDocumentInterface;
begin
        Exit(Self.transformDocumentInterface);
end;
    

procedure TCustomUriTransformView.setTransformDocumentInterface(transformDocumentInterface_: ITransformDocumentInterface);
begin
        Self.transformDocumentInterface := transformDocumentInterface_;
end;
    

function TCustomUriTransformView.toXmlDoc: TDocument;
begin
        Exit(Self.transformDocumentInterface.getDoc());
end;
    

// throws Exception
function TCustomUriTransformView.getDoc: TDocument;
var
  document_: TDocument;
  dataNode: TNode;
begin
        document_ := Self.getTransformInfoInterface().getDataDocument();
        dataNode := Self.getTransformDocumentInterface().getDoc().importNode(document_.getFirstChild(), True);
        if (dataNode) <> (nil) then begin
            Self.getTransformDocumentInterface().getBaseNode().appendChild(dataNode);
        end;
        Exit(Self.getTransformDocumentInterface().getDoc());
end;
    

// throws Exception
function TCustomUriTransformView.view: string;
var
  success: string;
  result_: string;
begin
        try
            success := TXmlDocumentHelper.toString(Self.getDoc());
            result_ := TTransformInfoCustomUriTransformer.Create(Self.abeClientInformation, Self.getTransformInfoInterface()).translate(success);
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

