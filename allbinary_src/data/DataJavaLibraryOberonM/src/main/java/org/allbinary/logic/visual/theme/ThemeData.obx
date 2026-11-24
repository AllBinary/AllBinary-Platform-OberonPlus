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
// package org.allbinary.logic.visual.theme
unit ThemeData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TThemeData = class(TObject)
  public
    NAME: string;
    PATH: string;
    PREVIEW_IMAGE_NAME: string;
    PREVIEW_IMAGE_PATH: string;
    class var instance: TThemeData;
    procedure InitFields;
        class function getInstance: TThemeData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TThemeData.InitFields;
begin
  Self.NAME := 'THEME_NAME';
  Self.PATH := 'THEME_PATH';
  Self.PREVIEW_IMAGE_NAME := 'THEME_PREVIEW_IMAGE_NAME';
  Self.PREVIEW_IMAGE_PATH := 'THEME_PREVIEW_IMAGE_PATH';
end;
    

class function TThemeData.getInstance: TThemeData;
begin
        Exit(TThemeData.instance);
end;
    

constructor TThemeData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TThemeData.instance := TThemeData.Create();
  {AB:END}

end.

