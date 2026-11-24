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
unit UserEmailEventsConfigurationMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, TableMappingInterface, UserEmailEventsConfigurationInterface;

type
  {AB:TYPES}
  TUserEmailEventsConfigurationMapping = class(TInterfacedObject, ITableMappingInterface)
  public
    userEmailEventsConfigurationInterface: IUserEmailEventsConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(userEmailEventsConfigurationInterface_: IUserEmailEventsConfigurationInterface);
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getKey: TObject; virtual;
        function toVector: TBasicArrayList; virtual;
  end;

implementation
uses
  UserEmailEventsConfigurationData, BasicArrayListD, StdUtil;


{AB:CODE}

procedure TUserEmailEventsConfigurationMapping.InitFields;
begin
  
end;

function TUserEmailEventsConfigurationMapping.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserEmailEventsConfigurationMapping.Create(userEmailEventsConfigurationInterface_: IUserEmailEventsConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.userEmailEventsConfigurationInterface := userEmailEventsConfigurationInterface_;
end;
    

function TUserEmailEventsConfigurationMapping.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        Exit(hashMap_);
end;
    

// throws Exception
function TUserEmailEventsConfigurationMapping.getKey: TObject;
begin
        Exit(TJava.Box(TUserEmailEventsConfigurationData.NAME));
end;
    

// throws Exception
function TUserEmailEventsConfigurationMapping.toVector: TBasicArrayList;
var
  vector: TBasicArrayList;
begin
        vector := TBasicArrayListD.Create();
        Exit(vector);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

