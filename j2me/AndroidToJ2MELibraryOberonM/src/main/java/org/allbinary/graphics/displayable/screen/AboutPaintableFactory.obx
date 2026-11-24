{

  AllBinary Open License Version 1
  Copyright (c) 2022 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
  
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
unit AboutPaintableFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Paintable;

type
  {AB:TYPES}
  TAboutPaintableFactory = class(TObject)
  public
    paintableArray: TArray<TPaintable>;
    class var instance: TAboutPaintableFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAboutPaintableFactory; static;
  end;

implementation
uses
  NullPaintable;


{AB:CODE}

procedure TAboutPaintableFactory.InitFields;
begin
  Self.paintableArray := TArray<TPaintable>.Create(TNullPaintable.getInstance());
end;

constructor TAboutPaintableFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAboutPaintableFactory.getInstance: TAboutPaintableFactory;
begin
        Exit(TAboutPaintableFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TAboutPaintableFactory.instance := TAboutPaintableFactory.Create();
  {AB:END}

end.

