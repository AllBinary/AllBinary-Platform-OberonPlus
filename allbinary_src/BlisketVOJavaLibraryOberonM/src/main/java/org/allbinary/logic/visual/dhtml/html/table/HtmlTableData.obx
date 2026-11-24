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
// package org.allbinary.logic.visual.dhtml.html.table
unit HtmlTableData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  THtmlTableData = class(TObject)
  public
    LEFT: string;
    RIGHT: string;
    NONE: string;
    TOP: string;
    BOTTOM: string;
    TOPBOT: string;
    SIDES: string;
    ALL: string;
    BORDERED: string;
    BASIC: string;
    ROWS: string;
    FRAMES: TArray<string>;
    class var instance: THtmlTableData;
    procedure InitFields;
    constructor Create;
        class function getInstance: THtmlTableData; static;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure THtmlTableData.InitFields;
begin
  Self.LEFT := TCommonStrings.getInstance().LEFT;
  Self.RIGHT := TCommonStrings.getInstance().RIGHT;
  Self.NONE := 'none';
  Self.TOP := 'top';
  Self.BOTTOM := 'bottom';
  Self.TOPBOT := 'topbot';
  Self.SIDES := 'sides';
  Self.ALL := 'all';
  Self.BORDERED := 'border';
  Self.BASIC := 'basic';
  Self.ROWS := 'rows';
  Self.FRAMES := TArray<string>.Create(Self.NONE, Self.TOP, Self.BOTTOM, Self.TOPBOT, Self.SIDES, Self.ALL, Self.BORDERED);
end;

constructor THtmlTableData.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function THtmlTableData.getInstance: THtmlTableData;
begin
        Exit(THtmlTableData.instance);
end;

initialization
  {AB:INITIALIZATION}
  THtmlTableData.instance := THtmlTableData.Create();
  {AB:END}

end.

