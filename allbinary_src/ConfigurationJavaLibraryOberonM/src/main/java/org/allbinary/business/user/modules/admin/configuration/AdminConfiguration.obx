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
// package org.allbinary.business.user.modules.admin.configuration
unit AdminConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ContextConfigurationInterface, LogUtil, CommonStrings, AdminConfigurationInterface;

type
  {AB:TYPES}
  TAdminConfiguration = class(TInterfacedObject, IAdminConfigurationInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    contextConfigurationInterface: IContextConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(request: THttpServletRequest); overload;
        constructor Create(storeHashMap: TJavaHashMap<TObject, TObject>); overload;
        procedure getFormData(storeHashMap: TJavaHashMap<TObject, TObject>);
        procedure write; virtual;
        function getContextConfigurationInterface: IContextConfigurationInterface; virtual;
        procedure setContextConfigurationInterface(contextConfigurationInterface_: IContextConfigurationInterface); virtual;
  end;

implementation
uses
  AdminConfigurationData, ContextConfiguration, ContextConfigurationData, ContextConfigurationDomDocumentMapping, ContextConfigurationInterfaceFactory, ContextConfigurationPathUtil, RequestParams, CryptFileWriter;


{AB:CODE}

procedure TAdminConfiguration.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TAdminConfiguration.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAdminConfiguration.Create;
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.contextConfigurationInterface := TContextConfigurationInterfaceFactory.getInstance().getInstance(TAdminConfigurationData.CONTEXTNAME);
end;
    

constructor TAdminConfiguration.Create(request: THttpServletRequest);
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.getFormData(TRequestParams.Create(request).toHashMap());
end;
    

constructor TAdminConfiguration.Create(storeHashMap: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.getFormData(storeHashMap);
end;
    

// throws Exception
procedure TAdminConfiguration.getFormData(storeHashMap: TJavaHashMap<TObject, TObject>);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getFormData');
        Self.setContextConfigurationInterface((TJava.ToObject(TContextConfiguration.Create(storeHashMap)) as IContextConfigurationInterface));
end;
    

// throws Exception
procedure TAdminConfiguration.write;
var
  contextConfigurationDomDocumentMapping_: TContextConfigurationDomDocumentMapping;
  cryptFileWriter_: TCryptFileWriter;
begin
    TJava.MonitorEnter(Self);
    try
        contextConfigurationDomDocumentMapping_ := TContextConfigurationDomDocumentMapping.Create(Self.getContextConfigurationInterface());
        cryptFileWriter_ := TCryptFileWriter.Create(TContextConfigurationData.getInstance().UNCRYPTED_EXTENSION, TContextConfigurationData.getInstance().ENCRYPTED_EXTENSION);
        cryptFileWriter_.write(TContextConfigurationPathUtil.getAbPath(TAdminConfigurationData.CONTEXTNAME), contextConfigurationDomDocumentMapping_.toXmlDoc());
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TAdminConfiguration.getContextConfigurationInterface: IContextConfigurationInterface;
begin
        Exit(Self.contextConfigurationInterface);
end;
    

procedure TAdminConfiguration.setContextConfigurationInterface(contextConfigurationInterface_: IContextConfigurationInterface);
begin
        Self.contextConfigurationInterface := contextConfigurationInterface_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

