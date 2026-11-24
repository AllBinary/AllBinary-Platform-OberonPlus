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
// package org.allbinary.business.context.configuration
unit ContextConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, EmailServerConfigurationInterface, CommonStrings, ContextConfigurationInterface;

type
  {AB:TYPES}
  TContextConfiguration = class(TInterfacedObject, IContextConfigurationInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    emailServerConfigurationInterface: IEmailServerConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function getEmailServerConfigurationInterface: IEmailServerConfigurationInterface; virtual;
        procedure setEmailServerConfigurationInterface(emailServerConfigurationInterface_: IEmailServerConfigurationInterface); virtual;
  end;

implementation
uses
  EmailServerConfiguration;


{AB:CODE}

procedure TContextConfiguration.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TContextConfiguration.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TContextConfiguration.Create;
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'ContextConfiguration');
        Self.setEmailServerConfigurationInterface((TJava.ToObject(TEmailServerConfiguration.Create()) as IEmailServerConfigurationInterface));
end;
    

constructor TContextConfiguration.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'ContextConfiguration(HashMap)');
        Self.setEmailServerConfigurationInterface((TJava.ToObject(TEmailServerConfiguration.Create(hashMap_)) as IEmailServerConfigurationInterface));
end;
    

function TContextConfiguration.getEmailServerConfigurationInterface: IEmailServerConfigurationInterface;
begin
        Exit(Self.emailServerConfigurationInterface);
end;
    

procedure TContextConfiguration.setEmailServerConfigurationInterface(emailServerConfigurationInterface_: IEmailServerConfigurationInterface);
begin
        Self.emailServerConfigurationInterface := emailServerConfigurationInterface_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

