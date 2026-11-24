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
// package views.business.context.modules.storefront.customizer
unit StoreCustomizerComponentUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, AbeClientInformationInterface, TransformInfoInterface;

type
  {AB:TYPES}
  TStoreCustomizerComponentUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TStoreCustomizerComponentUtil;
    procedure InitFields;
        class function getInstance: TStoreCustomizerComponentUtil; static;
        constructor Create;
        function generate(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface): string; overload; virtual;
        procedure generate(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; allViewsToBeModifiedVector: TBasicArrayList); overload;
  end;

implementation
uses
  CustomizerUtil, BasicArrayListD, StringUtil, TransformGeneratorUtil, TransformInfo;


{AB:CODE}

procedure TStoreCustomizerComponentUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TStoreCustomizerComponentUtil.getInstance: TStoreCustomizerComponentUtil;
begin
        Exit(TStoreCustomizerComponentUtil.instance);
end;
    

constructor TStoreCustomizerComponentUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TStoreCustomizerComponentUtil.generate(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface): string;
var
  customizerUtil_: TCustomizerUtil;
  allCustomizedViews: TBasicArrayList;
  size: Integer;
  nextTransformInfoInterface: TTransformInfo;
  allViewsToBeModified: TBasicArrayList;
  index: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Generating Modified Views For: ' + transformInfoInterface_.getName(), TJava.Box(Self), 'generateModifiedViews()');
        end;
        customizerUtil_ := TCustomizerUtil.getInstance();
        allCustomizedViews := customizerUtil_.getTransformInfoObjectConfigGroupComponentNodes(transformInfoInterface_);
        size := allCustomizedViews.size();
        for index := 0 to size - 1 do begin
            nextTransformInfoInterface := TTransformInfo(TJava.ToObject(allCustomizedViews.get(index)));
            allViewsToBeModified := customizerUtil_.getTransformInfoObjectConfigComponentNodesToCustomize(transformInfoInterface_, nextTransformInfoInterface);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('View or component that was modified by a Customizer: ' + nextTransformInfoInterface.getName(), TJava.Box(Self), 'generateModifiedViews()');
            end;
            Self.generate(abeClientInformation, transformInfoInterface_, allViewsToBeModified);
        end;
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws Exception
procedure TStoreCustomizerComponentUtil.generate(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; allViewsToBeModifiedVector: TBasicArrayList);
var
  customizerUtil_: TCustomizerUtil;
  size: Integer;
  nextTransformInfoInterface: TTransformInfo;
  specifiedTransformInfoInterface: ITransformInfoInterface;
  index: Integer;
begin
        customizerUtil_ := TCustomizerUtil.getInstance();
        size := allViewsToBeModifiedVector.size();
        for index := 0 to size - 1 do begin
            nextTransformInfoInterface := TTransformInfo(TJava.ToObject(allViewsToBeModifiedVector.get(index)));
            specifiedTransformInfoInterface := customizerUtil_.getTransformInfoInterfaceToCustomize(transformInfoInterface_, nextTransformInfoInterface);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Retrieved: ' + specifiedTransformInfoInterface.getName(), TJava.Box(Self), 'generateModifiedViews()');
            end;
            TTransformGeneratorUtil.getInstance().generate(abeClientInformation, nextTransformInfoInterface, specifiedTransformInfoInterface);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TStoreCustomizerComponentUtil.instance := TStoreCustomizerComponentUtil.Create();
  {AB:END}

end.

