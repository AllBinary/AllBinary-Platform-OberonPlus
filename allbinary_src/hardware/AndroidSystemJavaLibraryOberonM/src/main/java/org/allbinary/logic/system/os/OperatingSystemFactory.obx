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
// package org.allbinary.logic.system.os
unit OperatingSystemFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, GenericOperatingSystem;

type
  {AB:TYPES}
  TOperatingSystemFactory = class(TObject)
  public
    logUtil: TLogUtil;
    genericOperatingSystem: TGenericOperatingSystem;
    hasDetected: Boolean;
    class var instance: TOperatingSystemFactory;
    procedure InitFields;
        class function getInstance: TOperatingSystemFactory; static;
        constructor Create;
        function getOperatingSystemInstance: TGenericOperatingSystem; virtual;
  end;

implementation
uses
  NoOperatingSystem, SystemProperties, OperatingSystems, AndroidOperatingSystemFactory, StringMaker, CommonStrings;


{AB:CODE}

procedure TOperatingSystemFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.genericOperatingSystem := TNoOperatingSystem.NO_OPERATING_SYSTEM;
  Self.hasDetected := False;
end;
    

class function TOperatingSystemFactory.getInstance: TOperatingSystemFactory;
begin
        Exit(TOperatingSystemFactory.instance);
end;
    

constructor TOperatingSystemFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TOperatingSystemFactory.getOperatingSystemInstance: TGenericOperatingSystem;
var
  commonStrings_: TCommonStrings;
  systemProperties_: TSystemProperties;
  osName: string;
begin
    TJava.MonitorEnter(Self);
    try
        commonStrings_ := TCommonStrings.getInstance();
        try
            systemProperties_ := TSystemProperties.getInstance();
            osName := systemProperties_.getName();
            if not (Self.hasDetected) then begin
                Self.hasDetected := True;
                if ((Pos(TJava.ToString(TOperatingSystems.getInstance().ANDROID), osName) - 1)) >= (0) then begin
                    Self.logUtil.putF('Found a Android OS', TJava.Box(Self), commonStrings_.GET_INSTANCE);
                    Self.genericOperatingSystem := TAndroidOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                    Self.logUtil.putF(TStringMaker.Create().append('Operating System Info: ').append(Self.genericOperatingSystem.toString()).toString(), TJava.Box(Self), commonStrings_.GET_INSTANCE);
                end else if ((Pos(TJava.ToString(TOperatingSystems.getInstance().HARMONY), osName) - 1)) >= (0) then begin
                    Self.logUtil.putF('Found a Harmony OS', TJava.Box(Self), commonStrings_.GET_INSTANCE);
                    Self.genericOperatingSystem := TAndroidOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                    Self.logUtil.putF(TStringMaker.Create().append('Operating System Info: ').append(Self.genericOperatingSystem.toString()).toString(), TJava.Box(Self), commonStrings_.GET_INSTANCE);
                end else begin
                    raise SysUtils.Exception.Create(TStringMaker.Create().append('OS Not Supported: ').append(osName).toString());
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.genericOperatingSystem := TNoOperatingSystem.NO_OPERATING_SYSTEM;
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
        end;
        Exit(Self.genericOperatingSystem);
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TOperatingSystemFactory.instance := TOperatingSystemFactory.Create();
  {AB:END}

end.

