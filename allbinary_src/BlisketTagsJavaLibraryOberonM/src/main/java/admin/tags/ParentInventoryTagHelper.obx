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
// package admin.tags
unit ParentInventoryTagHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TParentInventoryTagHelper = class(TObject)
  public
    class var instance: TParentInventoryTagHelper;
    constructor Create;
        class function getInstance: TParentInventoryTagHelper; static;
        procedure isValid(tagClass: TObject; parentTag: TTag); virtual;
  end;

implementation
uses
  HelperTag, StringMaker;


{AB:CODE}

constructor TParentInventoryTagHelper.Create;
begin
  inherited Create;
end;
    

class function TParentInventoryTagHelper.getInstance: TParentInventoryTagHelper;
begin
        Exit(TParentInventoryTagHelper.instance);
end;
    

// throws Exception
procedure TParentInventoryTagHelper.isValid(tagClass: TObject; parentTag: TTag);
var
  stringBuffer: TStringMaker;
begin
        if (parentTag) = (nil) then begin
            raise SysUtils.Exception.Create('Must have parent tag.');
        end else if not (((TJava.ToObject(parentTag) is THelperTag))) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Must have at least a ');
            stringBuffer.append('tags.HelperTag');
            stringBuffer.append(' as parent');
            stringBuffer.append('and not: ');
            stringBuffer.append(TJava.ToObject(parentTag).ClassType.ClassName);
            raise SysUtils.Exception.Create(stringBuffer.toString());
        end;
end;

initialization
  {AB:INITIALIZATION}
  TParentInventoryTagHelper.instance := TParentInventoryTagHelper.Create();
  {AB:END}

end.

