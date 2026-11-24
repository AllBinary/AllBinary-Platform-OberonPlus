{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.platform
unit ThreedObjResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable;

type
  {AB:TYPES}
  TThreedObjResources = class(TObject)
  public
    hashtable: TABHashtable<TObject, TObject>;
    class var instance: TThreedObjResources;
    procedure InitFields;
    constructor Create;
        class function getInstance: TThreedObjResources; static;
        function get(resourceName: string): string; virtual;
  end;

implementation
uses
  StdUtil;


{AB:CODE}

procedure TThreedObjResources.InitFields;
begin
  Self.hashtable := TStdUtil.getInstance().createHashtable();
end;

constructor TThreedObjResources.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TThreedObjResources.getInstance: TThreedObjResources;
begin
        Exit(TThreedObjResources.instance);
end;
    

function TThreedObjResources.get(resourceName: string): string;
var
  resourceName2: string;
begin
        resourceName2 := TJava.UnboxString(TJava.ToObject(Self.hashtable.get(TJava.Box(resourceName))));
        if (resourceName2) <> ('') then begin
            Exit(resourceName2);
        end;
        Exit(resourceName);
end;

initialization
  {AB:INITIALIZATION}
  TThreedObjResources.instance := TThreedObjResources.Create();
  {AB:END}

end.

