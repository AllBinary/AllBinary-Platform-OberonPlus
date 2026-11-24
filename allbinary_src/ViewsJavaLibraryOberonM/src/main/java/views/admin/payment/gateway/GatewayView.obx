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
unit GatewayView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, PaymentGatewayViewAbstract;

type
  {AB:TYPES}
  TGatewayView = class(TPaymentGatewayViewAbstract)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        procedure getFormData(request: THttpServletRequest); virtual;
        function view: string; virtual;
  end;

implementation
uses
  PaymentGatewayComponent, PaymentGatewayInterface, BasicPaymentTypeUtil, PaymentGatewayEntityFactory;


{AB:CODE}

procedure TGatewayView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TGatewayView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

procedure TGatewayView.getFormData(request: THttpServletRequest);
begin
        inherited getFormData(request);
        if (Self.getPaymentGatewayPrimaryKey().getName() = '') then begin
            Self.getPaymentGatewayPrimaryKey().setName(Self.getWeblisketSession().getPaymentMethod());
        end;
end;
    

// throws Exception
function TGatewayView.view: string;
var
  paymentGatewayInterface_: IPaymentGatewayInterface;
begin
        try
            paymentGatewayInterface_ := TPaymentGatewayEntityFactory.getInstance().getPaymentGatewayInterface(Self.getPaymentGatewayPrimaryKey().getStoreName(), TBasicPaymentTypeUtil.getInstance().get(Self.getPaymentGatewayPrimaryKey().getName()));
            Exit(TPaymentGatewayComponent.Create(Self.getTransformInfoInterface(), paymentGatewayInterface_).view());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'edit()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

