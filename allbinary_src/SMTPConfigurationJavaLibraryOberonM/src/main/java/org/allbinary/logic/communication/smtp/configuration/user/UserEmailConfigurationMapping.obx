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
// package org.allbinary.logic.communication.smtp.configuration.user
unit UserEmailConfigurationMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, TableMappingInterface, UserEmailConfigurationInterface;

type
  {AB:TYPES}
  TUserEmailConfigurationMapping = class(TInterfacedObject, ITableMappingInterface)
  public
    userEmailConfigurationInterface: IUserEmailConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(userEmailConfigurationInterface_: IUserEmailConfigurationInterface);
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getKey: TObject; virtual;
        function toVector: TBasicArrayList; virtual;
  end;

implementation
uses
  UserEmailConfigurationData, BasicArrayListD, StdUtil;


{AB:CODE}

procedure TUserEmailConfigurationMapping.InitFields;
begin
  
end;

function TUserEmailConfigurationMapping.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserEmailConfigurationMapping.Create(userEmailConfigurationInterface_: IUserEmailConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.userEmailConfigurationInterface := userEmailConfigurationInterface_;
end;
    

function TUserEmailConfigurationMapping.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        Exit(hashMap_);
end;
    

// throws Exception
function TUserEmailConfigurationMapping.getKey: TObject;
begin
        Exit(TJava.Box(TUserEmailConfigurationData.NAME));
end;
    

// throws Exception
function TUserEmailConfigurationMapping.toVector: TBasicArrayList;
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

