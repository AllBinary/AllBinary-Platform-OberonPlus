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
// package org.allbinary.android.input.motion.button
unit TouchButtonAndroidResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Init;

type
  {AB:TYPES}
  TTouchButtonAndroidResources = class(TInit)
  public
    constructor Create;
        procedure init; override;
  end;

implementation
uses
  AndroidResources, ResourceUtil, CommonButtons, TouchButtonBlankResource, TouchButtonDownResource, TouchButtonGenericActionResource, TouchButtonResource, TouchButtonStartResource, TouchButtonStrafeLeftResource, TouchButtonStrafeRightResource, TouchButtonTurnLeftResource, TouchButtonTurnRightResource, TouchButtonUpResource, OperatingSystemFactory;


{AB:CODE}

constructor TTouchButtonAndroidResources.Create;
begin
  inherited Create;
end;
    

procedure TTouchButtonAndroidResources.init;
var
  resourceUtil_: TResourceUtil;
  androidResources_: TAndroidResources;
  RESOURCE_STRING_ARRAY: TArray<TTouchButtonResource>;
  RESOURCE_ARRAY: TArray<Integer>;
  index: Integer;
begin
        resourceUtil_ := TResourceUtil.getInstance();
        androidResources_ := TAndroidResources.getInstance();
        RESOURCE_STRING_ARRAY := TArray<TTouchButtonResource>.Create(TTouchButtonBlankResource.getInstance(), TTouchButtonGenericActionResource.getInstance(), TTouchButtonStartResource.getInstance(), TTouchButtonUpResource.getInstance(), TTouchButtonDownResource.getInstance(), TTouchButtonTurnLeftResource.getInstance(), TTouchButtonTurnRightResource.getInstance(), TTouchButtonStrafeLeftResource.getInstance(), TTouchButtonStrafeRightResource.getInstance());
        RESOURCE_ARRAY := TJava.NewArray<Integer>(System.Length(RESOURCE_STRING_ARRAY));
        if (TCommonButtons.getInstance().STANDARD_BUTTON_SIZE) = (128) then begin
            RESOURCE_ARRAY[0] := androidResources_.raw.touch_button_128_by_128;
            RESOURCE_ARRAY[1] := androidResources_.raw.touch_button_generic_action_128_by_128;
            RESOURCE_ARRAY[2] := androidResources_.raw.touch_button_start_128_by_128;
            RESOURCE_ARRAY[3] := androidResources_.raw.touch_button_up_arrow_128_by_128;
            RESOURCE_ARRAY[4] := androidResources_.raw.touch_button_down_arrow_128_by_128;
            RESOURCE_ARRAY[5] := androidResources_.raw.touch_button_turn_left_arrow_128_by_128;
            RESOURCE_ARRAY[6] := androidResources_.raw.touch_button_turn_right_arrow_128_by_128;
            RESOURCE_ARRAY[7] := androidResources_.raw.touch_button_strafe_left_arrow_128_by_128;
            RESOURCE_ARRAY[8] := androidResources_.raw.touch_button_strafe_right_arrow_128_by_128;
            if TOperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan() then begin
                resourceUtil_.addResource(RESOURCE_STRING_ARRAY[2].HINT, IntToStr(androidResources_.raw.ouya_o));
            end;
        end else begin
            RESOURCE_ARRAY[0] := androidResources_.raw.touch_button_64_by_64;
            RESOURCE_ARRAY[1] := androidResources_.raw.touch_button_generic_action_64_by_64;
            RESOURCE_ARRAY[2] := androidResources_.raw.touch_button_start_64_by_64;
            RESOURCE_ARRAY[3] := androidResources_.raw.touch_button_up_arrow_64_by_64;
            RESOURCE_ARRAY[4] := androidResources_.raw.touch_button_down_arrow_64_by_64;
            RESOURCE_ARRAY[5] := androidResources_.raw.touch_button_turn_left_arrow_64_by_64;
            RESOURCE_ARRAY[6] := androidResources_.raw.touch_button_turn_right_arrow_64_by_64;
            RESOURCE_ARRAY[7] := androidResources_.raw.touch_button_strafe_left_arrow_64_by_64;
            RESOURCE_ARRAY[8] := androidResources_.raw.touch_button_strafe_right_arrow_64_by_64;
        end;
        for index := 0 to System.Length(RESOURCE_ARRAY) - 1 do begin
            resourceUtil_.addResource(RESOURCE_STRING_ARRAY[index].RESOURCE, IntToStr(RESOURCE_ARRAY[index]));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

