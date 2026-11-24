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
// package org.allbinary.graphics.color
unit ColorUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Color;

type
  {AB:TYPES}
  TColorUtil = class(TObject)
  public
    class var instance: TColorUtil;
    constructor Create;
        class function getInstance: TColorUtil; static;
        function isGreyishOrWhiteLike(color_: TColor): Boolean; virtual;
        function isDark(color_: TColor): Boolean; virtual;
  end;

implementation

{AB:CODE}

constructor TColorUtil.Create;
begin
  inherited Create;
end;
    

class function TColorUtil.getInstance: TColorUtil;
begin
        Exit(TColorUtil.instance);
end;
    

function TColorUtil.isGreyishOrWhiteLike(color_: TColor): Boolean;
begin
        if (((Abs((color_.getRed()) - (color_.getGreen()))) > (20)) or ((Abs((color_.getRed()) - (color_.getBlue()))) > (20))) or ((Abs((color_.getGreen()) - (color_.getBlue()))) > (20)) then begin
            Exit(False);
        end;
        Exit(True);
end;
    

function TColorUtil.isDark(color_: TColor): Boolean;
begin
        if (((color_.getRed()) < ($77)) and ((color_.getRed()) < ($77))) and ((color_.getRed()) < ($77)) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TColorUtil.instance := TColorUtil.Create();
  {AB:END}

end.

