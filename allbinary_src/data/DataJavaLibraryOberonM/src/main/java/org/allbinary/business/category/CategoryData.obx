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
// package org.allbinary.business.category
unit CategoryData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCategoryData = class(TObject)
  public
    PARENT: string;
    NAME: string;
    PATH: string;
    LABEL_: string;
    VIEW: string;
    LEVEL: string;
    REQUEST: string;
    ROOTCATEGORY: string;
    UNCRYPTED_EXTENSION: string;
    ENCRYPTED_EXTENSION: string;
    class var instance: TCategoryData;
    procedure InitFields;
        class function getInstance: TCategoryData; static;
        constructor Create;
  end;

implementation
uses
  CommonDataFileStrings;


{AB:CODE}

procedure TCategoryData.InitFields;
begin
  Self.PARENT := 'CATEGORY_PARENT';
  Self.NAME := 'CATEGORY_NAME';
  Self.PATH := 'CATEGORY_PATH';
  Self.LABEL_ := 'CATEGORY_LABEL';
  Self.VIEW := 'CATEGORY_VIEW_CATEGORY';
  Self.LEVEL := 'CATEGORY_LEVEL';
  Self.REQUEST := 'request';
  Self.ROOTCATEGORY := 'Category';
  Self.UNCRYPTED_EXTENSION := TCommonDataFileStrings.getInstance().UNCRYPTED_EXTENSION;
  Self.ENCRYPTED_EXTENSION := TCommonDataFileStrings.getInstance().ENCRYPTED_EXTENSION;
end;
    

class function TCategoryData.getInstance: TCategoryData;
begin
        Exit(TCategoryData.instance);
end;
    

constructor TCategoryData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TCategoryData.instance := TCategoryData.Create();
  {AB:END}

end.

