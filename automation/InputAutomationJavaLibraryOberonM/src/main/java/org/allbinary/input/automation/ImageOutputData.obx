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
// package org.allbinary.input.automation
unit ImageOutputData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TImageOutputData = class(TObject)
  public
    class var SAVE_PATH: string;
        constructor Create;
  end;

implementation
uses
  FilePathData, StringMaker;


{AB:CODE}
    

constructor TImageOutputData.Create;
begin
    inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TImageOutputData.SAVE_PATH := TStringMaker.Create().append(TJava.GetProperty('user.dir')).appendchar(TFilePathData.getInstance().SEPARATORCHAR).append('saves').appendchar(TFilePathData.getInstance().SEPARATORCHAR).toString();
  {AB:END}

end.

