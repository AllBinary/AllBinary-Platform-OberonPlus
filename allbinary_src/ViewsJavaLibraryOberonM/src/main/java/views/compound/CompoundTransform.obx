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
// package views.compound
unit CompoundTransform;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, AbTransformer, TransformInfoInterface;

type
  {AB:TYPES}
  TCompoundTransform = class(TAbTransformer)
  public
    logUtil: TLogUtil;
    abeClientInformation: IAbeClientInformationInterface;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
  end;

implementation
uses
  BasicUriResolver, StoreUriResolver, ServiceClientInformationInterfaceFactory, CompoundContextTransformInfoObjectConfig;


{AB:CODE}

procedure TCompoundTransform.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
end;
    

constructor TCompoundTransform.Create(transformInfoInterface_: ITransformInfoInterface);
var
  objectConfig: TCompoundContextTransformInfoObjectConfig;
  templateInputStream: TInputStream;
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.setURIResolver(TURIResolver(TJava.ToObject(TStoreUriResolver.Create(Self.getTransformInfoInterface(), TBasicUriResolver(TJava.ToObject(Self.getURIResolver()))))));
        objectConfig := TCompoundContextTransformInfoObjectConfig.Create(Self.abeClientInformation, Self.getTransformInfoInterface(), Self.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc());
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF(''#10'ObjectConfig: '#10'' + objectConfig.toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        templateInputStream := objectConfig.createInputStream();
        Self.setInputStream(templateInputStream);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

