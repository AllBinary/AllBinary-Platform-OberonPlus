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
// package taghelpers
unit OrderHistoryHelperFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TOrderHistoryHelperFactory = class(TObject)
  public
    class var CLASSNAME: string;
    class var FACTORYNAME: string;
        constructor Create;
        class function getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject; static;
  end;

implementation
uses
  LicensingException, HelperFactory;


{AB:CODE}
    

constructor TOrderHistoryHelperFactory.Create;
begin
    inherited Create;
end;
    

// throws LicensingException
class function TOrderHistoryHelperFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject;
begin
        Exit(TJava.Box(THelperFactory.getInstance(TOrderHistoryHelperFactory.FACTORYNAME, TOrderHistoryHelperFactory.CLASSNAME, hashMap_, pageContext_)));
end;

initialization
  {AB:INITIALIZATION}
  TOrderHistoryHelperFactory.CLASSNAME := 'taghelpers.OrderHistoryHelper';
  TOrderHistoryHelperFactory.FACTORYNAME := 'taghelpers.OrderHistoryHelperFactory';
  {AB:END}

end.

