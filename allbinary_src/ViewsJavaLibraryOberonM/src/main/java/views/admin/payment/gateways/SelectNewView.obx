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
// package views.admin.payment.gateways
unit SelectNewView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, PaymentGatewayViewAbstract;

type
  {AB:TYPES}
  TSelectNewView = class(TPaymentGatewayViewAbstract)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function view: string; virtual;
  end;

implementation
uses
  PaymentGatewaysView, BasicArrayList, BasicArrayListD, BasicPaymentTypeUtil, PaymentGatewayEntityFactory, PaymentGatewayEntityInterface;


{AB:CODE}

procedure TSelectNewView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TSelectNewView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

// throws Exception
function TSelectNewView.view: string;
var
  paymentGatewayEntityInterface_: IPaymentGatewayEntityInterface;
  existingGateways: TBasicArrayList;
  allGatewaysLessExisting: TBasicArrayList;
begin
        try
            paymentGatewayEntityInterface_ := TPaymentGatewayEntityFactory.getInstance();
            existingGateways := paymentGatewayEntityInterface_.findPaymentTypeVectorByStore(Self.getPaymentGatewayPrimaryKey().getStoreName());
            allGatewaysLessExisting := TBasicPaymentTypeUtil.getInstance().difference(existingGateways);
            Exit(TPaymentGatewaysView.Create(Self.getTransformInfoInterface(), allGatewaysLessExisting).view());
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

