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
// package org.allbinary.business.installer
unit Portion;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPortion = class(TObject)
  public
    current: Integer;
    total: Integer;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>);
        function getCurrent: Integer; virtual;
        function getTotal: Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TPortion.InitFields;
begin
  
  
end;
    

constructor TPortion.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.current := Integer(hashMap_.get(TJava.Box('current')));
        Self.total := Integer(hashMap_.get(TJava.Box('total')));
end;
    

function TPortion.getCurrent: Integer;
begin
        Exit(Self.current);
end;
    

function TPortion.getTotal: Integer;
begin
        Exit(Self.total);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

