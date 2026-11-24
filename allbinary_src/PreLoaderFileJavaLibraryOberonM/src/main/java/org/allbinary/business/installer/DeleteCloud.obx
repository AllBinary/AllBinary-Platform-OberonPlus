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
// package org.allbinary.business.installer
unit DeleteCloud;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TDeleteCloud = class(TObject)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        function delete_(prePath: string; current: Integer; total: Integer): Boolean; virtual;
  end;

implementation
uses
  URLGLOBALS, FileUploadData, AbIOSystem, AbFile, Directory, AbPath, StringMaker, StringUtil, BasicArrayList;


{AB:CODE}

procedure TDeleteCloud.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TDeleteCloud.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TDeleteCloud.delete_(prePath: string; current: Integer; total: Integer): Boolean;
var
  stringBuffer: TStringMaker;
  path: TAbPath;
  file_: TAbFile;
  fileBasicArrayList: TBasicArrayList;
  size: Integer;
  portion: Integer;
  start: Integer;
  end_: Integer;
  nextFile: TAbFile;
  index: Integer;
begin
        try
            if TAbIOSystem.getInstance().isType('com.vobject.appengine.java.io') then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append(TURLGLOBALS.getWebappPath());
                stringBuffer.append(prePath);
                path := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
                file_ := TAbFile.createAbFileFromAbPath(path);
                fileBasicArrayList := TDirectory.getInstance().search(file_, True);
                size := fileBasicArrayList.size();
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append('Searched: ');
                stringBuffer.append(path.toFileSystemString());
                stringBuffer.append(' BasicArrayList: ');
                stringBuffer.appendint(size);
                portion := ((size) div (total)) + (1);
                start := (portion) * (current);
                end_ := (start) + (portion);
                if (end_) > (size) then begin
                    end_ := size;
                end;
                stringBuffer.append(' Section: ');
                stringBuffer.appendint(start);
                stringBuffer.append(' - ');
                stringBuffer.appendint(end_);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'initialize()');
                
                for index := start to end_ - 1 do begin
                    nextFile := TAbFile(TJava.ToObject(fileBasicArrayList.get(index)));
                    try
                        if (nextFile.getPath().indexOf(TFileUploadData.getInstance().FILE_)) < (0) then begin
                            nextFile.delete_();
                        end;
                    except
                        on e: SysUtils.Exception do begin
                        end;
                    end;
                end;
                Self.logUtil.putF('Deleted Files From Cloud', TJava.Box(Self), 'initialize()');
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Unable to copy installer files into cloud', TJava.Box(Self), 'initialize()', TJava.Box(e));
            Exit(False);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

