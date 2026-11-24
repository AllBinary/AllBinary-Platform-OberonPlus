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
// package org.allbinary.logic.communication.smtp.configuration.server
unit EmailServerConfigurationMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, TableMappingInterface, EmailServerConfigurationInterface;

type
  {AB:TYPES}
  TEmailServerConfigurationMapping = class(TInterfacedObject, ITableMappingInterface)
  public
    emailServerConfigurationInterface: IEmailServerConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(emailServerConfigurationInterface_: IEmailServerConfigurationInterface);
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getKey: TObject; virtual;
        function toVector: TBasicArrayList; virtual;
  end;

implementation
uses
  EmailServerConfigurationData, BasicArrayListD, StdUtil;


{AB:CODE}

procedure TEmailServerConfigurationMapping.InitFields;
begin
  
end;

function TEmailServerConfigurationMapping.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TEmailServerConfigurationMapping.Create(emailServerConfigurationInterface_: IEmailServerConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.emailServerConfigurationInterface := emailServerConfigurationInterface_;
end;
    

function TEmailServerConfigurationMapping.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TEmailServerConfigurationData.SERVER), TJava.Box(Self.emailServerConfigurationInterface.getSmtpServer()));
        hashMap_.put(TJava.Box(TEmailServerConfigurationData.ACCOUNT), TJava.Box(Self.emailServerConfigurationInterface.getAccountName()));
        hashMap_.put(TJava.Box(TEmailServerConfigurationData.PASSWORD), TJava.Box(Self.emailServerConfigurationInterface.getPassword()));
        Exit(hashMap_);
end;
    

// throws Exception
function TEmailServerConfigurationMapping.getKey: TObject;
begin
        Exit(TJava.Box(TEmailServerConfigurationData.NAME));
end;
    

// throws Exception
function TEmailServerConfigurationMapping.toVector: TBasicArrayList;
var
  vector: TBasicArrayList;
begin
        vector := TBasicArrayListD.Create();
        vector.add(TJava.Box(Self.emailServerConfigurationInterface.getSmtpServer()));
        Exit(vector);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

