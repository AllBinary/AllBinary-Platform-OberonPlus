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
// package org.allbinary
unit DisposalUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, CommonStrings, Resource;

type
  {AB:TYPES}
  TDisposalUtil = class(TObject)
  public
    commonStrings: TCommonStrings;
    class var instance: TDisposalUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TDisposalUtil; static;
        procedure disposeImage(image_: TImage); virtual;
        procedure disposeResource(resource_: TResource); virtual;
  end;

implementation
uses
  SwtMutableImage;


{AB:CODE}

procedure TDisposalUtil.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
end;

constructor TDisposalUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TDisposalUtil.getInstance: TDisposalUtil;
begin
        Exit(TDisposalUtil.instance);
end;
    

procedure TDisposalUtil.disposeImage(image_: TImage);
var
  mutableImage: TSwtMutableImage;
begin
        if (image_) = (nil) then begin
            Exit;
        end;
        if image_.isMutable() then begin
            mutableImage := TSwtMutableImage(TJava.ToObject(image_));
            Self.disposeResource(TResource(TJava.ToObject(mutableImage.getImage())));
        end else begin
        end;
end;
    

procedure TDisposalUtil.disposeResource(resource_: TResource);
begin
        if not (resource_.isDisposed()) then begin
            WriteLn(Self.commonStrings.CLOSE);
            resource_.dispose_();
        end;
end;

initialization
  {AB:INITIALIZATION}
  TDisposalUtil.instance := TDisposalUtil.Create();
  {AB:END}

end.

