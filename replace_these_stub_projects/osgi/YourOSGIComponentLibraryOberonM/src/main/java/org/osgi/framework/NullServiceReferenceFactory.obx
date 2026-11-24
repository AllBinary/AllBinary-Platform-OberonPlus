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
// package org.osgi.framework
unit NullServiceReferenceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, NullServiceReference;

type
  {AB:TYPES}
  TNullServiceReferenceFactory = class(TObject)
  public
    NULL_SERVICE_REFERENCE: TNullServiceReference;
    class var instance: TNullServiceReferenceFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TNullServiceReferenceFactory; static;
  end;

implementation

{AB:CODE}

procedure TNullServiceReferenceFactory.InitFields;
begin
  Self.NULL_SERVICE_REFERENCE := TNullServiceReference.Create();
end;

constructor TNullServiceReferenceFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TNullServiceReferenceFactory.getInstance: TNullServiceReferenceFactory;
begin
        Exit(TNullServiceReferenceFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TNullServiceReferenceFactory.instance := TNullServiceReferenceFactory.Create();
  {AB:END}

end.

