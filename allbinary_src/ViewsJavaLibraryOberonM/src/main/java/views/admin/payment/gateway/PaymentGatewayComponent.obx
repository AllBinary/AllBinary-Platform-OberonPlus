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
// package views.admin.payment.gateway
unit PaymentGatewayComponent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PaymentGatewayInterface, LogUtil, TransformInfoInterface, HttpStoreComponentView;

type
  {AB:TYPES}
  TPaymentGatewayComponent = class(THttpStoreComponentView)
  public
    logUtil: TLogUtil;
    paymentGatewayInterface: IPaymentGatewayInterface;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; paymentGatewayInterface_: IPaymentGatewayInterface);
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
  end;

implementation
uses
  PaymentGatewayDomNodeFactoryInterface, BasicPaymentType, BasicPaymentTypeUtil, DomNodeInterface;


{AB:CODE}

procedure TPaymentGatewayComponent.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TPaymentGatewayComponent.Create(transformInfoInterface_: ITransformInfoInterface; paymentGatewayInterface_: IPaymentGatewayInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.paymentGatewayInterface := paymentGatewayInterface_;
end;
    

// throws Exception
procedure TPaymentGatewayComponent.addDomNodeInterfaces;
var
  paymentType: TBasicPaymentType;
  paymentGatewayDomNodeFactoryInterface_: IPaymentGatewayDomNodeFactoryInterface;
  domNodeInterface_: IDomNodeInterface;
begin
        paymentType := TBasicPaymentTypeUtil.getInstance().get(Self.paymentGatewayInterface.getName());
        paymentGatewayDomNodeFactoryInterface_ := paymentType.getPaymentGatewayDomNodeFactoryInterface();
        domNodeInterface_ := (TJava.ToObject(paymentGatewayDomNodeFactoryInterface_.getInstance(Self.paymentGatewayInterface)) as IDomNodeInterface);
        Self.addDomNodeInterface(domNodeInterface_);
end;
    

function TPaymentGatewayComponent.view: string;
var
  error: string;
begin
        try
            Self.addDomNodeInterfaces();
            Exit(inherited view());
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to view payment gateway';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

