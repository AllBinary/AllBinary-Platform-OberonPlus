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
// package org.allbinary.log
unit LOGGING;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TLOGGING = class(TObject)
  public
    name: string;
    class var logging: TBasicArrayList;
    class var GRAPHICSPAINT: TLOGGING;
    class var GRAPHICSCREATION: TLOGGING;
    class var GRAPHICSDELETION: TLOGGING;
    class var LOADINGERROR: TLOGGING;
    class var MENUEVENT: TLOGGING;
    class var MOUSEEVENT: TLOGGING;
    class var KEYEVENT: TLOGGING;
    class var ACTIONEVENT: TLOGGING;
    class var ADJUSTMENTEVENT: TLOGGING;
    class var COMPONENTEVENT: TLOGGING;
    class var CONTAINEREVENT: TLOGGING;
    class var FOCUSEVENT: TLOGGING;
    class var HIERARCHYEVENT: TLOGGING;
    class var INPUTEVENT: TLOGGING;
    class var INVOCATIONEVENT: TLOGGING;
    class var ITEMEVENT: TLOGGING;
    class var PAINTEVENT: TLOGGING;
    class var TEXTEVENT: TLOGGING;
    class var WINDOWEVENT: TLOGGING;
    procedure InitFields;
        constructor Create(value: string);
        class function contains(logType: TLOGGING): Boolean; static;
        function toString: string; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil;


{AB:CODE}

procedure TLOGGING.InitFields;
begin
  
end;
    

constructor TLOGGING.Create(value: string);
begin
    inherited Create;
    InitFields;
        Self.name := value;
        TLOGGING.logging.add(TJava.Box(value));
end;
    

class function TLOGGING.contains(logType: TLOGGING): Boolean;
begin
        Exit(TLOGGING.logging.contains(TJava.Box(logType.toString())));
end;
    

function TLOGGING.toString: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  TLOGGING.logging := TBasicArrayListD.Create();
  TLOGGING.GRAPHICSPAINT := TLOGGING.Create('Graphics Paint');
  TLOGGING.GRAPHICSCREATION := TLOGGING.Create('Graphics Creation');
  TLOGGING.GRAPHICSDELETION := TLOGGING.Create('Graphics Deletion');
  TLOGGING.LOADINGERROR := TLOGGING.Create('Loading Error');
  TLOGGING.MENUEVENT := TLOGGING.Create('Menu Action Event');
  TLOGGING.MOUSEEVENT := TLOGGING.Create('Mouse Action Event');
  TLOGGING.KEYEVENT := TLOGGING.Create('Keyboard Action Event');
  TLOGGING.ACTIONEVENT := TLOGGING.Create('Action Event');
  TLOGGING.ADJUSTMENTEVENT := TLOGGING.Create('Adjustment Action Event');
  TLOGGING.COMPONENTEVENT := TLOGGING.Create('Component Action Event');
  TLOGGING.CONTAINEREVENT := TLOGGING.Create('Container Action Event');
  TLOGGING.FOCUSEVENT := TLOGGING.Create('Focus Action Event');
  TLOGGING.HIERARCHYEVENT := TLOGGING.Create('Hierarchy Action Event');
  TLOGGING.INPUTEVENT := TLOGGING.Create('Input Action Event');
  TLOGGING.INVOCATIONEVENT := TLOGGING.Create('Invocation Action Event');
  TLOGGING.ITEMEVENT := TLOGGING.Create('Item Action Event');
  TLOGGING.PAINTEVENT := TLOGGING.Create('Paint Action Event');
  TLOGGING.TEXTEVENT := TLOGGING.Create('Text Action Event');
  TLOGGING.WINDOWEVENT := TLOGGING.Create('Window Action Event');
  {AB:END}

end.

