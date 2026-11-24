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
// package org.allbinary.osgi
unit OSGIActivatorUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable, BundleContext;

type
  {AB:TYPES}
  TOSGIActivatorUtil = class(TObject)
  public
        constructor Create;
        class procedure registerAsService(bundleContext_: TBundleContext; anyType: TObject; serviceName: string); overload; static;
        class procedure registerAsService(bundleContext_: TBundleContext; anyType: TObject; serviceName: string; properties: TABHashtable<TObject, TObject>); overload; static;
  end;

implementation
uses
  StdUtil, NullServiceReferenceFactory, ServiceReference, ServiceRegistration;


{AB:CODE}
    

constructor TOSGIActivatorUtil.Create;
begin
    inherited Create;
end;
    

// throws Exception
class procedure TOSGIActivatorUtil.registerAsService(bundleContext_: TBundleContext; anyType: TObject; serviceName: string);
begin
        TOSGIActivatorUtil.registerAsService(bundleContext_, anyType, serviceName, TStdUtil.getInstance().createHashtable());
end;
    

// throws Exception
class procedure TOSGIActivatorUtil.registerAsService(bundleContext_: TBundleContext; anyType: TObject; serviceName: string; properties: TABHashtable<TObject, TObject>);
var
  serviceRegistration_: TServiceRegistration;
  serviceReference_: TServiceReference;
begin
        serviceRegistration_ := bundleContext_.registerService(serviceName, anyType, properties);
        serviceReference_ := serviceRegistration_.getReference();
        serviceReference_ := bundleContext_.getServiceReference(serviceName);
        if (serviceReference_) = (TNullServiceReferenceFactory.getInstance().NULL_SERVICE_REFERENCE) then begin
            raise SysUtils.Exception.Create('No Such Service Reference');
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

