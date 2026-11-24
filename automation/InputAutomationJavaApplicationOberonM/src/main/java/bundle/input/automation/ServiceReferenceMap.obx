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
unit ServiceReferenceMap;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ServiceReference;

type
  {AB:TYPES}
  TServiceReferenceMap = class(TInterfacedObject, IMap)
  public
    serviceReference: TServiceReference;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(serviceReference_: TServiceReference);
        function size: Integer; virtual;
        function isEmpty: Boolean; virtual;
        function containsKey(key: TObject): Boolean; virtual;
        function containsValue(value: TObject): Boolean; virtual;
        function get(key: TObject): TObject; virtual;
        function put(key: TObject; value: TObject): TObject; virtual;
        function remove(key: TObject): TObject; virtual;
        procedure putAll(m: IMap); virtual;
        procedure clear; virtual;
        function keySet: ISet; virtual;
        function values: ICollection<TObject>; virtual;
        function entrySet: ISet; virtual;
        class function toString(map: IMap): string; static;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TServiceReferenceMap.InitFields;
begin
  
end;

function TServiceReferenceMap.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TServiceReferenceMap.Create(serviceReference_: TServiceReference);
begin
    inherited Create;
    InitFields;
        Self.serviceReference := serviceReference_;
end;
    

function TServiceReferenceMap.size: Integer;
begin
        Exit(-1);
end;
    

function TServiceReferenceMap.isEmpty: Boolean;
begin
        Exit(False);
end;
    

function TServiceReferenceMap.containsKey(key: TObject): Boolean;
begin
        Exit(False);
end;
    

function TServiceReferenceMap.containsValue(value: TObject): Boolean;
begin
        Exit(False);
end;
    

function TServiceReferenceMap.get(key: TObject): TObject;
begin
        Exit(TJava.Box(Self.serviceReference.getProperty(TJava.UnboxString(TJava.ToObject(key)))));
end;
    

function TServiceReferenceMap.put(key: TObject; value: TObject): TObject;
begin
        Exit(nil);
end;
    

function TServiceReferenceMap.remove(key: TObject): TObject;
begin
        Exit(nil);
end;
    

procedure TServiceReferenceMap.putAll(m: IMap);
begin
end;
    

procedure TServiceReferenceMap.clear;
begin
end;
    

function TServiceReferenceMap.keySet: ISet;
var
  keyStringArray: TArray<string>;
begin
        keyStringArray := Self.serviceReference.getPropertyKeys();
        Exit(nil);
end;
    

function TServiceReferenceMap.values: ICollection<TObject>;
begin
        Exit(nil);
end;
    

function TServiceReferenceMap.entrySet: ISet;
begin
        Exit(nil);
end;
    

class function TServiceReferenceMap.toString(map: IMap): string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

