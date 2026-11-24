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
// package org.allbinary.media.image.filter
unit ImageFileFilter;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // TWB - replace with file visitor version
  TImageFileFilter = class(IFileFilter)
  public
    constructor Create;
        function accept(f: TFile): Boolean; virtual;
        function getDescription: string; virtual;
  end;

implementation

{AB:CODE}

constructor TImageFileFilter.Create;
begin
  inherited Create;
end;
    

function TImageFileFilter.accept(f: TFile): Boolean;
var
  s: string;
  i: Integer;
  ext: string;
begin
        if f.isDirectory() then begin
            Exit(True);
        end;
        s := f.getName();
        i := (RPos(TJava.ToString('.'), s) - 1);
        if ((i) > (0)) and ((i) < ((System.Length(s)) - (1))) then begin
            ext := LowerCase(Copy(s, ((i) + (1)) + 1, MaxInt));
            if ((ext = 'jpg')) or ((ext = 'jpeg')) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

function TImageFileFilter.getDescription: string;
begin
        Exit('Accepts .jpg and .jpeg files');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

