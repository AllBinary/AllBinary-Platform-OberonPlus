{
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.input.form
unit NullRTSFormInputFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RTSFormInput;

type
  {AB:TYPES}
  TNullRTSFormInputFactory = class(TObject)
  public
    class var SINGLETON: TRTSFormInput;
    constructor Create;
        class function getInstance: TRTSFormInput; static;
  end;

implementation
uses
  BasicGroupFactory;


{AB:CODE}

constructor TNullRTSFormInputFactory.Create;
begin
  inherited Create;
end;
    

class function TNullRTSFormInputFactory.getInstance: TRTSFormInput;
begin
        Exit(TNullRTSFormInputFactory.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TNullRTSFormInputFactory.SINGLETON := TRTSFormInput.Create(TBasicGroupFactory.getInstance().NONE_ARRAY);
  {AB:END}

end.

