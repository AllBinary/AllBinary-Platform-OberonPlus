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
// package admin.taghelpers
unit StoreFrontHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, TagHelper;

type
  {AB:TYPES}
  TStoreFrontHelper = class(TTagHelper)
  public
    storeFrontInterface: IStoreFrontInterface;
    currentLocation: string;
    currentHomeLocation: string;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function getCurrentLocation: string; virtual;
        function getCurrentHomeLocation: string; virtual;
  end;

implementation
uses
  StoreFront, StoreFrontData, StoreFrontFactory, StringUtil, Replace, CommonSeps;


{AB:CODE}

procedure TStoreFrontHelper.InitFields;
begin
  
  
  
end;
    

constructor TStoreFrontHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
var
  storeName: string;
  stringUtil_: TStringUtil;
begin
    inherited Create;
    InitFields;
        storeName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TStoreFrontData.getInstance().NAME))));
        if (storeName) <> ('') then begin
            Self.storeFrontInterface := TStoreFrontFactory.getInstance(storeName);
            Self.currentLocation := TReplace.Create(TCommonSeps.getInstance().SPACE, '%20').all((Self.storeFrontInterface.getCurrentHostName()) + (Self.storeFrontInterface.getCurrentHostNamePath()));
            Self.currentHomeLocation := TReplace.Create(TCommonSeps.getInstance().SPACE, '%20').all((Self.storeFrontInterface.getCurrentHomeHostName()) + (Self.storeFrontInterface.getCurrentHomeHostNamePath()));
        end else begin
            stringUtil_ := TStringUtil.getInstance();
            Self.storeFrontInterface := TStoreFront.Create();
            Self.currentLocation := stringUtil_.EMPTY_STRING;
            Self.currentHomeLocation := stringUtil_.EMPTY_STRING;
        end;
end;
    

function TStoreFrontHelper.getCurrentLocation: string;
begin
        Exit(Self.currentLocation);
end;
    

function TStoreFrontHelper.getCurrentHomeLocation: string;
begin
        Exit(Self.currentHomeLocation);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

