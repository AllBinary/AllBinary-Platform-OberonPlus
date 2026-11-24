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
// package org.allbinary.logic.communication.http.file.upload
unit AbFileUploadFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TAbFileUploadFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TAbFileUploadFactory;
    procedure InitFields;
        class function getInstance: TAbFileUploadFactory; static;
        constructor Create;
        function getFileItemStreamList(httpServletRequest_: THttpServletRequest): IList; virtual;
        function getFileItemList(httpServletRequest_: THttpServletRequest): IList; virtual;
  end;

implementation
uses
  AbFileUpload, HttpFileUploadUtil, AbFileItem, AbFileItemFactory, CommonStrings, FileItemIterator, FileItemStream, FileItemUtil;


{AB:CODE}

procedure TAbFileUploadFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TAbFileUploadFactory.getInstance: TAbFileUploadFactory;
begin
        Exit(TAbFileUploadFactory.instance);
end;
    

constructor TAbFileUploadFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TAbFileUploadFactory.getFileItemStreamList(httpServletRequest_: THttpServletRequest): IList;
var
  fileUpload: TAbFileUpload;
  iterator: TFileItemIterator;
  items: IList;
  fileItemStream_: TFileItemStream;
  fileItem: TAbFileItem;
  commonStrings_: TCommonStrings;
begin
        try
            fileUpload := TAbFileUpload.Create(TAbFileItemFactory.Create());
            iterator := fileUpload.getItemIterator(httpServletRequest_);
            items := TJavaVector<TObject>.Create();
            while iterator.hasNext() do begin
                fileItemStream_ := iterator.next();
                THttpFileUploadUtil.log(fileItemStream_);
                fileItem := TAbFileItem.Create(fileItemStream_.getName(), fileItemStream_.getFieldName(), TFileItemUtil.getInstance().getBytes(fileItemStream_));
                items.add(fileItem);
            end;
            Exit(items);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'get()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TAbFileUploadFactory.getFileItemList(httpServletRequest_: THttpServletRequest): IList;
var
  abFileUpload_: TAbFileUpload;
  commonStrings_: TCommonStrings;
begin
        try
            abFileUpload_ := TAbFileUpload.Create(TAbFileItemFactory.Create());
            Exit(abFileUpload_.parseRequest(httpServletRequest_));
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPERROR) then begin
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'get()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TAbFileUploadFactory.instance := TAbFileUploadFactory.Create();
  {AB:END}

end.

