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
unit CapturedImageWorkerResultsEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject;

type
  {AB:TYPES}
  TCapturedImageWorkerResultsEvent = class(TAllBinaryEventObject)
  public
    frame: Int64;
    bufferedImage: TBufferedImage;
    procedure InitFields;
        constructor Create(anyType: TObject; frame: Int64; bufferedImage_: TBufferedImage);
        function getBufferedImage: TBufferedImage; virtual;
        procedure setBufferedImage(bufferedImage_: TBufferedImage);
        function getFrame: Int64; virtual;
  end;

implementation

{AB:CODE}

procedure TCapturedImageWorkerResultsEvent.InitFields;
begin
  
  
end;
    

constructor TCapturedImageWorkerResultsEvent.Create(anyType: TObject; frame: Int64; bufferedImage_: TBufferedImage);
begin
        inherited Create(anyType);
        InitFields;
        Self.frame := frame;
        Self.setBufferedImage(bufferedImage_);
end;
    

function TCapturedImageWorkerResultsEvent.getBufferedImage: TBufferedImage;
begin
        Exit(Self.bufferedImage);
end;
    

procedure TCapturedImageWorkerResultsEvent.setBufferedImage(bufferedImage_: TBufferedImage);
begin
        Self.bufferedImage := bufferedImage_;
end;
    

function TCapturedImageWorkerResultsEvent.getFrame: Int64;
begin
        Exit(Self.frame);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

