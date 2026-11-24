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
// package tags
unit HelperTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TagHelperFactoryInterface, LogUtil, PropertiesTag;

type
  {AB:TYPES}
  THelperTag = class(TPropertiesTag)
  public
    logUtil: TLogUtil;
    tagHelperFactoryInterface: ITagHelperFactoryInterface;
    anyType: TObject;
    procedure InitFields;
        constructor Create(tagHelperFactoryInterface_: ITagHelperFactoryInterface);
        procedure setHelper; virtual;
        function getHelper: TObject; virtual;
        function doEndTag: Integer; virtual;
  end;

implementation

{AB:CODE}

procedure THelperTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;
    

constructor THelperTag.Create(tagHelperFactoryInterface_: ITagHelperFactoryInterface);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.tagHelperFactoryInterface := tagHelperFactoryInterface_;
end;
    

// throws Exception
procedure THelperTag.setHelper;
begin
        if (Self.anyType) = (nil) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                Self.logUtil.putF('Creating TagHelper with: '#10'' + Self.getPropertiesHashMap().toString(), TJava.Box(Self), 'doStartTag');
            end;
            Self.anyType := TJava.Box(Self.tagHelperFactoryInterface.getInstance(Self.getPropertiesHashMap(), Self.pageContext));
        end;
end;
    

function THelperTag.getHelper: TObject;
begin
        Exit(TJava.Box(Self.anyType));
end;
    

function THelperTag.doEndTag: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF('Tag Ended', TJava.Box(Self), 'doEndTag');
        end;
        Self.anyType := nil;
        Exit(inherited doEndTag());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

