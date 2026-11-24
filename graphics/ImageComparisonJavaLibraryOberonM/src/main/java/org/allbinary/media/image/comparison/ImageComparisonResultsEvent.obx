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
// package org.allbinary.media.image.comparison
unit ImageComparisonResultsEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, ImageComparisonResult;

type
  {AB:TYPES}
  TImageComparisonResultsEvent = class(TAllBinaryEventObject)
  public
    imageComparisonResult: TImageComparisonResult;
    procedure InitFields;
        constructor Create(anyType: TObject; imageComparisonInfo: TImageComparisonResult);
        function getImageComparisonResult: TImageComparisonResult; virtual;
        procedure setImageComparisonResult(imageComparisonResult_: TImageComparisonResult); virtual;
  end;

implementation

{AB:CODE}

procedure TImageComparisonResultsEvent.InitFields;
begin
  
end;
    

constructor TImageComparisonResultsEvent.Create(anyType: TObject; imageComparisonInfo: TImageComparisonResult);
begin
        inherited Create(anyType);
        InitFields;
        Self.setImageComparisonResult(imageComparisonInfo);
end;
    

function TImageComparisonResultsEvent.getImageComparisonResult: TImageComparisonResult;
begin
        Exit(Self.imageComparisonResult);
end;
    

procedure TImageComparisonResultsEvent.setImageComparisonResult(imageComparisonResult_: TImageComparisonResult);
begin
        Self.imageComparisonResult := imageComparisonResult_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

