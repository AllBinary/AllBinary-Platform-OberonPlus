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
// package org.allbinary.logic.visual.transform.template.customizer.widgets.title
unit TitleData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTitleData = class(TObject)
  public
    NAME: string;
    TEXT: string;
    VIEWNAMEKEY: string;
    MAXLEN: Integer;
    class var instance: TTitleData;
    procedure InitFields;
        class function getInstance: TTitleData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TTitleData.InitFields;
begin
  Self.NAME := 'TITLE_NAME';
  Self.TEXT := 'TITLE_TEXT';
  Self.VIEWNAMEKEY := 'Title';
  Self.MAXLEN := 255;
end;
    

class function TTitleData.getInstance: TTitleData;
begin
        Exit(TTitleData.instance);
end;
    

constructor TTitleData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TTitleData.instance := TTitleData.Create();
  {AB:END}

end.

