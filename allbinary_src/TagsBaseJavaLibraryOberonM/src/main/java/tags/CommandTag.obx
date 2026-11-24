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
// package tags
unit CommandTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TagStrings, CustomTagSupport;

type
  {AB:TYPES}
  TCommandTag = class(TCustomTagSupport)
  public
    tagStrings: TTagStrings;
    command: string;
    procedure InitFields;
        constructor Create;
        procedure setCommand(command: string); virtual;
        function getCommand: string; virtual;
  end;

implementation

{AB:CODE}

procedure TCommandTag.InitFields;
begin
  Self.tagStrings := TTagStrings.getInstance();
  
end;
    

constructor TCommandTag.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TCommandTag.setCommand(command: string);
begin
        Self.command := command;
end;
    

function TCommandTag.getCommand: string;
begin
        Exit(Self.command);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

