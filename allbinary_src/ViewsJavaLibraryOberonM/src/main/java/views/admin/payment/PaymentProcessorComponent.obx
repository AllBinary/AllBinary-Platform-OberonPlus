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
// package views.admin.payment
unit PaymentProcessorComponent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, HttpStoreComponentView;

type
  {AB:TYPES}
  TPaymentProcessorComponent = class(THttpStoreComponentView)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
  end;

implementation
uses
  PaymentProcessorInterface, PaymentProcessorInterfaceFactory, DomNodeInterface, TransformInfoHttpInterface;


{AB:CODE}

procedure TPaymentProcessorComponent.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TPaymentProcessorComponent.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

// throws Exception
procedure TPaymentProcessorComponent.addDomNodeInterfaces;
var
  paymentProcessorInterface_: IPaymentProcessorInterface;
  httpTransformInfoInterface: ITransformInfoHttpInterface;
begin
        paymentProcessorInterface_ := TPaymentProcessorInterfaceFactory.getInstance().getInstance(Self.getTransformInfoInterface());
        paymentProcessorInterface_.process();
        httpTransformInfoInterface := (TJava.ToObject(Self.getTransformInfoInterface()) as ITransformInfoHttpInterface);
        httpTransformInfoInterface.getWeblisketSession().removeBasket();
        Self.addDomNodeInterface((TJava.ToObject(paymentProcessorInterface_) as IDomNodeInterface));
end;
    

// throws Exception
function TPaymentProcessorComponent.view: string;
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

