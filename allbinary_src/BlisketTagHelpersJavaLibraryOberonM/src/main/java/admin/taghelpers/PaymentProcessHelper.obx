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
// package admin.taghelpers
unit PaymentProcessHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PaymentProcessorComponent, TagHelper;

type
  {AB:TYPES}
  TPaymentProcessHelper = class(TTagHelper)
  public
    paymentProcessorComponent: TPaymentProcessorComponent;
    procedure InitFields;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function process: string; virtual;
  end;

implementation
uses
  TransformInfoHttpFactory, TransformInfoHttpInterface;


{AB:CODE}

procedure TPaymentProcessHelper.InitFields;
begin
  
end;
    

constructor TPaymentProcessHelper.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
var
  transformInfoInterface: ITransformInfoHttpInterface;
begin
    inherited Create;
    InitFields;
        transformInfoInterface := (TJava.ToObject(TTransformInfoHttpFactory.getInstance(propertiesHashMap, pageContext_)) as ITransformInfoHttpInterface);
        Self.paymentProcessorComponent := TPaymentProcessorComponent.Create(transformInfoInterface);
end;
    

// throws Exception
function TPaymentProcessHelper.process: string;
begin
        Exit(Self.paymentProcessorComponent.view());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

