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
// package tags.workflow.processing.basic
unit BasicWorkFlowTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, StoreWorkFlowTag;

type
  {AB:TYPES}
  // and remove the hidden fields
  TBasicWorkFlowTag = class(TStoreWorkFlowTag)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  DynamicObjectData, AbResponseHandler;


{AB:CODE}

procedure TBasicWorkFlowTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TBasicWorkFlowTag.Create;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

// throws JspTagException
function TBasicWorkFlowTag.doStartTag: Integer;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            Self.getPropertiesHashMap().put(TDynamicObjectData.NAME, 'workflows.template.data.BasicStoreWorkFlow');
            Exit(inherited doStartTag());
        except
            on e: SysUtils.Exception do begin
            TAbResponseHandler.sendJspTagRedirect(Self.pageContext, e);
            Exit(SKIP_BODY);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

