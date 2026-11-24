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
// package org.allbinary.input.automation.module
unit DefaultListModelHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DefaultListModel, ListModel;

type
  {AB:TYPES}
  TDefaultListModelHelper = class(TObject)
  public
    defaultListModel: TDefaultListModel;
    vector: TBasicArrayList;
    procedure InitFields;
        constructor Create;
        procedure initDefaultModelList; virtual;
        function getListModel: TListModel; virtual;
        procedure add(string_: string); virtual;
        procedure remove(string_: string); virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil;


{AB:CODE}

procedure TDefaultListModelHelper.InitFields;
begin
  
  
end;
    

constructor TDefaultListModelHelper.Create;
begin
    inherited Create;
    InitFields;
        Self.vector := TBasicArrayListD.Create();
        Self.defaultListModel := TDefaultListModel.Create();
end;
    

procedure TDefaultListModelHelper.initDefaultModelList;
var
  size: Integer;
  moduleName: string;
  index: Integer;
begin
        Self.defaultListModel := TDefaultListModel.Create();
        size := Self.vector.size();
        for index := 0 to size - 1 do begin
            moduleName := TJava.UnboxString(TJava.ToObject(Self.vector.get(index)));
            Self.defaultListModel.addElement(moduleName);
        end;
end;
    

function TDefaultListModelHelper.getListModel: TListModel;
begin
        Exit(TListModel(TJava.ToObject(Self.defaultListModel)));
end;
    

procedure TDefaultListModelHelper.add(string_: string);
begin
        Self.vector.add(TJava.Box(string_));
end;
    

procedure TDefaultListModelHelper.remove(string_: string);
begin
        Self.vector.remove(string_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

