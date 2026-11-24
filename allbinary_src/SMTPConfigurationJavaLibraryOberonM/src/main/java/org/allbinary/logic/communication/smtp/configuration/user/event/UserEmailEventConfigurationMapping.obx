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
// package org.allbinary.logic.communication.smtp.configuration.user.event
unit UserEmailEventConfigurationMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, TableMappingInterface, UserEmailEventConfigurationInterface;

type
  {AB:TYPES}
  TUserEmailEventConfigurationMapping = class(TInterfacedObject, ITableMappingInterface)
  public
    userEmailEventConfigurationInterface: IUserEmailEventConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(userEmailEventConfigurationInterface_: IUserEmailEventConfigurationInterface);
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getKey: TObject; virtual;
        function toVector: TBasicArrayList; virtual;
  end;

implementation
uses
  UserEmailEventConfigurationData, BasicArrayListD, StdUtil;


{AB:CODE}

procedure TUserEmailEventConfigurationMapping.InitFields;
begin
  
end;

function TUserEmailEventConfigurationMapping.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserEmailEventConfigurationMapping.Create(userEmailEventConfigurationInterface_: IUserEmailEventConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.userEmailEventConfigurationInterface := userEmailEventConfigurationInterface_;
end;
    

function TUserEmailEventConfigurationMapping.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TUserEmailEventConfigurationData.NAME), TJava.Box(Self.userEmailEventConfigurationInterface.getName()));
        hashMap_.put(TJava.Box(TUserEmailEventConfigurationData.LISTENER_CLASSPATH), TJava.Box(Self.userEmailEventConfigurationInterface.getEventListenerClassPath()));
        Exit(hashMap_);
end;
    

// throws Exception
function TUserEmailEventConfigurationMapping.getKey: TObject;
begin
        Exit(TJava.Box(TUserEmailEventConfigurationData.NAME));
end;
    

// throws Exception
function TUserEmailEventConfigurationMapping.toVector: TBasicArrayList;
var
  vector: TBasicArrayList;
begin
        vector := TBasicArrayListD.Create();
        vector.add(TJava.Box(Self.userEmailEventConfigurationInterface.getName()));
        vector.add(TJava.Box(Self.userEmailEventConfigurationInterface.getEventListenerClassPath()));
        Exit(vector);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

