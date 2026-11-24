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
// package views.business.context.modules.storefront.customizer.bodies.generic.title
unit TitleBodyCustomizerView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, TransformInfoInterface, TitleBodyValidation, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TTitleBodyCustomizerView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    titleBody: TTitleBodyValidation;
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

procedure TTitleBodyCustomizerView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TTitleBodyCustomizerView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTitleBodyCustomizerView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

// throws Exception
procedure TTitleBodyCustomizerView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self.titleBody) as IDomNodeInterface));
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

// throws Exception
function TTitleBodyCustomizerView.toXmlNode(document_: TDocument): TNode;
var
  pageName: string;
begin
        pageName := TTransformTemplateCustomizerUtil.getInstance().getPageNameHack(Self.getTransformInfoInterface().getName(), Self.getWeblisketSession().getStoreName());
        if (pageName = '') then begin
            pageName := TTitleBodyCustomizerView.NAME;
        end;
        Exit(TModDomHelper.createNameValueNodes(document_, TPageData.getInstance().NAME, pageName));
end;
    

// throws Exception
function TTitleBodyCustomizerView.view: string;
var
  success: string;
  result_: string;
begin
        try
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
  TTitleBodyCustomizerView.NAME := 'None';
  {AB:END}

end.

