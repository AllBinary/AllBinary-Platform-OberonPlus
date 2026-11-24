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
// package org.allbinary.logic.visual.dhtml.html
unit HtmlTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  THtmlTag = class(TObject)
  public
    otherAttributes: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
        constructor Create;
        procedure addAttribute(key: string; value: string); virtual;
  end;

implementation
uses
  StdUtil;


{AB:CODE}

procedure THtmlTag.InitFields;
begin
  
end;
    

constructor THtmlTag.Create;
begin
    inherited Create;
    InitFields;
        Self.otherAttributes := TStdUtil.getInstance().createHashMap();
end;
    

procedure THtmlTag.addAttribute(key: string; value: string);
begin
        Self.otherAttributes.put(TJava.Box(key), TJava.Box(value));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

