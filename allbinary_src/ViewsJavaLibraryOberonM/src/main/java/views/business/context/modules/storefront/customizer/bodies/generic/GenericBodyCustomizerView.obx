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
// package views.business.context.modules.storefront.customizer.bodies.generic
unit GenericBodyCustomizerView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, TransformInfoInterface, GenericBodyValidation, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TGenericBodyCustomizerView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    body: TGenericBodyValidation;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        procedure addDomNodeInterfaces; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function view: string; virtual;
  end;

implementation
uses
  PageData, ModDomHelper, XmlDocumentHelper, StoreTransformer, TransformTemplateCustomizerUtil, StringEscapeUtils;


{AB:CODE}

procedure TGenericBodyCustomizerView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TGenericBodyCustomizerView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGenericBodyCustomizerView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

// throws Exception
procedure TGenericBodyCustomizerView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self.body) as IDomNodeInterface));
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

// throws Exception
function TGenericBodyCustomizerView.toXmlNode(document_: TDocument): TNode;
var
  pageName: string;
begin
        pageName := TTransformTemplateCustomizerUtil.getInstance().getPageNameHack(Self.getTransformInfoInterface().getName(), Self.getWeblisketSession().getStoreName());
        if (pageName = '') then begin
            pageName := TGenericBodyCustomizerView.NAME;
        end;
        Exit(TModDomHelper.createNameValueNodes(document_, TPageData.getInstance().NAME, pageName));
end;
    

// throws Exception
function TGenericBodyCustomizerView.view: string;
var
  success: string;
  result_: string;
begin
        try
            Self.addDomNodeInterfaces();
            success := TXmlDocumentHelper.toString(Self.getDoc());
            result_ := TStoreTransformer.Create(Self.abeClientInformation, Self.getTransformInfoInterface()).translate(success);
            Exit(TStringEscapeUtils.unescapeHtml3(result_));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TGenericBodyCustomizerView.NAME := 'None';
  {AB:END}

end.

