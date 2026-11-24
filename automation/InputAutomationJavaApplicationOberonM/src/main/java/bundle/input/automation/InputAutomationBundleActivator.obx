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
// package bundle.input.automation
unit InputAutomationBundleActivator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BundleActivator, BundleContext, LogUtil, CommonStrings, InputAutomationBundleActivatorListenerInterface;

type
  {AB:TYPES}
  TInputAutomationBundleActivator = class(TInterfacedObject, IBundleActivator, IInputAutomationBundleActivatorListenerInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    class var moduleManagementThread: TThread;
    class var bundleContext: TBundleContext;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        class function getBundleContext: TBundleContext; static;
        procedure start(bundleContext_: TBundleContext); virtual;
        procedure registerAsService; virtual;
        procedure useServices; virtual;
        procedure stop(context: TBundleContext); virtual;
  end;

implementation
uses
  InputAutomationConfigurationModuleChangeListener, InputAutomationRobotChangeListener, InputAutomationJFrame, InputAutomationModuleServiceConsumer, InputAutomationNewBundleRunnable, InputAutomationServiceFactory, InputAutomationRobotServiceConsumer, OSGIActivatorUtil;


{AB:CODE}

procedure TInputAutomationBundleActivator.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;

function TInputAutomationBundleActivator.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TInputAutomationBundleActivator.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TInputAutomationBundleActivator.getBundleContext: TBundleContext;
begin
        Exit(TInputAutomationBundleActivator.bundleContext);
end;
    

// throws Exception
procedure TInputAutomationBundleActivator.start(bundleContext_: TBundleContext);
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.START);
            Self.bundleContext := bundleContext_;
            TInputAutomationBundleActivator.moduleManagementThread := TThread.Create(True);
            TInputAutomationBundleActivator.moduleManagementThread.start();
            TInputAutomationJFrame.create_(Self);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.START, TJava.Box(e));
            raise e;
            end;
        end;
end;
    

// throws Exception
procedure TInputAutomationBundleActivator.registerAsService;
begin
        TOSGIActivatorUtil.registerAsService(Self.getBundleContext(), TInputAutomationServiceFactory.getInstance(), TInputAutomationConfigurationModuleChangeListener.getName());
        TOSGIActivatorUtil.registerAsService(Self.getBundleContext(), TInputAutomationServiceFactory.getInstance(), TInputAutomationRobotChangeListener.getName());
end;
    

// throws Exception
procedure TInputAutomationBundleActivator.useServices;
begin
        TInputAutomationRobotServiceConsumer.Create(Self.getBundleContext()).process();
        TInputAutomationModuleServiceConsumer.Create(Self.getBundleContext()).process();
end;
    

// throws Exception
procedure TInputAutomationBundleActivator.stop(context: TBundleContext);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'stop');
        if not TJava.IsNull(TInputAutomationJFrame.getInstance()) then begin
            TInputAutomationJFrame.destroy();
        end else begin
            Self.logUtil.putF('Nothing to stop', TJava.Box(Self), 'stop');
        end;
end;

initialization
  {AB:INITIALIZATION}
  
  
  {AB:END}

end.

