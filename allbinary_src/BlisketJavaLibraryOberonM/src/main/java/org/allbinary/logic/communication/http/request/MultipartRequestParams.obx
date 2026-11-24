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
// package org.allbinary.logic.communication.http.request
unit MultipartRequestParams;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, RequestParams;

type
  {AB:TYPES}
  TMultipartRequestParams = class(TRequestParams)
  public
    logUtil: TLogUtil;
    special: Boolean;
    procedure InitFields;
        constructor Create(request: THttpServletRequest); overload;
        constructor Create(pageContext_: TPageContext); overload;
        procedure setSpecial; virtual;
        procedure processMultipartRequest(request: THttpServletRequest);
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
  end;

implementation
uses
  StdUtil, AbFileUploadFactory, FileItem, InvalidContentTypeException;


{AB:CODE}

procedure TMultipartRequestParams.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.special := False;
end;
    

constructor TMultipartRequestParams.Create(request: THttpServletRequest);
begin
        inherited Create();
        InitFields;
        Self.processMultipartRequest(request);
end;
    

constructor TMultipartRequestParams.Create(pageContext_: TPageContext);
begin
        inherited Create();
        InitFields;
        Self.processMultipartRequest(THttpServletRequest(TJava.ToObject(pageContext_.getRequest())));
end;
    

procedure TMultipartRequestParams.setSpecial;
begin
        Self.special := True;
end;
    

procedure TMultipartRequestParams.processMultipartRequest(request: THttpServletRequest);
var
  specialRequest: TJavaHashMap<TObject, TObject>;
  multipartRequestList: IList;
  fileItemArray: TArray<TObject>;
  size: Integer;
  fileItem_: TFileItem;
  name: string;
  index: Integer;
begin
        try
            specialRequest := TStdUtil.getInstance().createHashMap();
            multipartRequestList := TAbFileUploadFactory.getInstance().getFileItemStreamList(request);
            if (multipartRequestList) <> (nil) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF('FileItem List Size: ' + IntToStr(multipartRequestList.size()), TJava.Box(Self), 'processMultipartRequest()');
                end;
                fileItemArray := multipartRequestList.toArray();
                size := System.Length(fileItemArray);
                for index := 0 to size - 1 do begin
                    fileItem_ := TFileItem(TJava.ToObject(fileItemArray[index]));
                    name := fileItem_.getName();
                    if (name = '') then begin
                        specialRequest.put(TJava.Box(fileItem_.getFieldName()), TJava.Box(fileItem_.getString()));
                    end else begin
                        specialRequest.put(TJava.Box(fileItem_.getFieldName()), TJava.Box(fileItem_));
                    end;
                end;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF('Special Request Data: ' + specialRequest.toString(), TJava.Box(Self), 'processMultipartRequest()');
                end;
                Self.setSpecial();
                Self.setMap(specialRequest);
            end;
        except
            on e: TInvalidContentTypeException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                Self.logUtil.putF('Using Normal RequestParams', TJava.Box(Self), 'processMultipartRequest()');
            end;
            inherited setMap(request.getParameterMap());
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUESTERROR) then begin
                Self.logUtil.putF('Should Not Occur', TJava.Box(Self), 'processMultipartRequest()');
            end;
            inherited setMap(request.getParameterMap());
            end;
        end;
end;
    

// throws Exception
function TMultipartRequestParams.toHashMap: TJavaHashMap<TObject, TObject>;
begin
        if Self.special then begin
            Exit(TJavaHashMap<TObject, TObject>(TJava.ToObject(Self.getMap())));
        end else begin
            Exit(inherited toHashMap());
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

