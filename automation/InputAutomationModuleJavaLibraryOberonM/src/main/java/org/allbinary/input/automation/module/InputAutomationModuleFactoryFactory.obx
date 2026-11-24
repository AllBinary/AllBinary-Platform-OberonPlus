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
// package org.allbinary.input.automation.module
unit InputAutomationModuleFactoryFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputAutomationModuleConfiguration, InputAutomationModuleConfigurations, LogUtil, DefaultListModelHelper, InputAutomationModuleFactoryInterface;

type
  {AB:TYPES}
  TInputAutomationModuleFactoryFactory = class(TObject)
  public
    logUtil: TLogUtil;
    hashMap: TJavaHashMap<TObject, TObject>;
    defaultListModelHelper: TDefaultListModelHelper;
    helpSetListenerInterface: THelpSetListener;
    procedure InitFields;
        constructor Create(inputAutomationModuleConfigurations_: TInputAutomationModuleConfigurations; helpSetListenerInterface: THelpSetListener);
        procedure add(inputAutomationModuleConfiguration_: TInputAutomationModuleConfiguration);
        function getListModel: TListModel; virtual;
        function getInstance(moduleName: string): IInputAutomationModuleFactoryInterface; virtual;
  end;

implementation
uses
  StdUtil, JavaHelpSetNotifier, CommonStrings;


{AB:CODE}

procedure TInputAutomationModuleFactoryFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;
    

constructor TInputAutomationModuleFactoryFactory.Create(inputAutomationModuleConfigurations_: TInputAutomationModuleConfigurations; helpSetListenerInterface: THelpSetListener);
var
  collection: ICollection;
  iterator: IIterator;
  inputAutomationModuleConfiguration_: TInputAutomationModuleConfiguration;
begin
    inherited Create;
    InitFields;
        Self.helpSetListenerInterface := helpSetListenerInterface;
        Self.defaultListModelHelper := TDefaultListModelHelper.Create();
        Self.hashMap := TStdUtil.getInstance().createHashMap();
        collection := inputAutomationModuleConfigurations_.getHashMap().values();
        iterator := collection.iterator();
        
        while iterator.hasNext() do begin
            inputAutomationModuleConfiguration_ := TInputAutomationModuleConfiguration(TJava.ToObject(iterator.next()));
            Self.add(inputAutomationModuleConfiguration_);
        end;
        Self.defaultListModelHelper.initDefaultModelList();
        Self.logUtil.putF('Loaded ' + IntToStr(Self.hashMap.size()) + '/' + TJava.ToString(Self.defaultListModelHelper.getListModel().getSize()) + ' Input Automation Modules', TJava.Box(Self), 'Contructor');
end;
    

procedure TInputAutomationModuleFactoryFactory.add(inputAutomationModuleConfiguration_: TInputAutomationModuleConfiguration);
var
  inputAutomationModuleInterface: IInputAutomationModuleFactoryInterface;
  helpSet_: THelpSet;
  helpSetEvent_: THelpSetEvent;
begin
        inputAutomationModuleInterface := inputAutomationModuleConfiguration_.getInputAutomationModuleInterface();
        Self.hashMap.put(TJava.Box(inputAutomationModuleConfiguration_.getName()), TJava.Box(inputAutomationModuleInterface));
        Self.defaultListModelHelper.add(inputAutomationModuleConfiguration_.getName());
        helpSet_ := inputAutomationModuleInterface.getHelpSet();
        if not (TJavaHelpSetNotifier.isNotified(helpSet_)) then begin
            helpSetEvent_ := THelpSetEvent.Create(Self, helpSet_, THelpSetEvent.HELPSET_ADDED);
            Self.helpSetListenerInterface.helpSetAdded(helpSetEvent_);
        end;
end;
    

function TInputAutomationModuleFactoryFactory.getListModel: TListModel;
begin
        Exit(TListModel(TJava.ToObject(Self.defaultListModelHelper.getListModel())));
end;
    

function TInputAutomationModuleFactoryFactory.getInstance(moduleName: string): IInputAutomationModuleFactoryInterface;
var
  commonStrings_: TCommonStrings;
  inputAutomationModuleFactoryInterface_: IInputAutomationModuleFactoryInterface;
begin
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF('Getting Module: ' + moduleName, TJava.Box(Self), commonStrings_.GET_INSTANCE);
        inputAutomationModuleFactoryInterface_ := (TJava.ToObject(Self.hashMap.get(TJava.Box(moduleName))) as IInputAutomationModuleFactoryInterface);
        if (inputAutomationModuleFactoryInterface_) = (nil) then begin
            Self.logUtil.putF('Module: ' + moduleName + ' was null', TJava.Box(Self), commonStrings_.GET_INSTANCE);
        end;
        Exit(inputAutomationModuleFactoryInterface_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

