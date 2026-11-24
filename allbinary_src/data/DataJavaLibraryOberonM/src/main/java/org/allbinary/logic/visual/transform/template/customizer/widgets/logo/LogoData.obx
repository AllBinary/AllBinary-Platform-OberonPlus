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
// package org.allbinary.logic.visual.transform.template.customizer.widgets.logo
unit LogoData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TLogoData = class(TObject)
  public
    NAME: string;
    IMAGEPATH: string;
    IMAGEFILENAME: string;
    IMAGE: string;
    class var instance: TLogoData;
    procedure InitFields;
        class function getInstance: TLogoData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TLogoData.InitFields;
begin
  Self.NAME := 'LOGO_NAME';
  Self.IMAGEPATH := 'LOGO_IMAGE_PATH';
  Self.IMAGEFILENAME := 'LOGO_IMAGE_FILE_NAME';
  Self.IMAGE := 'LOGO_IMAGE';
end;
    

class function TLogoData.getInstance: TLogoData;
begin
        Exit(TLogoData.instance);
end;
    

constructor TLogoData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TLogoData.instance := TLogoData.Create();
  {AB:END}

end.

