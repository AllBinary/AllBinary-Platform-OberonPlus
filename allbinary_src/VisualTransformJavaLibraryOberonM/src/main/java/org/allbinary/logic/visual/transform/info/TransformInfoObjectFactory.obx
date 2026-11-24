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
// package org.allbinary.logic.visual.transform.info
unit TransformInfoObjectFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, TransformInterface, TransformInfoInterface;

type
  {AB:TYPES}
  TTransformInfoObjectFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TTransformInfoObjectFactory;
    procedure InitFields;
        class function getInstance: TTransformInfoObjectFactory; overload; static;
        constructor Create;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface): ITransformInterface; overload; virtual;
  end;

implementation
uses
  StringMaker, AbeFactory, LicensingException, CommonStrings;


{AB:CODE}

procedure TTransformInfoObjectFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TTransformInfoObjectFactory.getInstance: TTransformInfoObjectFactory;
begin
        Exit(TTransformInfoObjectFactory.instance);
end;
    

constructor TTransformInfoObjectFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TTransformInfoObjectFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface): ITransformInterface;
var
  commonStrings_: TCommonStrings;
  params: TArray<TObject>;
  classes: TArray<TClass>;
  anyType: ITransformInterface;
  stringBuffer: TStringMaker;
  error: string;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.putF('Creating View: ' + transformInfoInterface_.getName(), TJava.Box(Self), commonStrings_.GET_INSTANCE);
            end;
            params := TJava.NewArray<TObject>(1);
            classes := TJava.NewArray<TClass>(1);
            classes[0] := ITransformInfoInterface;
            params[0] := TJava.Box(transformInfoInterface_);
            anyType := (TJava.ToObject(TAbeFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface_.getObjectFile(), classes, params)) as ITransformInterface);
            if (anyType) = (nil) then begin
                if (transformInfoInterface_) <> (nil) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append(''#10'No Such View Name: ');
                    stringBuffer.append(transformInfoInterface_.getName());
                    stringBuffer.append(''#10'No Such View Object: ');
                    stringBuffer.append(transformInfoInterface_.getObjectFile());
                    raise SysUtils.Exception.Create(stringBuffer.toString());
                end else begin
                    raise SysUtils.Exception.Create('No Such View Object since transformInfo is null');
                end;
            end;
            Exit(anyType);
        except
            on e: TLicensingException do begin
            error := 'Failed To Get Instance: ';
            if (transformInfoInterface_) <> (nil) then begin
                error := error + transformInfoInterface_.getName();
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(error, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed To Get Instance: ';
            if (transformInfoInterface_) <> (nil) then begin
                error := error + transformInfoInterface_.getName();
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(error, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TTransformInfoObjectFactory.instance := TTransformInfoObjectFactory.Create();
  {AB:END}

end.

