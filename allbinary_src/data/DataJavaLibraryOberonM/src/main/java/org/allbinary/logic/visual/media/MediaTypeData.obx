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
// package org.allbinary.logic.visual.media
unit MediaTypeData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMediaTypeData = class(TObject)
  public
    RESIZABLE_MEDIA: string;
    NOT_RESIZABLE_MEDIA: string;
    class var instance: TMediaTypeData;
    procedure InitFields;
        class function getInstance: TMediaTypeData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TMediaTypeData.InitFields;
begin
  Self.RESIZABLE_MEDIA := 'RESIZABLE_MEDIA';
  Self.NOT_RESIZABLE_MEDIA := 'NOT_RESIZABLE_MEDIA';
end;
    

class function TMediaTypeData.getInstance: TMediaTypeData;
begin
        Exit(TMediaTypeData.instance);
end;
    

constructor TMediaTypeData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TMediaTypeData.instance := TMediaTypeData.Create();
  {AB:END}

end.

