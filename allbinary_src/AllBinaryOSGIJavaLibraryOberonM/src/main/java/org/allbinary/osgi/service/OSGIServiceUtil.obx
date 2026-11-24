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
// package org.allbinary.osgi.service
unit OSGIServiceUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BundleContext, ServiceReference, LogUtil;

type
  {AB:TYPES}
  TOSGIServiceUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TOSGIServiceUtil;
    procedure InitFields;
        class function getInstance: TOSGIServiceUtil; static;
        constructor Create;
        function getServicesObjectVector(bundleContext_: TBundleContext; serviceReferences: TArray<TServiceReference>): TBasicArrayList; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil, OSGIServiceInterface;


{AB:CODE}

procedure TOSGIServiceUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TOSGIServiceUtil.getInstance: TOSGIServiceUtil;
begin
        Exit(TOSGIServiceUtil.instance);
end;
    

constructor TOSGIServiceUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TOSGIServiceUtil.getServicesObjectVector(bundleContext_: TBundleContext; serviceReferences: TArray<TServiceReference>): TBasicArrayList;
var
  vector: TBasicArrayList;
  size: Integer;
  serviceReference_: TServiceReference;
  osgiServiceInterface_: IOSGIServiceInterface;
  index: Integer;
begin
        vector := TBasicArrayListD.Create();
        if (serviceReferences) <> (nil) then begin
            size := System.Length(serviceReferences);
            Self.logUtil.putF('Service References: ' + IntToStr(size), TJava.Box(Self), 'getServicesObjectVector');
            for index := 0 to size - 1 do begin
                serviceReference_ := serviceReferences[index];
                if (serviceReference_) <> (nil) then begin
                    osgiServiceInterface_ := (TJava.ToObject(bundleContext_.getService(serviceReference_)) as IOSGIServiceInterface);
                    if (osgiServiceInterface_) = (nil) then begin
                        raise SysUtils.Exception.Create('No Service For Reference');
                    end;
                    vector.add(TJava.Box(osgiServiceInterface_));
                end;
            end;
        end;
        Exit(vector);
end;

initialization
  {AB:INITIALIZATION}
  TOSGIServiceUtil.instance := TOSGIServiceUtil.Create();
  {AB:END}

end.

