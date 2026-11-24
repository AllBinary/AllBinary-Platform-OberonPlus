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
// package org.allbinary.input.media.image.capture
unit ProcessingFrameIndexFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TProcessingFrameIndexFactory = class(TObject)
  public
    class var currentFrame: Int64;
        constructor Create;
        class function next: Int64; static;
  end;

implementation

{AB:CODE}
    

constructor TProcessingFrameIndexFactory.Create;
begin
    inherited Create;
end;
    

class function TProcessingFrameIndexFactory.next: Int64;
begin
    TJava.MonitorEnter(nil);
    try
        Exit(TJava.PostInc(TProcessingFrameIndexFactory.currentFrame));
    finally
    TJava.MonitorExit(nil);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TProcessingFrameIndexFactory.currentFrame := 0;
  {AB:END}

end.

