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
// package org.allbinary.logic.system.os.android
unit AndroidOperatingSystemFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TsUtil, LogUtil, GenericOperatingSystem;

type
  {AB:TYPES}
  TAndroidOperatingSystemFactory = class(TObject)
  public
    logUtil: TLogUtil;
    tsUtil: TTsUtil;
    class var instance: TAndroidOperatingSystemFactory;
    procedure InitFields;
        class function getInstance: TAndroidOperatingSystemFactory; static;
        constructor Create;
        function getOperatingSystemInstance: TGenericOperatingSystem; virtual;
  end;

implementation
uses
  AndroidOS, NoOperatingSystem, OperatingSystems, SystemProperties, CommonStrings;


{AB:CODE}

procedure TAndroidOperatingSystemFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
end;
    

class function TAndroidOperatingSystemFactory.getInstance: TAndroidOperatingSystemFactory;
begin
        Exit(TAndroidOperatingSystemFactory.instance);
end;
    

constructor TAndroidOperatingSystemFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TAndroidOperatingSystemFactory.getOperatingSystemInstance: TGenericOperatingSystem;
var
  GenericOperatingSystem: TGenericOperatingSystem;
  systemProperties_: TSystemProperties;
  osName: string;
  commonStrings_: TCommonStrings;
begin
        try
            
            systemProperties_ := TSystemProperties.getInstance();
            osName := systemProperties_.getName();
            if (Self.tsUtil.compareTo(osName, TOperatingSystems.getInstance().ANDROID)) = (0) then begin
                GenericOperatingSystem := TAndroidOS.Create();
            end else begin
                if TOperatingSystems.getInstance().isUnknownSpecificOSAllowed() then begin
                    GenericOperatingSystem := TAndroidOS.Create();
                end else begin
                    raise SysUtils.Exception.Create('Specific Android OS Not Supported: ' + osName);
                end;
            end;
            Exit(GenericOperatingSystem);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put('Failed to get OperatingSystem returning NoOperatingSystem', TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            Exit(TNoOperatingSystem.NO_OPERATING_SYSTEM);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TAndroidOperatingSystemFactory.instance := TAndroidOperatingSystemFactory.Create();
  {AB:END}

end.

