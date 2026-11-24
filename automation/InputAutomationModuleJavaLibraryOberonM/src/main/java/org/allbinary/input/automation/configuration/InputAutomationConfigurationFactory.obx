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
// package org.allbinary.input.automation.configuration
unit InputAutomationConfigurationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, InputAutomationConfiguration;

type
  {AB:TYPES}
  TInputAutomationConfigurationFactory = class(TObject)
  public
    logUtil: TLogUtil;
    inputAutomationConfiguration: TInputAutomationConfiguration;
    class var instance: TInputAutomationConfigurationFactory;
    procedure InitFields;
        class function getInstance: TInputAutomationConfigurationFactory; static;
        constructor Create;
        procedure init(abeClientInformation: IAbeClientInformationInterface); virtual;
  end;

implementation
uses
  InputAutomationModuleConfiguration, CommonStrings;


{AB:CODE}

procedure TInputAutomationConfigurationFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.inputAutomationConfiguration := nil;
end;
    

class function TInputAutomationConfigurationFactory.getInstance: TInputAutomationConfigurationFactory;
begin
        Exit(TInputAutomationConfigurationFactory.instance);
end;
    

constructor TInputAutomationConfigurationFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TInputAutomationConfigurationFactory.init(abeClientInformation: IAbeClientInformationInterface);
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  INPUT_AUTOMATION_CONFIGURATION: string;
  file_: TFile;
  jaxbContext_: TJAXBContext;
  unmarshaller_: TUnmarshaller;
  root: TJAXBElement<TInputAutomationConfiguration>;
  inputAutomationModuleConfigurationList: IList<TInputAutomationModuleConfiguration>;
  size: Integer;
  inputAutomationModuleConfiguration_: TInputAutomationModuleConfiguration;
  index: Integer;
begin
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        INPUT_AUTOMATION_CONFIGURATION := 'InputAutomationConfiguration';
        file_ := TInputAutomationConfiguration.getFile();
        if file_.isFile() then begin
            logUtil_.putFS('LoadingConfiguration', INPUT_AUTOMATION_CONFIGURATION, commonStrings_.INIT);
            jaxbContext_ := TJAXBContext.newInstance(TInputAutomationConfiguration);
            unmarshaller_ := jaxbContext_.createUnmarshaller();
            root := unmarshaller_.unmarshal(TStreamSource.Create(TFileInputStream.Create(file_)), TInputAutomationConfiguration);
            Self.inputAutomationConfiguration := TInputAutomationConfiguration(TJava.ToObject(root.getValue()));
            inputAutomationModuleConfigurationList := Self.inputAutomationConfiguration.getInputAutomationModuleConfigurationList();
            logUtil_.putFS('isInstalled: ' + TJava.ToString(Self.inputAutomationConfiguration.isInstalled()) + ' inputAutomationModuleConfigurationList: ' + TJava.ToString(inputAutomationModuleConfigurationList), INPUT_AUTOMATION_CONFIGURATION, commonStrings_.INIT);
            if (inputAutomationModuleConfigurationList) <> (nil) then begin
                size := inputAutomationModuleConfigurationList.size();
                
                for index := 0 to size - 1 do begin
                    inputAutomationModuleConfiguration_ := inputAutomationModuleConfigurationList.get(index);
                    inputAutomationModuleConfiguration_.init(abeClientInformation);
                end;
            end;
            logUtil_.putFS('LoadedConfiguration', INPUT_AUTOMATION_CONFIGURATION, commonStrings_.INIT);
        end else begin
            logUtil_.putFS('New Configuration', INPUT_AUTOMATION_CONFIGURATION, commonStrings_.INIT);
            Self.inputAutomationConfiguration := TInputAutomationConfiguration.Create();
        end;
end;

initialization
  {AB:INITIALIZATION}
  TInputAutomationConfigurationFactory.instance := TInputAutomationConfigurationFactory.Create();
  {AB:END}

end.

