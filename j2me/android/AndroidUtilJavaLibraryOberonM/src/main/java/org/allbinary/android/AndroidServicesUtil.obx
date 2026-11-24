{
 
  AllBinary Open License Version 1 
  Copyright (c) 2019 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.android
unit AndroidServicesUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ResourceUtil, LogUtil;

type
  {AB:TYPES}
  TAndroidServicesUtil = class(TObject)
  public
    logUtil: TLogUtil;
    resourceUtil: TResourceUtil;
    SERVICE_LIMIT_MAX: Integer;
    IS_SERVICE_RUNNING: string;
    SERVICE_NOT_FOUND_RUNNING: string;
    class var instance: TAndroidServicesUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAndroidServicesUtil; static;
        function isServiceRunning(name: string): Boolean; virtual;
  end;

implementation
uses
  ActivityManager, RunningServiceInfo, ComponentName, Context;


{AB:CODE}

procedure TAndroidServicesUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.resourceUtil := TResourceUtil.getInstance();
  Self.SERVICE_LIMIT_MAX := 1000;
  Self.IS_SERVICE_RUNNING := 'isServiceRunning';
  Self.SERVICE_NOT_FOUND_RUNNING := 'Service not found Running: ';
end;

constructor TAndroidServicesUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAndroidServicesUtil.getInstance: TAndroidServicesUtil;
begin
        Exit(TAndroidServicesUtil.instance);
end;
    

function TAndroidServicesUtil.isServiceRunning(name: string): Boolean;
var
  activityManager_: TActivityManager;
  runningServicesList: IList<TRunningServiceInfo>;
  runningServiceInfo_: TRunningServiceInfo;
  serviceComponent: TComponentName;
  serviceName: string;
  size: Integer;
  index: Integer;
begin
        activityManager_ := TActivityManager(TJava.ToObject(Self.resourceUtil.getContext().getSystemService(TContext.ACTIVITY_SERVICE)));
        runningServicesList := activityManager_.getRunningServices(Self.SERVICE_LIMIT_MAX);
        
        
        
        size := runningServicesList.size();
        for index := 0 to size - 1 do begin
            runningServiceInfo_ := runningServicesList.get(index);
            serviceComponent := runningServiceInfo_.service;
            serviceName := serviceComponent.toString();
            if ((Pos(TJava.ToString(name), serviceName) - 1)) >= (0) then begin
                Exit(True);
            end;
        end;
        Self.logUtil.putF(Self.SERVICE_NOT_FOUND_RUNNING + name, TJava.Box(Self), Self.IS_SERVICE_RUNNING);
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TAndroidServicesUtil.instance := TAndroidServicesUtil.Create();
  {AB:END}

end.

