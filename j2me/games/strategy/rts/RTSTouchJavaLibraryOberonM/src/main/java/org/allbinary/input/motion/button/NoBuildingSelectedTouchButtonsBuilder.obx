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
unit NoBuildingSelectedTouchButtonsBuilder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, BaseTouchInput;

type
  {AB:TYPES}
  TNoBuildingSelectedTouchButtonsBuilder = class(TBaseTouchInput)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    constructor Create;
        function getList: TBasicArrayList; override;
  end;

implementation
uses
  BasicTouchButtonsBuilder, BuildingScrollTouchButtonsBuilder, BasicArrayListD, BasicArrayListUtil;


{AB:CODE}

procedure TNoBuildingSelectedTouchButtonsBuilder.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TNoBuildingSelectedTouchButtonsBuilder.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TNoBuildingSelectedTouchButtonsBuilder.getList: TBasicArrayList;
var
  list: TBasicArrayList;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            list := TBasicArrayListD.Create();
            list.addAllList(TBasicTouchButtonsBuilder.Create().getList());
            list.addAllList(TBuildingScrollTouchButtonsBuilder.Create().getList());
            Exit(list);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            Exit(TBasicArrayListUtil.getInstance().getImmutableInstance());
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

