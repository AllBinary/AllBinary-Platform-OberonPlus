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
// package views.generic.inventory
unit InventorySearchLoopInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TInventorySearchLoopInfo = class(TObject)
  public
    lastPage: Integer;
    currentPage: Integer;
    numberOfResultsOnCurrentPage: Integer;
    numberOfResults: Integer;
    CURRENT: string;
    NUM: string;
    LAST: string;
    procedure InitFields;
    constructor Create;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TInventorySearchLoopInfo.InitFields;
begin
  Self.lastPage := -1;
  Self.currentPage := -1;
  Self.numberOfResultsOnCurrentPage := 0;
  Self.numberOfResults := 0;
  Self.CURRENT := 'current: ';
  Self.NUM := ' num: ';
  Self.LAST := ' last: ';
end;

constructor TInventorySearchLoopInfo.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TInventorySearchLoopInfo.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.CURRENT);
        stringBuffer.appendint(Self.currentPage);
        stringBuffer.append(Self.NUM);
        stringBuffer.appendint(Self.numberOfResults);
        stringBuffer.append(Self.LAST);
        stringBuffer.appendint(Self.lastPage);
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

