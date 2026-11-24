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
// package org.allbinary.logic.java.help
unit JavaHelpSetNotifier;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TJavaHelpSetNotifier = class(TObject)
  public
    class var vector: TBasicArrayList;
        constructor Create;
        class function get: TBasicArrayList; static;
        class function isNotified(helpSet_: THelpSet): Boolean; static;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}
    

constructor TJavaHelpSetNotifier.Create;
begin
    inherited Create;
end;
    

class function TJavaHelpSetNotifier.get: TBasicArrayList;
begin
        Exit(TJavaHelpSetNotifier.vector);
end;
    

class function TJavaHelpSetNotifier.isNotified(helpSet_: THelpSet): Boolean;
var
  isNotified: Boolean;
  url_: TURL;
  size: Integer;
  urlArray: TArray<TObject>;
  nextURL: TURL;
  i: Integer;
begin
        isNotified := False;
        url_ := helpSet_.getHelpSetURL();
        size := TJavaHelpSetNotifier.vector.size();
        urlArray := TJavaHelpSetNotifier.vector.toArray();
        for i := 0 to size - 1 do begin
            nextURL := TURL(TJava.ToObject(urlArray[i]));
            if (CompareStr(url_.toString(), nextURL.toString())) = (0) then begin
                isNotified := True;
            end;
        end;
        TJavaHelpSetNotifier.vector.add(TJava.Box(url_));
        Exit(isNotified);
end;

initialization
  {AB:INITIALIZATION}
  TJavaHelpSetNotifier.vector := TBasicArrayListD.Create();
  {AB:END}

end.

