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
// package org.allbinary.gui.dialog
unit ExitCloseListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CloseJDialogListenerInterface;

type
  {AB:TYPES}
  TExitCloseListener = class(TInterfacedObject, ICloseJDialogListenerInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        procedure onClose; virtual;
  end;

implementation

{AB:CODE}

function TExitCloseListener.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TExitCloseListener.Create;
begin
    inherited Create;
end;
    

procedure TExitCloseListener.onClose;
begin
        Halt(-1);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

