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
// package org.allbinary.logic.visual.dhtml.html.head.meta
unit HtmlMetaAttributeDataFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HtmlMetaAttributeData;

type
  {AB:TYPES}
  THtmlMetaAttributeDataFactory = class(TObject)
  public
    NAME: THtmlMetaAttributeData;
    HTTP_EQUIV: THtmlMetaAttributeData;
    CONTENT: THtmlMetaAttributeData;
    class var instance: THtmlMetaAttributeDataFactory;
    procedure InitFields;
        class function getInstance: THtmlMetaAttributeDataFactory; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure THtmlMetaAttributeDataFactory.InitFields;
begin
  Self.NAME := THtmlMetaAttributeData.Create(0, 'HTMLMETA_ATTRIBUTE_NAME');
  Self.HTTP_EQUIV := THtmlMetaAttributeData.Create(1, 'HTMLMETA_ATTRIBUTE_HTTPEQUIV');
  Self.CONTENT := THtmlMetaAttributeData.Create(2, 'HTMLMETA_ATTRIBUTE_CONTENT');
end;
    

class function THtmlMetaAttributeDataFactory.getInstance: THtmlMetaAttributeDataFactory;
begin
        Exit(THtmlMetaAttributeDataFactory.instance);
end;
    

constructor THtmlMetaAttributeDataFactory.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  THtmlMetaAttributeDataFactory.instance := THtmlMetaAttributeDataFactory.Create();
  {AB:END}

end.

