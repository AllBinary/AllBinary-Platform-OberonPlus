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
// package org.allbinary.logic.io.file.visitor
unit BooleanFileVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile, VisitorInterface, CommonStrings, BasicArrayList;

type
  {AB:TYPES}
  TBooleanFileVisitor = class(TInterfacedObject, IVisitorInterface)
  public
    commonStrings: TCommonStrings;
    filterStringBasicArrayList: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(filterStringBasicArrayList: TBasicArrayList);
        function visit(anyType: TObject): TObject; overload; virtual;
        function visit(file_: TAbFile): Boolean; overload; virtual;
        function getFilterStringBasicArrayList: TBasicArrayList; virtual;
        procedure setFilterStringBasicArrayList(filterStringBasicArrayList: TBasicArrayList); virtual;
        function visit(file_: TAbFile; fileNameString: string): Boolean; overload; virtual;
  end;

implementation
uses
  PreLogUtil;


{AB:CODE}

procedure TBooleanFileVisitor.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TBooleanFileVisitor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBooleanFileVisitor.Create(filterStringBasicArrayList: TBasicArrayList);
begin
    inherited Create;
    InitFields;
        Self.setFilterStringBasicArrayList(filterStringBasicArrayList);
        TPreLogUtil.put('Filter BasicArrayList: ' + Self.getFilterStringBasicArrayList().toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
end;
    

function TBooleanFileVisitor.visit(anyType: TObject): TObject;
begin
        Exit(TJava.Box(TJava.Box(Self.visit(TAbFile(TJava.ToObject(anyType))))));
end;
    

function TBooleanFileVisitor.visit(file_: TAbFile): Boolean;
var
  list: TBasicArrayList;
  size: Integer;
  nextFileFilterString: string;
  index: Integer;
begin
        list := Self.getFilterStringBasicArrayList();
        size := list.size();
        
        for index := 0 to size - 1 do begin
            nextFileFilterString := TJava.UnboxString(TJava.ToObject(list.get(index)));
            if Self.visit(file_, nextFileFilterString).booleanValue() then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

function TBooleanFileVisitor.getFilterStringBasicArrayList: TBasicArrayList;
begin
        Exit(Self.filterStringBasicArrayList);
end;
    

procedure TBooleanFileVisitor.setFilterStringBasicArrayList(filterStringBasicArrayList: TBasicArrayList);
begin
        Self.filterStringBasicArrayList := filterStringBasicArrayList;
end;
    

function TBooleanFileVisitor.visit(file_: TAbFile; fileNameString: string): Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

