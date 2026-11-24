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
unit HtmlTags;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, HtmlTag;

type
  {AB:TYPES}
  THtmlTags = class(TObject)
  public
    htmlTagVector: TBasicArrayList;
    procedure InitFields;
        constructor Create;
        function get(index: Integer): THtmlTag; virtual;
        procedure add(htmlTag_: THtmlTag); virtual;
        function size: Integer; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil;


{AB:CODE}

procedure THtmlTags.InitFields;
begin
  
end;
    

constructor THtmlTags.Create;
begin
    inherited Create;
    InitFields;
        Self.htmlTagVector := TBasicArrayListD.Create();
end;
    

function THtmlTags.get(index: Integer): THtmlTag;
begin
        Exit(THtmlTag(TJava.ToObject(Self.htmlTagVector.get(index))));
end;
    

procedure THtmlTags.add(htmlTag_: THtmlTag);
begin
        Self.htmlTagVector.add(TJava.Box(htmlTag_));
end;
    

function THtmlTags.size: Integer;
begin
        Exit(Self.htmlTagVector.size());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

