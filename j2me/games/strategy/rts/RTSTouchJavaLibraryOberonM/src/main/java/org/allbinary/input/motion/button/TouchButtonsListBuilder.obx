{
 
  AllBinary Open License Version 1 
  Copyright (c) 2007 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
unit TouchButtonsListBuilder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BaseTouchInput;

type
  {AB:TYPES}
  TTouchButtonsListBuilder = class(TBaseTouchInput)
  public
    baseTouchInputList: TBasicArrayList;
    procedure InitFields;
    constructor Create;
        procedure addList(list: TBasicArrayList); virtual;
        procedure add(baseTouchInput_: TBaseTouchInput); virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TTouchButtonsListBuilder.InitFields;
begin
  Self.baseTouchInputList := TBasicArrayListD.Create();
end;

constructor TTouchButtonsListBuilder.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TTouchButtonsListBuilder.addList(list: TBasicArrayList);
var
  size: Integer;
  baseTouchInput_: TBaseTouchInput;
  index: Integer;
begin
        size := Self.baseTouchInputList.size();
        
        for index := 0 to size - 1 do begin
            baseTouchInput_ := TBaseTouchInput(TJava.ToObject(Self.baseTouchInputList.get(index)));
            list.addAllList(baseTouchInput_.getList());
        end;
end;
    

procedure TTouchButtonsListBuilder.add(baseTouchInput_: TBaseTouchInput);
begin
        Self.baseTouchInputList.add(TJava.Box(baseTouchInput_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

