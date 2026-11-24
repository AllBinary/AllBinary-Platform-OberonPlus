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
// package org.allbinary.data.resource
unit ResourceUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Activity, Context, Resources, LogUtil, ABHashtable;

type
  {AB:TYPES}
  // Android
  TResourceUtil = class(TObject)
  public
    logUtil: TLogUtil;
    context: TObject;
    resources: TObject;
    hashMap: TABHashtable<TObject, TObject>;
    class var instance: TResourceUtil;
    procedure InitFields;
        class function getInstance: TResourceUtil; static;
        constructor Create;
        procedure setLoadingPaths(path: string; ext: string); virtual;
        function getContext: TContext; virtual;
        procedure setContextFromActivity(activity_: TActivity); virtual;
        procedure setContext(aContext: TContext); virtual;
        function getResourceId(resource: string): Integer; virtual;
        procedure addResource(resource: string; value: Integer); virtual;
        function containsDuplicate(resource: string; value: Integer): Boolean;
        procedure setResources(resources_: TResources); virtual;
        function getResourceAsStream(resource: string): TInputStream; virtual;
  end;

implementation
uses
  DebugFactory, NoDebug, NullUtil, StdUtil, ForcedLogUtil, PreLogUtil, StringMaker, CommonSeps, CommonStrings, HashtableUtil;


{AB:CODE}

procedure TResourceUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.context := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  Self.resources := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  Self.hashMap := TStdUtil.getInstance().createHashtable();
end;
    

class function TResourceUtil.getInstance: TResourceUtil;
begin
        Exit(TResourceUtil.instance);
end;
    

constructor TResourceUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TResourceUtil.setLoadingPaths(path: string; ext: string);
begin
        Self.logUtil.putF(TCommonStrings.getInstance().NOT_IMPLEMENTED, TJava.Box(Self), 'setLoadingPaths');
end;
    

function TResourceUtil.getContext: TContext;
begin
        Exit(TContext(TJava.ToObject(Self.context)));
end;
    

procedure TResourceUtil.setContextFromActivity(activity_: TActivity);
begin
        Self.context := TJava.Box(activity_);
end;
    

procedure TResourceUtil.setContext(aContext: TContext);
begin
        Self.context := TJava.Box(aContext);
end;
    

function TResourceUtil.getResourceId(resource: string): Integer;
var
  value: Integer;
begin
        value := Integer(Self.hashMap.get(TJava.Box(resource)));
        if (TDebugFactory.getInstance()) <> (TNoDebug.getInstance()) then begin
            TPreLogUtil.put(TStringMaker.Create().append(resource).append(TCommonSeps.getInstance().COLON).append(value.toString()).toString(), TJava.Box(Self), 'getResourceId');
        end;
        Exit(value);
end;
    

procedure TResourceUtil.addResource(resource: string; value: Integer);
begin
        if (TDebugFactory.getInstance()) <> (TNoDebug.getInstance()) then begin
            TPreLogUtil.put(TStringMaker.Create().append(resource).append(TCommonSeps.getInstance().COLON).append(value.toString()).toString(), TJava.Box(Self), 'addResource');
            if Self.containsDuplicate(resource, value) then begin
                TForcedLogUtil.log(TStringMaker.Create().append('Found Duplicate Resource: ').append(resource).toString(), TJava.Box(Self));
            end;
        end;
        Self.hashMap.put(TJava.Box(resource), TJava.Box(value));
end;
    

function TResourceUtil.containsDuplicate(resource: string; value: Integer): Boolean;
var
  objectArray: TArray<TObject>;
  integer_: Integer;
  index: Integer;
begin
        objectArray := THashtableUtil.getInstance().getKeysAsArray(Self.hashMap);
        index := System.Length(objectArray);
        while (TJava.PreDec(index)) >= (0) do begin
            integer_ := Integer(Self.hashMap.get(TJava.Box(TJava.Box(objectArray[index]))));
            if not TJava.Equals(resource, objectArray[index]) then begin
                if (value) <> (integer_) then begin
                    if ((value)) = ((integer_)) then begin
                        Exit(True);
                    end;
                end;
            end;
        end;
        Exit(False);
end;
    

procedure TResourceUtil.setResources(resources_: TResources);
begin
        Self.logUtil.putF(TStringMaker.Create().append('Resource Loader: ').append(TJava.ToObject(resources_).ClassType.ClassName).toString(), TJava.Box(Self), 'setResources');
        Self.resources := TJava.Box(resources_);
end;
    

// throws Exception
function TResourceUtil.getResourceAsStream(resource: string): TInputStream;
var
  integer_: Integer;
  id: Integer;
  resources_: TResources;
  inputStream_: TInputStream;
begin
        integer_ := Integer(Self.hashMap.get(TJava.Box(resource)));
        id := (integer_);
        resources_ := (TResources(TJava.ToObject(Self.resources)));
        inputStream_ := resources_.openRawResource(id);
        if (inputStream_) <> (nil) then begin
            Exit(inputStream_);
        end;
        Exit(inputStream_);
end;

initialization
  {AB:INITIALIZATION}
  TResourceUtil.instance := TResourceUtil.Create();
  {AB:END}

end.

