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
// package views.business.context.modules.storefront.customizer.includes.globals
unit GlobalsView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, TransformInfoInterface, GlobalsValidation, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TGlobalsView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    globalsValidation: TGlobalsValidation;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        procedure addDomNodeInterfaces; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function view: string; virtual;
  end;

implementation

{AB:CODE}

procedure TGlobalsView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TGlobalsView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGlobalsView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.globalsValidation := TGlobalsValidation.Create(Self.getWeblisketSession().getStoreName());
end;
    

procedure TGlobalsView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self.globalsValidation) as IDomNodeInterface));
end;
    

// throws Exception
function TGlobalsView.toXmlNode(document_: TDocument): TNode;
begin
        try
            Exit(Self.globalsValidation.toXmlNode(document_));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TGlobalsView.view: string;
begin
        try
            Self.addDomNodeInterfaces();
            Exit(inherited view());
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

