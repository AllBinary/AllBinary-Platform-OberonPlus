{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.android
unit NullParcelable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Parcelable, Parcel;

type
  {AB:TYPES}
  TNullParcelable = class(TInterfacedObject, IParcelable)
  public
    class var NULL_PARCELABLE: TNullParcelable;
    function JavaObject: TObject;
    constructor Create;
        function describeContents: Integer; virtual;
        procedure writeToParcel(dest: TParcel; flags: Integer); virtual;
  end;

implementation

{AB:CODE}

function TNullParcelable.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullParcelable.Create;
begin
  inherited Create;
end;
    

function TNullParcelable.describeContents: Integer;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TNullParcelable.writeToParcel(dest: TParcel; flags: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullParcelable.NULL_PARCELABLE := TNullParcelable.Create();
  {AB:END}

end.

