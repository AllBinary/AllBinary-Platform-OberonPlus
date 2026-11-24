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
// package org.allbinary.input.automation.module.generic
unit GenericProfileCaptureWorkerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GenericProfile, CaptureWorkerInterface;

type
  {AB:TYPES}
  TGenericProfileCaptureWorkerFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(genericProfile_: TGenericProfile): ICaptureWorkerInterface; static;
  end;

implementation
uses
  SavedCaptureImagesWorker, BasicArrayList, BasicArrayListD, GenericProfileDataWorkerType, SavedCaptureGenericProfileDataWorkerType, ScreenCaptureImagesWorker;


{AB:CODE}
    

constructor TGenericProfileCaptureWorkerFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TGenericProfileCaptureWorkerFactory.getInstance(genericProfile_: TGenericProfile): ICaptureWorkerInterface;
var
  vector: TBasicArrayList;
  size: Integer;
  genericProfileDataWorkerType_: TGenericProfileDataWorkerType;
  index: Integer;
begin
        vector := genericProfile_.getGenericProfileDataWorkerTypeVector();
        size := vector.size();
        for index := 0 to size - 1 do begin
            genericProfileDataWorkerType_ := TGenericProfileDataWorkerType(TJava.ToObject(vector.get(index)));
            if (genericProfileDataWorkerType_) = (TGenericProfileDataWorkerType.SCREEN_CAPTURE) then begin
                Exit(TScreenCaptureImagesWorker.Create());
            end else if (genericProfileDataWorkerType_) = (TGenericProfileDataWorkerType.SAVED_CAPTURE) then begin
                Exit(TSavedCaptureImagesWorker.Create(TSavedCaptureGenericProfileDataWorkerType(TJava.ToObject(genericProfileDataWorkerType_))));
            end;
        end;
        raise SysUtils.Exception.Create('No CaptureWorkerInterface specified in GenericProfile');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

