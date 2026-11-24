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
// package views.generic.order
unit ValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, OrderView;

type
  {AB:TYPES}
  TValidationView = class(TOrderView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  OrderHistoryFactory, OrderItemsEntity, StringMaker;


{AB:CODE}

procedure TValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

function TValidationView.isValid: Boolean;
var
  valid: Boolean;
  orderItems: TOrderItemsEntity;
begin
        try
            valid := True;
            if (Self.order.isIdValid()) = (False) then begin
                Exit(False);
            end else begin
                Self.orderHistory := TOrderHistoryFactory.getInstance(Self.order.getId());
                if ((Self.orderHistory) = (nil)) or ((Self.orderHistory.isValid()) = (False)) then begin
                    Exit(False);
                end;
                orderItems := TOrderItemsEntity.Create();
                Self.basketReview := orderItems.getBasketReview(Self.order.getId());
                if ((Self.basketReview) = (nil)) or ((Self.basketReview.isValid()) = (False)) then begin
                    Exit(False);
                end;
            end;
            Exit(valid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
  orderItems: TOrderItemsEntity;
begin
        try
            stringBuffer := TStringMaker.Create();
            if (Self.order.isIdValid()) = (False) then begin
                stringBuffer.append(Self.order.getIdValidationInfo());
            end else begin
                Self.orderHistory := TOrderHistoryFactory.getInstance(Self.order.getId());
                if ((Self.orderHistory) = (nil)) or ((Self.orderHistory.isValid()) = (False)) then begin
                    stringBuffer.append('Order History data error for: ');
                    stringBuffer.append(Self.order.getId());
                    stringBuffer.append('<br />');
                end;
                orderItems := TOrderItemsEntity.Create();
                Self.basketReview := orderItems.getBasketReview(Self.order.getId());
                if (Self.basketReview) = (nil) then begin
                    stringBuffer.append('Order Items data error - does not exist for: ');
                    stringBuffer.append(Self.order.getId());
                    stringBuffer.append('<br />');
                end else if (Self.basketReview.isValid()) = (False) then begin
                    stringBuffer.append('Order Items data error - not valid for: ');
                    stringBuffer.append(Self.order.getId());
                    stringBuffer.append('<br />');
                end;
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Validating Form');
            end;
        end;
end;
    

function TValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

