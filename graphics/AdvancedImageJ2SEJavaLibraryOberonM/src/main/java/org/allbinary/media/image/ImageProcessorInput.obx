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
// package org.allbinary.media.image
unit ImageProcessorInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TImageProcessorInput = class(TObject)
  public
    bufferedImageArray: TArray<TBufferedImage>;
    files: TArray<TFile>;
    procedure InitFields;
        constructor Create(files: TArray<TFile>; bufferedImageArray: TArray<TBufferedImage>);
        function getBufferedImageArray: TArray<TBufferedImage>; virtual;
        function getFiles: TArray<TFile>; virtual;
  end;

implementation

{AB:CODE}

procedure TImageProcessorInput.InitFields;
begin
  
  
end;
    

constructor TImageProcessorInput.Create(files: TArray<TFile>; bufferedImageArray: TArray<TBufferedImage>);
begin
        inherited Create();
        InitFields;
        Self.bufferedImageArray := bufferedImageArray;
        Self.files := files;
end;
    

function TImageProcessorInput.getBufferedImageArray: TArray<TBufferedImage>;
begin
        Exit(Self.bufferedImageArray);
end;
    

function TImageProcessorInput.getFiles: TArray<TFile>;
begin
        Exit(Self.files);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

