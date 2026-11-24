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
// package org.allbinary.image.opengles
unit OpenGLESImageExclusionUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, BasicArrayList;

type
  {AB:TYPES}
  TOpenGLESImageExclusionUtil = class(TObject)
  public
    EXCLUSION: string;
    list: TBasicArrayList;
    class var instance: TOpenGLESImageExclusionUtil;
    procedure InitFields;
        class function getInstance: TOpenGLESImageExclusionUtil; static;
        constructor Create;
        function isCustomScaling(image_: TImage): Boolean; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TOpenGLESImageExclusionUtil.InitFields;
begin
  Self.EXCLUSION := 'font';
  Self.list := TBasicArrayListD.Create();
end;
    

class function TOpenGLESImageExclusionUtil.getInstance: TOpenGLESImageExclusionUtil;
begin
        Exit(TOpenGLESImageExclusionUtil.instance);
end;
    

constructor TOpenGLESImageExclusionUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TOpenGLESImageExclusionUtil.isCustomScaling(image_: TImage): Boolean;
var
  imageName: string;
  isNormalScaling: Boolean;
  size: Integer;
  name: string;
  index: Integer;
begin
        imageName := image_.getName();
        isNormalScaling := ((Self.list.size()) = (0)) or (imageName.StartsWith(Self.EXCLUSION));
        if isNormalScaling then begin
            Exit(False);
        end else begin
            size := Self.list.size();
            
            for index := 0 to size - 1 do begin
                name := TJava.UnboxString(TJava.ToObject(Self.list.get(index)));
                if imageName.StartsWith(name) then begin
                    isNormalScaling := True;
                end;
            end;
        end;
        if isNormalScaling then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLESImageExclusionUtil.instance := TOpenGLESImageExclusionUtil.Create();
  {AB:END}

end.

