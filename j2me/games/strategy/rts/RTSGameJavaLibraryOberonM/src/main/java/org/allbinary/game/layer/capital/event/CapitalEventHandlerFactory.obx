{
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.capital.event
unit CapitalEventHandlerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Group, CapitalEventHandler;

type
  {AB:TYPES}
  TCapitalEventHandlerFactory = class(TObject)
  public
    class var capitalEventHandlerArray: TArray<TCapitalEventHandler>;
    constructor Create;
    class procedure StaticInitializer; static;
        class function getInstance(groupInterface: TGroup): TCapitalEventHandler; static;
        class procedure removeAll; static;
  end;

implementation

{AB:CODE}

constructor TCapitalEventHandlerFactory.Create;
begin
  inherited Create;
end;
    

class procedure TCapitalEventHandlerFactory.StaticInitializer;
var
  index: Integer;
begin
        for index := (System.Length(TCapitalEventHandlerFactory.capitalEventHandlerArray)) - (1) downto 0 do begin
            TCapitalEventHandlerFactory.capitalEventHandlerArray[index] := TCapitalEventHandler.Create();
        end;
end;
    

class function TCapitalEventHandlerFactory.getInstance(groupInterface: TGroup): TCapitalEventHandler;
var
  groupId: Integer;
begin
        groupId := Integer(Trunc(groupInterface.getGroupId()));
        Exit(TCapitalEventHandlerFactory.capitalEventHandlerArray[groupId]);
end;
    

class procedure TCapitalEventHandlerFactory.removeAll;
var
  index: Integer;
begin
        for index := (System.Length(TCapitalEventHandlerFactory.capitalEventHandlerArray)) - (1) downto 0 do begin
            TCapitalEventHandlerFactory.capitalEventHandlerArray[index].removeAllListeners();
        end;
end;

initialization
  {AB:INITIALIZATION}
  TCapitalEventHandlerFactory.capitalEventHandlerArray := TJava.NewArray<TCapitalEventHandler>(10);
  TCapitalEventHandlerFactory.StaticInitializer;
  {AB:END}

end.

