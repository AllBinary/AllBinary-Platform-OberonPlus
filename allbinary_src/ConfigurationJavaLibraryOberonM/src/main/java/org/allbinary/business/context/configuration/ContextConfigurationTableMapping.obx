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
unit ContextConfigurationTableMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, TableMappingInterface, ContextConfigurationInterface;

type
  {AB:TYPES}
  TContextConfigurationTableMapping = class(TInterfacedObject, ITableMappingInterface)
  public
    contextConfigurationInterface: IContextConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(contextConfigurationInterface_: IContextConfigurationInterface);
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getKey: TObject; virtual;
        function toVector: TBasicArrayList; virtual;
  end;

implementation
uses
  ContextConfigurationData, BasicArrayListD, StdUtil;


{AB:CODE}

procedure TContextConfigurationTableMapping.InitFields;
begin
  
end;

function TContextConfigurationTableMapping.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TContextConfigurationTableMapping.Create(contextConfigurationInterface_: IContextConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.contextConfigurationInterface := contextConfigurationInterface_;
end;
    

function TContextConfigurationTableMapping.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        Exit(hashMap_);
end;
    

// throws Exception
function TContextConfigurationTableMapping.getKey: TObject;
begin
        Exit(TJava.Box(TContextConfigurationData.getInstance().NAME));
end;
    

// throws Exception
function TContextConfigurationTableMapping.toVector: TBasicArrayList;
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

