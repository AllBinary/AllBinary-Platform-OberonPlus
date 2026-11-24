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
// package views.business.context
unit HttpContextView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, CommonStrings, HttpComponentView;

type
  {AB:TYPES}
  THttpContextView = class(THttpComponentView)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function view: string; virtual;
  end;

implementation
uses
  XmlDocumentHelper, ContextTransformer, TransformHttpRequestDocumentFactory;


{AB:CODE}

procedure THttpContextView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;
    

constructor THttpContextView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + transformInfoInterface_.getName(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.setTransformDocumentInterface(TTransformHttpRequestDocumentFactory.getInstance(Self.getPageContext(), Self.getWeblisketSession()));
end;
    

// throws Exception
function THttpContextView.view: string;
var
  success: string;
  result_: string;
begin
        try
            Self.toXmlDoc();
            success := TXmlDocumentHelper.toString(Self.getDoc());
            result_ := TContextTransformer.Create(Self.abeClientInformation, Self.getTransformInfoInterface()).translate(success);
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

