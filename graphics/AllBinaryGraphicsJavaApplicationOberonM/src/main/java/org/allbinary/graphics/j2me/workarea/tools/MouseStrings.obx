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
// package org.allbinary.graphics.j2me.workarea.tools
unit MouseStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMouseStrings = class(TObject)
  public
    MOUSE_PRESSED: string;
    MOUSE_RELEASED: string;
    MOUSE_CLICKED: string;
    MOUSE_DRAGGED: string;
    MOUSE_MOVED: string;
    MOUSE_PRESSED_LABEL: string;
    MOUSE_RELEASED_LABEL: string;
    MOUSE_CLICKED_LABEL: string;
    MOUSE_DRAGGED_LABEL: string;
    MOUSE_MOVED_LABEL: string;
    class var instance: TMouseStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TMouseStrings; static;
  end;

implementation
uses
  CommonSeps;


{AB:CODE}

procedure TMouseStrings.InitFields;
begin
  Self.MOUSE_PRESSED := 'mousePressed';
  Self.MOUSE_RELEASED := 'mouseReleased';
  Self.MOUSE_CLICKED := 'mouseClicked';
  Self.MOUSE_DRAGGED := 'mouseDragged';
  Self.MOUSE_MOVED := 'mouseMoved';
  Self.MOUSE_PRESSED_LABEL := 'MousePressed' + TJava.ToString(TCommonSeps.getInstance().COLON_SEP);
  Self.MOUSE_RELEASED_LABEL := 'MouseReleased' + TJava.ToString(TCommonSeps.getInstance().COLON_SEP);
  Self.MOUSE_CLICKED_LABEL := 'MouseClicked' + TJava.ToString(TCommonSeps.getInstance().COLON_SEP);
  Self.MOUSE_DRAGGED_LABEL := 'MouseDragged' + TJava.ToString(TCommonSeps.getInstance().COLON_SEP);
  Self.MOUSE_MOVED_LABEL := 'MouseMoved' + TJava.ToString(TCommonSeps.getInstance().COLON_SEP);
end;

constructor TMouseStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TMouseStrings.getInstance: TMouseStrings;
begin
        Exit(TMouseStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TMouseStrings.instance := TMouseStrings.Create();
  {AB:END}

end.

