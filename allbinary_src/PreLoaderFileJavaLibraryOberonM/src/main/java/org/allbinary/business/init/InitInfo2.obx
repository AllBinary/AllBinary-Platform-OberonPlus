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
// package org.allbinary.business.init
unit InitInfo2;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Directory, AbPath;

type
  {AB:TYPES}
  TInitInfo2 = class(TObject)
  public
    directory: TDirectory;
    class var instance: TInitInfo2;
    procedure InitFields;
    constructor Create;
        class function getInstance: TInitInfo2; static;
        function isTestHtmlPathValid(value: TAbPath): Boolean; virtual;
        function isMainPathValid(value: TAbPath): Boolean; virtual;
  end;

implementation

{AB:CODE}

procedure TInitInfo2.InitFields;
begin
  Self.directory := TDirectory.getInstance();
end;

constructor TInitInfo2.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TInitInfo2.getInstance: TInitInfo2;
begin
        Exit(TInitInfo2.instance);
end;
    

function TInitInfo2.isTestHtmlPathValid(value: TAbPath): Boolean;
begin
        Exit(Self.directory.create_(value));
end;
    

function TInitInfo2.isMainPathValid(value: TAbPath): Boolean;
begin
        Exit(Self.directory.create_(value));
end;

initialization
  {AB:INITIALIZATION}
  TInitInfo2.instance := TInitInfo2.Create();
  {AB:END}

end.

