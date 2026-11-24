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
// package org.allbinary.business.page
unit PageData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPageData = class(TObject)
  public
    NAME: string;
    class var instance: TPageData;
    procedure InitFields;
        class function getInstance: TPageData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TPageData.InitFields;
begin
  Self.NAME := 'PAGE_NAME';
end;
    

class function TPageData.getInstance: TPageData;
begin
        Exit(TPageData.instance);
end;
    

constructor TPageData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TPageData.instance := TPageData.Create();
  {AB:END}

end.

